package com.transsion.ninegridview;

import android.content.Context;
import android.widget.ImageView;
import com.blankj.utilcode.util.y;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.moviedetailapi.bean.GifBean;
import com.transsion.moviedetailapi.bean.Image;
import com.transsion.ninegridview.video.NineGridItemView;
import ni.f;

public final class c implements vm.b {
    @Override
    public void a(Context context, ImageView imageView, String str, int i10, int i11, String str2) {
        if (context == null || imageView == null || str == null) {
            return;
        }
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        imageView.getLayoutParams().width = i10;
        imageView.getLayoutParams().height = i11;
        f.b bVarI = f.f67269a.m(context).g(str).i(R$color.ic_default_bg_color);
        if (str2 == null) {
            str2 = "";
        }
        bVarI.l(str2).m(i10).c(i11).d(imageView);
    }

    @Override
    public void b(Context context, NineGridItemView nineGridItemView, Image image, int i10, int i11) {
        String thumbnail;
        GifBean gifBean;
        String url = null;
        ShapeableImageView imageView = nineGridItemView != null ? nineGridItemView.getImageView() : null;
        if (((image == null || (gifBean = image.getGifBean()) == null) ? null : gifBean.getVideoUrl()) != null) {
            GifBean gifBean2 = image.getGifBean();
            if (gifBean2 != null) {
                url = gifBean2.getFirstFrameUrl();
            }
        } else if (image != null) {
            url = image.getUrl();
        }
        if (i10 <= 0) {
            i10 = y.e();
        }
        if (context == null || imageView == null) {
            return;
        }
        imageView.getLayoutParams().width = i10;
        imageView.getLayoutParams().height = i11;
        f.b bVarM = f.f67269a.m(context);
        String str = "";
        if (url == null) {
            url = "";
        }
        f.b bVarI = bVarM.g(url).i(R$color.ic_default_bg_color);
        if (image != null && (thumbnail = image.getThumbnail()) != null) {
            str = thumbnail;
        }
        bVarI.l(str).m(i10).c(i11).d(imageView);
    }
}
