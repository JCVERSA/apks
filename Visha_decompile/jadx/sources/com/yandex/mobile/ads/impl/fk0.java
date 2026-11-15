package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.widget.ImageView;
import com.yandex.mobile.ads.impl.fk0;
import defpackage.y45;

public final class fk0 extends vg2<ImageView, xj0> {
    private final sj0 c;
    private final jj0 d;
    private final bk0 e;
    private final m02 f;

    /* JADX WARN: Illegal instructions before constructor call */
    public fk0(ImageView imageView, sj0 sj0Var, o8 o8Var) {
        Context context = imageView.getContext();
        y45.i(context, "getContext(...)");
        this(imageView, sj0Var, o8Var, new jj0(context, new d91(o8Var), sj0Var), new bk0(sj0Var), new m02());
    }

    @Override
    public final void a(View view) {
        ImageView imageView = (ImageView) view;
        y45.j(imageView, "view");
        imageView.setImageDrawable(null);
        this.f.a(imageView);
        super.a(imageView);
    }

    @Override
    public final void b(View view, xj0 xj0Var) {
        xj0 xj0Var2 = xj0Var;
        y45.j((ImageView) view, "view");
        y45.j(xj0Var2, "imageValue");
        a(xj0Var2);
    }

    public final void a(ImageView imageView) {
        y45.j(imageView, "view");
        imageView.setImageDrawable(null);
        this.f.a(imageView);
        super.a(imageView);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fk0(ImageView imageView, sj0 sj0Var, o8<?> o8Var, jj0 jj0Var, bk0 bk0Var, m02 m02Var) {
        super(imageView);
        y45.j(imageView, "view");
        y45.j(sj0Var, "imageProvider");
        y45.j(o8Var, "adResponse");
        y45.j(jj0Var, "imageForPresentProvider");
        y45.j(bk0Var, "imageValueValidator");
        y45.j(m02Var, "smartCenterImageRenderer");
        this.c = sj0Var;
        this.d = jj0Var;
        this.e = bk0Var;
        this.f = m02Var;
    }

    @Override
    public final boolean a(View view, xj0 xj0Var) {
        ImageView imageView = (ImageView) view;
        xj0 xj0Var2 = xj0Var;
        y45.j(imageView, "imageView");
        y45.j(xj0Var2, "imageValue");
        return this.e.a(imageView.getDrawable(), xj0Var2);
    }

    public final void a(ImageView imageView, xj0 xj0Var) {
        y45.j(imageView, "view");
        y45.j(xj0Var, "imageValue");
        a(xj0Var);
    }

    private final void a(final xj0 xj0Var) {
        this.d.a(xj0Var, new jj0.b() {
            @Override
            public final void a(Bitmap bitmap) {
                fk0.a(this.a, xj0Var, bitmap);
            }
        });
    }

    public static final void a(fk0 fk0Var, xj0 xj0Var, Bitmap bitmap) {
        ImageView imageViewB;
        y45.j(fk0Var, "this$0");
        y45.j(xj0Var, "$imageValue");
        if (bitmap == null || (imageViewB = fk0Var.b()) == null) {
            return;
        }
        if (xj0Var.e() != null) {
            fk0Var.f.a(bitmap, imageViewB, xj0Var);
        } else {
            imageViewB.setImageBitmap(bitmap);
        }
    }
}
