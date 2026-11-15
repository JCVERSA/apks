package com.yandex.mobile.ads.impl;

import android.graphics.Bitmap;
import android.widget.ImageView;
import android.widget.ProgressBar;
import defpackage.af5;
import defpackage.y45;

public final class nl1 {
    private final lb2 a;
    private final jj0 b;

    public static final class a implements jj0.b {
        static final af5[] c = {ta.a(a.class, "preview", "getPreview()Landroid/widget/ImageView;", 0), ta.a(a.class, "progressBar", "getProgressBar()Landroid/widget/ProgressBar;", 0)};
        private final go1 a;
        private final go1 b;

        public a(ImageView imageView, ProgressBar progressBar) {
            y45.j(imageView, "preview");
            y45.j(progressBar, "progressBar");
            this.a = ho1.a(imageView);
            this.b = ho1.a(progressBar);
        }

        @Override
        public final void a(Bitmap bitmap) {
            if (bitmap == null) {
                ProgressBar progressBar = (ProgressBar) this.b.getValue(this, c[1]);
                if (progressBar != null) {
                    progressBar.setVisibility(0);
                    return;
                }
                return;
            }
            go1 go1Var = this.a;
            af5[] af5VarArr = c;
            ImageView imageView = (ImageView) go1Var.getValue(this, af5VarArr[0]);
            if (imageView != null) {
                imageView.setImageBitmap(bitmap);
                imageView.setVisibility(0);
            } else {
                ProgressBar progressBar2 = (ProgressBar) this.b.getValue(this, af5VarArr[1]);
                if (progressBar2 != null) {
                    progressBar2.setVisibility(0);
                }
            }
        }
    }

    public nl1(lb2 lb2Var, jj0 jj0Var) {
        y45.j(lb2Var, "video");
        y45.j(jj0Var, "imageForPresentProvider");
        this.a = lb2Var;
        this.b = jj0Var;
    }

    public final void a(af2 af2Var) {
        y45.j(af2Var, "placeholderView");
        ImageView imageViewA = af2Var.a();
        ProgressBar progressBarB = af2Var.b();
        if (imageViewA == null || this.a.a() == null) {
            progressBarB.setVisibility(0);
        } else {
            this.b.a(this.a.a(), new a(imageViewA, progressBarB));
        }
    }
}
