import json

from django.http import HttpResponse,JsonResponse
from django.shortcuts import render
from django.conf import settings

from .models import Img
from  fabric.mtmsnet.color_utils import MyEncoder

# Create your views here.


def godensities(request):
    print(request)
    context = {
        'upImg':Img.objects.last(),
    }
    return render(request, 'density_pages/base_site1.html', context)


def uploadImg(request): # 图片上传函数
    content = {"msg": "error"}
    if request.method == 'POST':
        img = Img(img_url=request.FILES.get('img'))
        img.save()
        #######################
        settings.IMG_QUEUE.put(img.img_url.path)
        print("开始等待处理")
        result = settings.RESULT_QUEUE.get()
        if result is not None and result != 'error':
            original_url = img.img_url.url
            original_url_no_end = str(original_url).split('.')[0]
            content = {
                'msg': "success",
                'warp_rgbs': result['warp_rgbs'],
                'weft_rgbs': result['weft_rgbs'],
                'warp_density': result['warp_density'],
                'weft_density': result['weft_density'],
                'process_time': result['process_time'],
                'warp_density_map': original_url_no_end+"_density_warp.png",
                'weft_density_map': original_url_no_end+"_density_weft.png",
                'warp_pattern_map': original_url_no_end+"_pattern_warp.png",
                'weft_pattern_map': original_url_no_end+"_pattern_weft.png",
                'weave_pattern': original_url_no_end+"_weave_pattern.png",
                'basic_weave_pattern': original_url_no_end+"_basic_weave_pattern.png",
            }
        else:
            content = {
                'msg': img.img_url.url,
            }
    return HttpResponse(json.dumps(content,cls=MyEncoder), content_type="application/json")

