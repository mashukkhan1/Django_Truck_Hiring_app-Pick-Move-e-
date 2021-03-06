# Generated by Django 3.1.2 on 2020-11-22 22:11

import datetime
from django.db import migrations, models
import django.utils.timezone
from django.utils.timezone import utc


class Migration(migrations.Migration):

    dependencies = [
        ('orders', '0002_auto_20201122_0211'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='instantorders',
            name='Time',
        ),
        migrations.AddField(
            model_name='instantorders',
            name='time',
            field=models.TimeField(blank=True, default=datetime.datetime(2020, 11, 22, 22, 10, 43, 796601, tzinfo=utc)),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='instantorders',
            name='timestamp',
            field=models.DateTimeField(auto_now_add=True, default=django.utils.timezone.now),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='instantorders',
            name='date',
            field=models.DateField(blank=True),
        ),
    ]
