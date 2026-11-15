package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.monetization.ads.nativeads.CustomizableMediaView;
import defpackage.y45;

public final class kx0 {
    private final o8<?> a;
    private final wj0 b;

    public kx0(o8 o8Var) {
        this(o8Var, new wj0());
    }

    public final zv1 a(CustomizableMediaView customizableMediaView, sj0 sj0Var, ox0 ox0Var) {
        y45.j(customizableMediaView, "mediaView");
        y45.j(sj0Var, "imageProvider");
        y45.j(ox0Var, "mediaViewRenderController");
        ImageView imageView = new ImageView(customizableMediaView.getContext());
        this.b.getClass();
        y45.j(customizableMediaView, "mediaView");
        y45.j(imageView, "imageView");
        Context context = customizableMediaView.getContext();
        y45.i(context, "getContext(...)");
        if (!x80.a(context, w80.e)) {
            customizableMediaView.removeAllViews();
        }
        imageView.setAdjustViewBounds(true);
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        customizableMediaView.addView(imageView, new FrameLayout.LayoutParams(-1, -1));
        fk0 fk0Var = new fk0(imageView, sj0Var, this.a);
        return new zv1(customizableMediaView, fk0Var, ox0Var, new wg2(fk0Var));
    }

    public kx0(o8<?> o8Var, wj0 wj0Var) {
        y45.j(o8Var, "adResponse");
        y45.j(wj0Var, "imageSubViewBinder");
        this.a = o8Var;
        this.b = wj0Var;
    }
}
