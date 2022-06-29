from pyexpat import model
from django import forms
from .models import *
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User

class ProductoForm(forms.ModelForm):
    class Meta:
        model = Producto
        fields = '__all__'


class UsuarioForm(forms.ModelForm):
    class Meta:
        model = Usuario
        fields = '__all__'

class FormularioUserResgistro(UserCreationForm):
	class Meta:
            model = User
            fields = ['username','first_name','last_name','email','password1','password2']

class FormularioSubscripcion(forms.ModelForm):
    class Meta:
        model = Subscripcion
        fields = ['monto']

class CompraForm(forms.ModelForm):
    class Meta:
        model = Compra
        fields = ['estado']