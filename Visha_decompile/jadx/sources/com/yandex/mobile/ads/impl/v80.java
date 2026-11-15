package com.yandex.mobile.ads.impl;

import android.graphics.Bitmap;
import android.widget.ImageView;
import defpackage.af5;
import defpackage.y45;
import defpackage.zfb;

public final class v80 implements fn0 {
    private final jj0 a;
    private final ig<xj0> b;
    private final mg c;

    public static final class a implements jj0.b {
        static final af5[] b = {ta.a(a.class, "faviconView", "getFaviconView()Landroid/widget/ImageView;", 0)};
        private final go1 a;

        public a(ImageView imageView) {
            y45.j(imageView, "faviconView");
            this.a = ho1.a(imageView);
        }

        @Override
        public final void a(Bitmap bitmap) {
            zfb zfbVar;
            ImageView imageView;
            ImageView imageView2;
            if (bitmap == null || (imageView2 = (ImageView) this.a.getValue(this, b[0])) == null) {
                zfbVar = null;
            } else {
                imageView2.setImageBitmap(bitmap);
                imageView2.setVisibility(0);
                zfbVar = zfb.a;
            }
            if (zfbVar != null || (imageView = (ImageView) this.a.getValue(this, b[0])) == null) {
                return;
            }
            imageView.setVisibility(8);
        }
    }

    public v80(jj0 jj0Var, ig<xj0> igVar, mg mgVar) {
        y45.j(jj0Var, "imageProvider");
        y45.j(mgVar, "clickConfigurator");
        this.a = jj0Var;
        this.b = igVar;
        this.c = mgVar;
    }

    @Override
    public final void a(ob2 ob2Var) {
        y45.j(ob2Var, "uiElements");
        ImageView imageViewG = ob2Var.g();
        if (imageViewG != null) {
            ig<xj0> igVar = this.b;
            zfb zfbVar = null;
            xj0 xj0VarD = igVar != null ? igVar.d() : null;
            if (xj0VarD != null) {
                this.a.a(xj0VarD, new a(imageViewG));
                zfbVar = zfb.a;
            }
            if (zfbVar == null) {
                imageViewG.setVisibility(8);
            }
            this.c.a(imageViewG, this.b);
        }
    }
}
