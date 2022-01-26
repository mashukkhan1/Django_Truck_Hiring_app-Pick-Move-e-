from django.db import models
from django.contrib.auth.models import User
import sys
sys.path.append("..") # Adds higher directory to python modules path.
from django.db.models.signals import post_save
from django.dispatch import receiver


# Create your models here.


class instantOrders(models.Model):
    orderStatus = (
        ('Pending', 'Pending'),
        ('Done', 'Done'),
        ('Cancelled', 'Cancelled')
    )
    name = models.CharField(max_length=50)
    phone = models.PositiveBigIntegerField(max_length=11)
    date = models.DateField(auto_now_add=False,auto_now=False,blank=True)
    time = models.TimeField(auto_now_add=False,auto_now=False,blank=True)
    truck = models.TextField()
    n_labours = models.IntegerField()
    loadDesc = models.TextField()
    load_location = models.TextField()
    unload_location = models.TextField()
    timestamp = models.DateTimeField(auto_now_add=True, auto_now=False, blank=True)
    status = models.CharField(max_length=20, choices=orderStatus,default='Pending')

    def __str__(self):
        return f'{self.name} orders'
class memberOrdersmodel(models.Model):
    orderStatus = (
        ('Pending','Pending'),
        ('Done','Done'),
        ('Cancelled','Cancelled')
    )

    memberId = models.ForeignKey(User, null=True, on_delete = models.SET_NULL,default=None)
    phone = models.PositiveBigIntegerField(max_length=11)
    date = models.DateField(auto_now_add=False,auto_now=False,blank=True)
    time = models.TimeField(auto_now_add=False,auto_now=False,blank=True)
    truck = models.TextField()
    n_labours = models.IntegerField()
    loadDesc = models.TextField()
    load_location = models.TextField()
    unload_location = models.TextField()
    timestamp = models.DateTimeField(auto_now_add=True, auto_now=False, blank=True)
    status = models.CharField(max_length=20, choices=orderStatus ,default='Pending')

    def __str__(self):
        return f'{self.memberId.username} orders'
class offers(models.Model):
    member = models.OneToOneField(User, null=True, on_delete=models.CASCADE,default=True)
    offers = models.BooleanField(default=False)

    def __str__(self):
        return f'{self.member.username} offers'