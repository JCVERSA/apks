package com.yandex.mobile.ads.impl;

import android.graphics.Bitmap;
import android.widget.ImageView;
import android.widget.TextView;
import defpackage.af5;
import defpackage.y45;

public final class c72 implements fn0 {
    private final jj0 a;
    private final ig<?> b;
    private final mg c;

    public static final class a implements jj0.b {
        static final af5[] c = {ta.a(a.class, "trademarkView", "getTrademarkView()Landroid/widget/ImageView;", 0), ta.a(a.class, "delimiterView", "getDelimiterView()Landroid/widget/TextView;", 0)};
        private final go1 a;
        private final go1 b;

        public a(ImageView imageView, TextView textView) {
            y45.j(imageView, "trademarkView");
            this.a = ho1.a(imageView);
            this.b = ho1.a(textView);
        }

        @Override
        public final void a(Bitmap bitmap) {
            if (bitmap != null) {
                go1 go1Var = this.a;
                af5[] af5VarArr = c;
                ImageView imageView = (ImageView) go1Var.getValue(this, af5VarArr[0]);
                if (imageView != null) {
                    imageView.setImageBitmap(bitmap);
                    imageView.setVisibility(0);
                }
                TextView textView = (TextView) this.b.getValue(this, af5VarArr[1]);
                if (textView == null) {
                    return;
                }
                textView.setVisibility(0);
            }
        }
    }

    public c72(jj0 jj0Var, ig<?> igVar, mg mgVar) {
        y45.j(jj0Var, "imageProvider");
        y45.j(mgVar, "assetClickConfigurator");
        this.a = jj0Var;
        this.b = igVar;
        this.c = mgVar;
    }

    @Override
    public final void a(ob2 ob2Var) {
        y45.j(ob2Var, "uiElements");
        ImageView imageViewR = ob2Var.r();
        TextView textViewQ = ob2Var.q();
        if (imageViewR != null) {
            ig<?> igVar = this.b;
            Object objD = igVar != null ? igVar.d() : null;
            xj0 xj0Var = objD instanceof xj0 ? (xj0) objD : null;
            if (xj0Var != null) {
                this.a.a(xj0Var, new a(imageViewR, textViewQ));
            }
            this.c.a(imageViewR, this.b);
        }
    }
}
