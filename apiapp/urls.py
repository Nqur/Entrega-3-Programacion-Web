from django.urls import path,include
from .views import *
from rest_framework import routers
from .views import *

router = routers.DefaultRouter()
router.register('producto',ProductoViewSet)
router.register('tipoproducto',TipoProductoViewSet)
router.register('tipousuario',TipoUsuarioViewSet)
router.register('usuario',UsuarioViewSet)
router.register('estadosubcripcion',EstadoSubscripcionViewSet)
router.register('subcripcion',SubscripcionViewSet)

urlpatterns = [
        path('api/',include(router.urls))

]