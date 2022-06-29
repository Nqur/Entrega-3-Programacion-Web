from django.shortcuts import render
from rest_framework import routers, serializers, viewsets
from .serelizers import *
from app.models import *

# Create your views here.

class TipoProductoViewSet(viewsets.ModelViewSet):
    queryset = TipoProducto.objects.all()
    serializer_class = TipoProductoSerializers


class ProductoViewSet(viewsets.ModelViewSet):
    queryset = Producto.objects.all()
    serializer_class = ProductoSerializers

class TipoUsuarioViewSet(viewsets.ModelViewSet):
    queryset = TipoUsuario.objects.all()
    serializer_class = TipoProductoSerializers

class UsuarioViewSet(viewsets.ModelViewSet):
    queryset = Usuario.objects.all()
    serializer_class = UsuarioSerializers

class EstadoSubscripcionViewSet(viewsets.ModelViewSet):
    queryset = EstadoSubscripcion.objects.all()
    serializer_class = EstadoSubscripcionSerializers

class SubscripcionViewSet(viewsets.ModelViewSet):
    queryset = Subscripcion.objects.all()
    serializer_class = SubscripcionSerializers