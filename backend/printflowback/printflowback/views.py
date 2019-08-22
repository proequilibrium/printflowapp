from django.http import HttpResponse
from django.views.decorators.csrf import csrf_exempt

@csrf_exempt
def upload_file(request):
    if request.method == "POST":
        for file_name, file_object in request.FILES.items(): 
            # file_object=InMemoryUloadedFile
            with open("./data/" + file_name, 'wb+') as destination:
                for chunk in file_object.chunks():
                    destination.write(chunk)
        return HttpResponse(status=200)
    return HttpResponse(status=400)
