from django.db import models

# Create your models here.

class TipoProducto(models.Model):
    descripcion = models.CharField(max_length=50)
    def __str__(self): 
        return self.descripcion

class Producto(models.Model):
    codigo = models.CharField(max_length=50, primary_key=True)
    nombre = models.CharField(max_length=100,unique=True)
    precio = models.PositiveIntegerField(default=0)
    tipo = models.ForeignKey(TipoProducto, on_delete=models.CASCADE)
    stock = models.PositiveIntegerField(default=0)
    descripcion = models.CharField(max_length=100,blank=True)
    imagen = models.ImageField(upload_to="productos")
    created_at = models.DateField(auto_now_add=True)
    updated_at = models.DateField(auto_now=True)
    def __str__(self): 
        return self.nombre

class TipoUsuario(models.Model):
    nombreTipoUsuario = models.CharField(max_length=50)
    def __str__(self):
        return self.nombreTipoUsuario

class Usuario(models.Model):
    rut = models.CharField(max_length=50, primary_key=True)
    nombreUsuario = models.CharField(max_length=50)
    contrasenaUsuario = models.CharField(max_length=50)
    correo = models.CharField(max_length=100)
    direccion = models.CharField(max_length=200)
    imagen = models.ImageField(upload_to="usuarios", null=True)
    created_at = models.DateField(auto_now_add=True)
    updated_at = models.DateField(auto_now=True)
    def __str__(self):
        return self.nombreUsuario

class TipoUsuario(models.Model):
    nombreTipoUsuario = models.CharField(max_length=50)
    def __str__(self):
        return self.nombreTipoUsuario

class itemsCarrito(models.Model):
    
    usuariocarro = models.IntegerField(default=0)
    nombreProducto = models.CharField(max_length=200)
    precioProducto = models.IntegerField()
    imagenProducto = models.ImageField(upload_to='items_carrito',null=True)

    def __str__(self):
        return self.nombreProducto
    
    class Meta:
        db_table = 'db_itemsCarrito'

class EstadoCompra(models.Model):

    descripcion = models.CharField(max_length=50)
    def __str__(self): 
        return self.descripcion

class Compra(models.Model):

    idusuario = models.IntegerField(default=0)
    created_at = models.DateField(auto_now_add=True)
    total = models.IntegerField(default=0)
    estado = models.ForeignKey(EstadoCompra, on_delete=models.CASCADE)
    updated_at = models.DateField(auto_now=True)
    descuento = models.BooleanField(default=False)

    def __int__(self): 
        return self.id
    
class ItemCompra(models.Model):

     idusuario = models.IntegerField(default=0)
     idcompra = models.IntegerField(default=0)
     nombreProducto = models.CharField(max_length=200)
     precioProducto = models.IntegerField()
     imagenProducto = models.ImageField(upload_to='items_carrito',null=True)
     cantidad = models.IntegerField(default=0)

    


class EstadoSubscripcion(models.Model):
    descripcion = models.CharField(max_length=50,unique=True)
    
    


class Subscripcion(models.Model):

    idusuario = models.IntegerField(default=0)
    monto = models.PositiveIntegerField(default=0)
    estado =models.ForeignKey(EstadoSubscripcion,to_field='descripcion',default='Activo',on_delete=models.CASCADE)
    created_at = models.DateField(auto_now_add=True)
    updated_at = models.DateField(auto_now=True)

    