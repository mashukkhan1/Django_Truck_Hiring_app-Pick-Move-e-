# Generated by Django 3.1.2 on 2020-12-12 18:29

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('orders', '0011_auto_20201212_2354'),
    ]

    operations = [
        migrations.AlterField(
            model_name='memberordersmodel',
            name='memberId',
            field=models.ForeignKey(default=None, on_delete=django.db.models.deletion.SET_DEFAULT, to=settings.AUTH_USER_MODEL),
        ),
    ]
