from django.urls import path
from .views import *
urlpatterns = [
    path('',inicio,name='index'),
    path('crear_producto/',crearProducto,name='crear_producto'),
    path('listar_productos/',listarProductos,name='listar_producto'),
    path('editar_producto/<str:codigo>',editarProducto,name='editar_producto'),
    path('eliminar_producto/<str:codigo>',eliminarProducto,name='eliminar_producto'),
    path('crear_usuario/',crearUsuario, name='crear_usuario'),
    path('listar_usuarios/',listarUsuarios,name='listar_usuarios'),
    path('eliminar_usuarios/<str:rut>',eliminarUsuarios,name='eliminar_usuarios'),
    path('modificar_usuarios/<str:rut>',modificarUsuarios,name='modificar_usuarios'),
    path('placa/',placa,name='placa'),
    path('interfas/',interfas,name='interfas'),
    path('usuario/',user,name='usuario'),
    path('carrito/',carrito,name='carrito'),
    path('eliminar_carrito/',eliminarCarrito,name='eliminar_carrito'),
    path('eliminar_item/<int:id>',eliminarItmeCarrito,name='eliminar_item'),
    path('registro',registro,name='registro'),
    path('index2',index2,name='index2'),
    path('compra_pago/',compraPago,name='compra_pago'),
    path('desub/<int:id>',desubs,name='desub'),
    path('detalle/<int:id>',detalle,name='detalle'),
    path('listar_estado/',listarEstado,name='listar_estado'),
    path('editar_estado/<int:id>',editarEstado,name='editar_estado'),
    path('apis_externas/',listarApis,name='apis_externas')
    ]