# Generated by Django 3.1.2 on 2021-01-02 08:59

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('orders', '0029_auto_20210102_1450'),
    ]

    operations = [
        migrations.AlterField(
            model_name='instantorders',
            name='status',
            field=models.ForeignKey(default=None, on_delete=django.db.models.deletion.CASCADE, to='orders.category'),
        ),
        migrations.AlterField(
            model_name='memberordersmodel',
            name='status',
            field=models.ForeignKey(default=None, on_delete=django.db.models.deletion.CASCADE, to='orders.category'),
        ),
    ]
