from app.models import *
from rest_framework import routers, serializers, viewsets

class TipoProductoSerializers(serializers.ModelSerializer):
    class Meta:
        model = TipoProducto
        fields= '__all__'

class ProductoSerializers(serializers.ModelSerializer):

    tipo = TipoProductoSerializers(read_only=True)

    class Meta:
        model = Producto
        fields= '__all__'

class TipoUsuarioSerializers(serializers.ModelSerializer):

    class Meta:
        model = TipoUsuario
        fields= '__all__'

class UsuarioSerializers(serializers.ModelSerializer):

    class Meta:
        model = Usuario
        fields= '__all__'

class EstadoSubscripcionSerializers(serializers.ModelSerializer):
    class Meta:
        model = EstadoSubscripcion
        fields= '__all__'

class SubscripcionSerializers(serializers.ModelSerializer):

    estado=EstadoSubscripcionSerializers(read_only=True)
    class Meta:
        model = Subscripcion
        fields= '__all__'