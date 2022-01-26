from django.shortcuts import render
from .models import memberOrdersmodel,instantOrders,offers
from django.contrib import messages
# import according to model class


# Create your views here.
def instantorders(request):
    if request.method == 'POST':
        name = request.POST['name']
        phone = request.POST['phone']
        date = request.POST['date']
        time = request.POST['time']
        truck = request.POST['truck']
        n_labours = request.POST['labours']
        loadDesc = request.POST['loadDesc']
        unload_location = request.POST['unload_location']
        load_location = request.POST['load_location']
        insord = instantOrders(name = name,phone = phone,date = date,time = time,truck = truck,
                                n_labours = n_labours,loadDesc = loadDesc,
                                unload_location = unload_location,load_location = load_location)
        insord.save()

        return render(request,'hiredone.html')
    else:
        return render(request,'instantOrder.html')
def memberOrders(request):
    if request.method == 'POST':
        phone = request.POST['phone']
        date = request.POST['date']
        time = request.POST['time']
        truck = request.POST['truck']
        n_labours = request.POST['labours']
        loadDesc = request.POST['loadDesc']
        unload_location = request.POST['unload_location']
        load_location = request.POST['load_location']
        ord = memberOrdersmodel(memberId = request.user,phone = phone,date = date,
                                time = time,truck = truck,n_labours = n_labours,
                                loadDesc = loadDesc,unload_location = unload_location,load_location = load_location)
        ord.save()
        hire_count = len(memberOrdersmodel.objects.filter(memberId = request.user))
        user = request.user
        if (hire_count % 3 == 0):
            messages.info(request, 'You will get 15% discount in this order.')
            if offers.objects.filter(member = request.user).exists():
                user.offers.offers = True
                user.offers.save()
            else:
                offer = offers(member=request.user, offers=True)
                offer.save()
        return render(request, 'MemHireDone.html')

    else:
        return render(request, 'memberOrders.html')


def bill(request):
    user = request.user
    bill = 2400
    if user.is_authenticated:
        fName = user.first_name
        lName = user.last_name
        name = fName + ' ' + lName
        infos = memberOrdersmodel.objects.filter(memberId = request.user).last()
        if offers.objects.filter(member=request.user).exists() and user.offers.offers is True:
            user.offers.offers = False
            user.offers.save()
            bill = bill-(bill*0.15)
            return render(request, 'bill.html', {'infos':infos , 'name': name,'bill':bill})
        elif offers.objects.filter(member=request.user).exists() and user.offers.offers is False:
            bill = 2400
            return render(request, 'bill.html', {'infos': infos, 'name': name, 'bill': bill})
        elif offers.objects.filter(member=request.user).exists() is False:
            bill = 2400
            return render(request, 'bill.html', {'infos': infos, 'name': name, 'bill': bill})
    else:
        infos = instantOrders.objects.filter().last()
        return render(request, 'bill.html', {'infos': infos,'bill':bill})