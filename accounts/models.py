from django.db import models
from django.contrib.auth.models import User
# Create your models here.

class Profile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    image = models.ImageField(default='icon2.jpg', upload_to='profileImg',blank=True,null=True)

    def __str__(self):
        return f'{self.user.username} Profile'