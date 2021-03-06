# Generated by Django 4.0.4 on 2022-06-22 22:21

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='itemsCarrito',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('usuariocarro', models.IntegerField(default=0)),
                ('nombreProducto', models.CharField(max_length=200)),
                ('precioProducto', models.IntegerField()),
                ('imagenProducto', models.ImageField(null=True, upload_to='items_carrito')),
            ],
            options={
                'db_table': 'db_itemsCarrito',
            },
        ),
        migrations.CreateModel(
            name='TipoProducto',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('descripcion', models.CharField(max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name='TipoUsuario',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombreTipoUsuario', models.CharField(max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name='Usuario',
            fields=[
                ('rut', models.CharField(max_length=50, primary_key=True, serialize=False)),
                ('nombreUsuario', models.CharField(max_length=50)),
                ('contrasenaUsuario', models.CharField(max_length=50)),
                ('correo', models.CharField(max_length=100)),
                ('direccion', models.CharField(max_length=200)),
                ('imagen', models.ImageField(null=True, upload_to='usuarios')),
                ('created_at', models.DateField(auto_now_add=True)),
                ('updated_at', models.DateField(auto_now=True)),
            ],
        ),
        migrations.CreateModel(
            name='Producto',
            fields=[
                ('codigo', models.CharField(max_length=50, primary_key=True, serialize=False)),
                ('nombre', models.CharField(max_length=100)),
                ('precio', models.IntegerField()),
                ('stock', models.IntegerField()),
                ('descripcion', models.CharField(blank=True, max_length=100, null=True)),
                ('imagen', models.ImageField(null=True, upload_to='productos')),
                ('created_at', models.DateField(auto_now_add=True)),
                ('updated_at', models.DateField(auto_now=True)),
                ('tipo', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='app.tipoproducto')),
            ],
        ),
    ]
