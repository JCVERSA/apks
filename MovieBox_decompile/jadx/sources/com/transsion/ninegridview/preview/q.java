package com.transsion.ninegridview.preview;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.viewpager.widget.PagerAdapter;
import com.transsion.ninegridview.ImageInfo;
import com.transsion.ninegridview.R$drawable;
import com.transsion.ninegridview.R$id;
import com.transsion.ninegridview.R$layout;
import com.transsion.photoview.PhotoView;
import java.util.List;

public class q extends PagerAdapter {

    private final List f45858a;

    private final Context f45859b;

    private View f45860c;

    class a implements com.transsion.photoview.i {
        a() {
        }

        @Override
        public void a() {
            ((ImagePreviewActivity) q.this.f45859b).finish();
        }
    }

    public q(Context context, List list) {
        this.f45858a = list;
        this.f45859b = context;
    }

    public void h(View view) {
        ((ImagePreviewActivity) this.f45859b).finishActivityAnim();
    }

    public void i(View view) {
        ((ImagePreviewActivity) this.f45859b).finishActivityAnim();
    }

    public void j(ImageInfo imageInfo, PhotoView photoView) {
        try {
            ni.f.b bVarM = ni.f.f67269a.m(this.f45859b);
            String str = imageInfo.bigImageUrl;
            if (str == null) {
                str = "";
            }
            bVarM.g(str).i(R$drawable.ic_default_color).j(0).f(true).l(imageInfo.thumbnailUrl).e(true).k(false).h(false).d(photoView);
        } catch (Exception unused) {
        }
    }

    @Override
    public void destroyItem(ViewGroup viewGroup, int i10, Object obj) {
        viewGroup.removeView((View) obj);
    }

    public PhotoView e() {
        return (PhotoView) this.f45860c.findViewById(R$id.f45791pv);
    }

    public ImageView f() {
        return (ImageView) this.f45860c.findViewById(R$id.thumb);
    }

    public View g() {
        return this.f45860c;
    }

    @Override
    public int getCount() {
        List list = this.f45858a;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override
    public Object instantiateItem(ViewGroup viewGroup, int i10) {
        View viewInflate = LayoutInflater.from(this.f45859b).inflate(R$layout.item_photoview, viewGroup, false);
        viewInflate.findViewById(R$id.root).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.f45853a.h(view);
            }
        });
        final ImageInfo imageInfo = (ImageInfo) this.f45858a.get(i10);
        if (imageInfo == null) {
            return viewInflate;
        }
        try {
            float f10 = imageInfo.imageViewWidth;
            zg.h hVar = zg.h.f76787a;
            if (f10 > hVar.e(this.f45859b) || imageInfo.imageViewHeight > hVar.c(this.f45859b)) {
                float f11 = imageInfo.imageViewWidth / imageInfo.imageViewHeight;
                imageInfo.imageViewWidth = hVar.e(this.f45859b);
                imageInfo.imageViewHeight = hVar.e(this.f45859b) / f11;
            }
        } catch (Exception unused) {
        }
        final PhotoView photoView = (PhotoView) viewInflate.findViewById(R$id.f45791pv);
        photoView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        photoView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.f45854a.i(view);
            }
        });
        photoView.setSlideUpAndDownListener(new a());
        photoView.post(new Runnable() {
            @Override
            public final void run() {
                this.f45855a.j(imageInfo, photoView);
            }
        });
        viewGroup.addView(viewInflate);
        return viewInflate;
    }

    @Override
    public boolean isViewFromObject(View view, Object obj) {
        return view == obj;
    }

    @Override
    public void setPrimaryItem(ViewGroup viewGroup, int i10, Object obj) {
        super.setPrimaryItem(viewGroup, i10, obj);
        this.f45860c = (View) obj;
    }
}
