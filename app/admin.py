from django.contrib import admin
from .models import *

# Register your models here.

class TipoProductoAdmin(admin.ModelAdmin):
    list_display=('id','descripcion')

class ProductoAdmin(admin.ModelAdmin):
    list_display=('codigo','nombre','precio','tipo','stock','descripcion','imagen','created_at','updated_at')

class UsuarioAdmin(admin.ModelAdmin):
    list_display=('rut', 'nombreUsuario', 'contrasenaUsuario', 'correo', 'direccion', 'imagen', 'created_at','updated_at')

class TipoUsuarioAdmin(admin.ModelAdmin):
    list_display=('id','nombreTipoUsuario')

class itemsCarritoAdmin(admin.ModelAdmin):
    list_display=('id','usuariocarro','nombreProducto','precioProducto', 'imagenProducto')

class EstadoCompraAdmin(admin.ModelAdmin):
    list_display=('id','descripcion')

class CompraAdmin(admin.ModelAdmin):
    list_display=('id','idusuario','created_at','total','estado','updated_at')

class ItemCompraAdmin(admin.ModelAdmin):
    list_display= ('id','idusuario','idcompra','nombreProducto','precioProducto','imagenProducto','cantidad')



admin.site.register(TipoProducto,TipoProductoAdmin)
admin.site.register(Producto,ProductoAdmin)
admin.site.register(Usuario,UsuarioAdmin)
admin.site.register(TipoUsuario,TipoUsuarioAdmin)
admin.site.register(itemsCarrito,itemsCarritoAdmin)
admin.site.register(EstadoCompra,EstadoCompraAdmin)
admin.site.register(Compra,CompraAdmin)
admin.site.register(ItemCompra,ItemCompraAdmin)