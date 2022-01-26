from django.shortcuts import render,redirect
from django.contrib.auth.models import User,auth
from django.contrib import messages
from .models import Profile
from django.forms import inlineformset_factory
from django.apps import apps
insOrder = apps.get_model('orders', 'instantOrders')
memOrder = apps.get_model('orders', 'memberOrdersmodel')
from django.core.files.storage import FileSystemStorage


# Create your views here.
def registration(request):
    if request.method == 'POST':
        f_name = request.POST['first_name'] # 'first_name' this name came from HTML tag name
        l_name = request.POST['last_name']
        username = request.POST['username']
        email = request.POST['email']
        password1 = request.POST['password1']
        password2 = request.POST['password2']
        if password1 == password2: # checking if the confirmation password matches or not
            if User.objects.filter(username=username).exists():
                messages.info(request,'Username taken') # passes this message (also edit in HTML)
                # print("User name taken")
                return redirect('registration')
            elif User.objects.filter(email=email).exists():
                messages.info(request, 'Email already exists')  # passes this message
                # print('email taken')
                return redirect('registration')
            else:
                user = User.objects.create_user(username=username,password=password1,email=email,first_name=f_name,last_name=l_name)
                user.save()
                messages.info(request, 'DONE')  # passes this message
                # print("DONE")
                return redirect('login')
        else:
            messages.info(request, 'password not matching')
            return redirect('registration')
        # return redirect('/')  # returns to homepage
    else: # sending a get rqst
        return render(request, 'registration.html')


def login(request):
    if request.method=='POST':
        username = request.POST['username']
        password = request.POST['password']
        user = auth.authenticate(username=username,password=password) # auto matches the user name and password
        if user is not None: # means username and password exist
            if user.is_superuser:
                auth.login(request, user)
                return redirect('adminHome/')
            else:
                auth.login(request,user)
                return redirect('/')
        else:
            messages.info(request,'Invalid credentials')
            return redirect('login')
    else:
        return render(request, '2.login.html')

def logout(request):
    auth.logout(request)
    return redirect('/')


def adminHome(request):
    user = request.user
    if user.is_superuser:
        users = User.objects.filter(is_staff=False)
        insorder = insOrder.objects.all()
        memorder = memOrder.objects.all()
        icount = len(insorder)
        mcount = len(memorder)
        ucount = User.objects.filter(is_staff=False).count
        pencount = len(memOrder.objects.filter(status = 'Pending'))+len(insOrder.objects.filter(status = 'Pending'))
        return render(request,'adminHome.html',{'insorder':insorder,'memorder':memorder,
                                                 'users':users,'icount':icount,'mcount':mcount,
                                                'ucount':ucount,'pencount':pencount})


def profile(request):
    userprofile = Profile.objects.filter(user = request.user)
    return render(request, 'profile.html',{'userprofile':userprofile})

def editprofile(request):
    if request.method == 'POST':
        users = User.objects.get(id=request.user.id)
        users.first_name = request.POST['firstname']
        users.last_name = request.POST['lastname']
        users.email = request.POST['email']

        users.save()

        userprofile = Profile.objects.filter(user=request.user)

        return render(request, 'profile.html',{'userprofile':userprofile})
    else:
        return render(request, 'editProfile.html')

def editDp(request):
    if request.method == 'POST':
        users = User.objects.get(id=request.user.id)
        users.profile.image = request.FILES['userimg']
        users.profile.save()
        userprofile = Profile.objects.filter(user=request.user)

        return render(request, 'profile.html', {'userprofile': userprofile})
    else:
        return render(request, 'editDp.html')

def cancel(request):
    userprofile = Profile.objects.filter(user=request.user)
    return render(request, 'profile.html',{'userprofile':userprofile})