package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.ViewGroup;
import android.widget.ImageView;
import defpackage.af5;
import defpackage.y45;

public final class dn1 implements fn0 {
    private final he2 a;
    private final ig<xj0> b;
    private final en1 c;
    private final boolean d;

    public static final class a implements jj0.b {
        static final af5[] c = {ta.a(a.class, "weekQrcodeContainer", "getWeekQrcodeContainer()Landroid/view/ViewGroup;", 0), ta.a(a.class, "weekQrcodeImageView", "getWeekQrcodeImageView()Landroid/widget/ImageView;", 0)};
        private final go1 a;
        private final go1 b;

        public a(ob2 ob2Var) {
            y45.j(ob2Var, "uiElements");
            this.a = ho1.a(ob2Var.k());
            this.b = ho1.a(ob2Var.l());
        }

        @Override
        public final void a(Bitmap bitmap) {
            if (bitmap == null) {
                go1 go1Var = this.a;
                af5[] af5VarArr = c;
                ViewGroup viewGroup = (ViewGroup) go1Var.getValue(this, af5VarArr[0]);
                if (viewGroup != null) {
                    viewGroup.setVisibility(8);
                }
                ImageView imageView = (ImageView) this.b.getValue(this, af5VarArr[1]);
                if (imageView == null) {
                    return;
                }
                imageView.setVisibility(8);
                return;
            }
            go1 go1Var2 = this.b;
            af5[] af5VarArr2 = c;
            ImageView imageView2 = (ImageView) go1Var2.getValue(this, af5VarArr2[1]);
            if (imageView2 != null) {
                imageView2.setImageBitmap(bitmap);
            }
            ViewGroup viewGroup2 = (ViewGroup) this.a.getValue(this, af5VarArr2[0]);
            if (viewGroup2 != null) {
                viewGroup2.setVisibility(0);
            }
            ImageView imageView3 = (ImageView) this.b.getValue(this, af5VarArr2[1]);
            if (imageView3 == null) {
                return;
            }
            imageView3.setVisibility(0);
        }
    }

    public dn1(Context context, sj0 sj0Var, he2 he2Var, ig<xj0> igVar, en1 en1Var, boolean z) {
        y45.j(context, "context");
        y45.j(sj0Var, "imageProvider");
        y45.j(he2Var, "videoClicks");
        y45.j(en1Var, "qrcodeLoader");
        this.a = he2Var;
        this.b = igVar;
        this.c = en1Var;
        this.d = z;
    }

    @Override
    public final void a(ob2 ob2Var) {
        xj0 xj0VarD;
        y45.j(ob2Var, "uiElements");
        String strA = this.a.a();
        if (strA != null) {
            String strF = null;
            if (strA.length() <= 0 || !this.d) {
                strA = null;
            }
            if (strA != null) {
                ig<xj0> igVar = this.b;
                if (igVar != null && (xj0VarD = igVar.d()) != null) {
                    strF = xj0VarD.f();
                }
                this.c.a(strA, strF, new a(ob2Var));
                return;
            }
        }
        ViewGroup viewGroupK = ob2Var.k();
        if (viewGroupK != null) {
            viewGroupK.setVisibility(8);
        }
        ImageView imageViewL = ob2Var.l();
        if (imageViewL == null) {
            return;
        }
        imageViewL.setVisibility(8);
    }
}
