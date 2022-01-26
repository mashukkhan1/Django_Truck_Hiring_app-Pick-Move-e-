# Generated by Django 3.1.2 on 2020-12-12 08:28

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('orders', '0004_auto_20201123_0439'),
    ]

    operations = [
        migrations.CreateModel(
            name='memberOrders',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('phone', models.PositiveBigIntegerField(max_length=11)),
                ('date', models.DateField(blank=True)),
                ('time', models.TimeField(blank=True)),
                ('truck', models.TextField()),
                ('n_labours', models.IntegerField()),
                ('loadDesc', models.TextField()),
                ('location', models.TextField()),
                ('timestamp', models.DateTimeField(auto_now_add=True)),
                ('username', models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]