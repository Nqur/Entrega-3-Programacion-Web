
from unittest import skip
from urllib import response
import requests
from django.db.models import Sum,Count
from django.shortcuts import render,redirect
from django.contrib import messages
from django.contrib.auth import authenticate, login
from django.contrib.auth.decorators import login_required, permission_required,user_passes_test
from django.contrib.auth.models import User, Group
from django.db.models.signals import post_save
from django.dispatch import receiver
from .models import *
from .forms import *

# Create your views here.
@receiver(post_save, sender=User) 
def create_user_profile(sender, instance, created, **kwargs):     
    if created:
        instance.groups.add(Group.objects.get(name='cliente'))

def must_be_supervisor(user):
    return user.groups.filter(name='admin').count()

def placa(request):
    return render(request,'patron.html')

@login_required
@user_passes_test(must_be_supervisor)
def interfas(request):
    return render(request,'interfas_trabajador.html')

@login_required
def user(request):
    current_user= request.user
    compras = Compra.objects.filter(idusuario = current_user.id)
    items = ItemCompra.objects.filter(idusuario = current_user.id)
    donaciones = Subscripcion.objects.filter(idusuario = current_user.id)

    datos ={
        'current_user':current_user,
        'compras':compras,
        'items':items,
        'donaciones':donaciones
    }
    if request.method =='POST':
        donar = Subscripcion()
        donar.idusuario = current_user.id
        donar.monto = request.POST.get('monto')
        donar.save()
   
    return render(request,'usuario.html',datos)

def inicio(request):
    producto = Producto.objects.all()
    current_user = request.user
    userid=current_user.id
    datos ={
        'producto':producto,
        'userid':userid
    }
    if request.method == 'POST':
        carrito = itemsCarrito()
        carrito.nombreProducto = request.POST.get('nombreProducto')
        stock1 = Producto.objects.filter(nombre = carrito.nombreProducto).get()
        if stock1.stock  > 0 :
            Producto.objects.filter(nombre = carrito.nombreProducto).update(stock =stock1.stock-1)
            carrito.usuariocarro = request.POST.get('usuariocarro')
            carrito.precioProducto = request.POST.get('precioProducto')
            carrito.imagenProducto = request.POST.get('imagenProducto')
            carrito.save()
        else:
            skip
        
        
    return render(request,'index.html',datos)

@login_required
@user_passes_test(must_be_supervisor)
def crearProducto(request):
    if request.method == 'GET':
        form = ProductoForm()
        datosform={
            'form':form
        }
    else:
        form = ProductoForm(request.POST,files=request.FILES)
        if form.is_valid():
            print("si")
            form.save()
            messages.success(request,'Producto guardado correctamente!')
            return redirect('crear_producto')
        else:

            print (form.errors)
            messages.error(request,'Producto no guardado')
    return render(request,'crear_producto.html',{'form':form})

@login_required
@user_passes_test(must_be_supervisor)
def listarProductos(request):
    response = requests.get('http://127.0.0.1:8000/api/producto').json()
    response2 = requests.get('https://digimon-api.vercel.app/api/digimon').json()
    producto = Producto.objects.all()
    datos ={
        'producto':producto,
        'listajson':response,
        'listadg':response2
    }
    return render(request,'listar_productos.html',datos)

@login_required
@user_passes_test(must_be_supervisor)
def editarProducto(request,codigo):
    producto = Producto.objects.get(codigo=codigo)
    if request.method == 'GET':
        form = ProductoForm(instance=producto)
        datos={
            'form':form
        }
    else:
        form = ProductoForm(request.POST, instance=producto)
        datos = {
            'form':form
        }
        if form.is_valid():
            form.save()
            return redirect('listar_producto')

    return render(request,'editar_producto.html',datos)

@login_required
@user_passes_test(must_be_supervisor)
def eliminarProducto(request,codigo):
    producto = Producto.objects.get(codigo=codigo)
    producto.delete()
    return redirect('listar_producto')

@login_required
@user_passes_test(must_be_supervisor)
def crearUsuario(request):
    if request.method == 'GET':
        form = UsuarioForm()
        datos={
            'form':form
        }
    else:
        form = UsuarioForm(request.POST,files=request.FILES)
        if form.is_valid():
            print("si")
            form.save()
            return redirect('listar_usuarios')
        else:
            print (form.errors)
        
    return render(request,'crear_usuario.html',datos)


@login_required
@user_passes_test(must_be_supervisor)
def listarUsuarios(request):
    usuario = Usuario.objects.all()
    datos ={
        'usuario':usuario
    }
    return render(request,'listar_usuarios.html',datos)

@login_required
@user_passes_test(must_be_supervisor)
def modificarUsuarios(request, rut):
    usuario = Usuario.objects.get(rut=rut)
    datos = {
        'form' : UsuarioForm(instance=usuario)
    }
    if request.method == 'POST':
        formulario = UsuarioForm(data=request.POST, files=request.FILES, instance=usuario)
        if formulario.is_valid():
            formulario.save()
            datos['mensaje'] = 'Usuario modificado correctamente'
            datos['form'] = formulario

    return render(request, 'modificar_usuario.html', datos)

@login_required
@user_passes_test(must_be_supervisor)
def eliminarUsuarios(request, rut):
    usuario = Usuario.objects.get(rut=rut)
    usuario.delete()

    return redirect("listar_usuarios")

@login_required
def carrito(request):
    current_user = request.user
    userid=current_user.id
    maleta = itemsCarrito.objects.raw('SELECT id,usuariocarro,nombreProducto,precioProducto,imagenProducto,COUNT(nombreProducto) AS cantidad,SUM(precioProducto) as totalv FROM `db_itemscarrito` WHERE usuariocarro= %s GROUP BY nombreProducto',[userid])
    carrito = itemsCarrito.objects.filter(usuariocarro = userid)
    total=itemsCarrito.objects.filter(usuariocarro = userid).aggregate(ammount=Sum('precioProducto'))['ammount']
    sub = Subscripcion.objects.filter(idusuario=userid,estado='Activo').exists()
    if total == None:
        total = 0
    des=total*0.05
    totald = total-des
    
    datos ={
        'itemsCarrito':carrito,
        'userid':userid,
        'total':total,
        'maleta': maleta,
        'sub':sub,
        'totald':totald,
        'des':des

        }

    if request.method == 'POST':
        compra = Compra()
        compra.idusuario = request.POST.get('idusuario')
        compra.total = request.POST.get('total')
        compra.estado = EstadoCompra.objects.get(id = request.POST['estado'])
        compra.save()
        
        
    return render (request, 'carrito.html', datos)

@login_required
def eliminarCarrito(request):
    current_user = request.user
    userid=current_user.id
    carrito = itemsCarrito.objects.filter(usuariocarro = userid)
    carrito.delete()

    return render(request,'carrito.html')

@login_required
def eliminarItmeCarrito(request, id):
    carrito = itemsCarrito.objects.get(id=id)
    stock1 = Producto.objects.filter(nombre = carrito.nombreProducto).get()
    Producto.objects.filter(nombre = carrito.nombreProducto).update(stock =stock1.stock+1)
    carrito.delete()

    return redirect("carrito")


def registro(request):
    datos = {
        'form' : FormularioUserResgistro()
    }
    if request.method == 'POST':
        formulario = FormularioUserResgistro(data=request.POST)
        if formulario.is_valid():

            formulario.save()
            #user = authenticate(username=formulario.cleaned_data["username"],password=formulario.cleaned_data["password1"])
            #login(request,user)
            messages.success(request,'Registrado correctamente!',extra_tags='bien')
            #return redirect(to="index")
        datos["form"] = formulario
    else:
        messages.error(request,'Producto no guardado',extra_tags='mal')
    return render(request, 'registration/registro.html', datos)

@login_required
def index2(request):
    return render(request,'index2.html')

@login_required
def compraPago(request):

    current_user = request.user
    userid=current_user.id
    primary = EstadoCompra.objects.filter(descripcion = 'Validacion').get()
    maleta = itemsCarrito.objects.raw('SELECT id,usuariocarro,nombreProducto,precioProducto,imagenProducto,COUNT(nombreProducto) AS cantidad,SUM(precioProducto) as totalv FROM `db_itemscarrito` WHERE usuariocarro= %s GROUP BY nombreProducto',[userid])
    sub = Subscripcion.objects.filter(idusuario=userid,estado='Activo').exists()

    total1=itemsCarrito.objects.filter(usuariocarro = userid).aggregate(ammount=Sum('precioProducto'))['ammount']

    compra = Compra()
    compra.idusuario = userid
    compra.total = total1
    compra.estado = primary
    if sub == True:
        compra.descuento = True
        compra.total = total1-(total1*0.05)
    compra.save()
    idcompra=compra.id 

    for aux in maleta:
       item = ItemCompra()
       item.idusuario=userid
       item.idcompra=idcompra
       item.nombreProducto=aux.nombreProducto
       item.precioProducto = aux.totalv
       item.cantidad = aux.cantidad
       item.imagenProducto = aux.imagenProducto
       item.save()

    carrito = itemsCarrito.objects.filter(usuariocarro = userid)
    carrito.delete()

    return render(request,'carrito.html')

@login_required
def desubs(request,id):
    sub = Subscripcion.objects.filter(id=id)
    sub.update(estado = "Inactivo")

    return render(request,'usuario.html')

@login_required
def detalle(request,id):
    compra = Compra.objects.filter(id=id).get()
    productos = ItemCompra.objects.raw('SELECT id,idusuario,idcompra,nombreProducto,precioProducto,imagenProducto,cantidad AS cantidad,SUM(precioProducto) as totalv FROM `app_itemcompra` WHERE idcompra= %s GROUP BY nombreProducto',[id])
    total=0
    for p in productos:
        total=total+p.totalv
    des=(total/100)*5


    datos={

        'compra':compra,
        'productos':productos,
        'total':total,
        'des':des
    }


    return render(request,'detalle.html',datos)

@login_required
@user_passes_test(must_be_supervisor)
def listarEstado(request):
    compras = Compra.objects.all()
    datos ={
        'compras':compras
    }
    return render(request,'listar_estados.html',datos)


@login_required
@user_passes_test(must_be_supervisor)
def editarEstado(request,id):
    
    compra = Compra.objects.get(id=id)
    user = User.objects.filter(id=compra.idusuario).get()
    usern = user.get_username()
    if request.method == 'GET':
        form = CompraForm(instance=compra)
        datos={
            'form':form,
            'compra':compra,
            'usern':usern
        }
    else:
        form = CompraForm(request.POST,files=request.FILES,instance=compra)
        if form.is_valid():
            print("si")
            form.save()
            return redirect('listar_estado')
        else:
            print (form.errors)
        
    
    return render(request,'editar_estado.html',datos)

@login_required
@user_passes_test(must_be_supervisor)
def listarApis(request):
    response = requests.get('http://127.0.0.1:8000/api/producto').json()
    response2 = requests.get('https://digimon-api.vercel.app/api/digimon').json()
    producto = Producto.objects.all()
    datos ={
        'producto':producto,
        'listajson':response,
        'listadg':response2
    }
    return render(request,'apis_externas.html',datos)
