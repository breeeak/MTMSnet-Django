"""density URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
import os
from django.contrib import admin
from django.urls import path,include
from fabric import views         #+
from django.conf.urls.static import static
from django.conf import settings

from fabric.mtmsnet.hot_loading import DetectFabricService


urlpatterns = [
    path('admin/', admin.site.urls),
    path('jet/', include('jet.urls', 'jet')),  # Django JET URLS
    path('jet/dashboard/', include('jet.dashboard.urls', 'jet-dashboard')),  # Django JET dashboard URLS
    path('densities/', views.godensities),   #+
    path('densities/uploadImg/', views.uploadImg), # 新增
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)


def start_img_service():
    modelstrc_path=os.path.join(settings.STATICFILES_DIRS[0],'models',settings.MODEL_STRC_NAME)
    modelweights_path=os.path.join(settings.STATICFILES_DIRS[0],'models',settings.MODEL_WEIGHTS_NAME)
    img_thread = DetectFabricService(img_queue=settings.IMG_QUEUE, result_queue=settings.RESULT_QUEUE,modelstrc_path=modelstrc_path, modelweights_path=modelweights_path)
    print("图片服务线程启动")
    img_thread.start()
    # settings.IMG_QUEUE.put(os.path.join(settings.MEDIA_ROOT, 'img', "20190219-120844-771.png"))

start_img_service()
#

