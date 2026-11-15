package com.yandex.mobile.ads.impl;

import android.graphics.Bitmap;
import android.view.View;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import com.yandex.mobile.ads.R;
import com.yandex.mobile.ads.impl.cb0;
import defpackage.y45;

public final class cb0 extends vg2<ImageView, za0> {
    private final jj0 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cb0(ImageView imageView, jj0 jj0Var) {
        super(imageView);
        y45.j(imageView, "view");
        y45.j(jj0Var, "imageProvider");
        this.c = jj0Var;
    }

    @Override
    public final boolean a(View view, za0 za0Var) {
        y45.j((ImageView) view, "view");
        y45.j(za0Var, "feedbackValue");
        return true;
    }

    @Override
    public final void b(View view, za0 za0Var) {
        ImageView imageView = (ImageView) view;
        za0 za0Var2 = za0Var;
        y45.j(imageView, "view");
        y45.j(za0Var2, "feedbackValue");
        xj0 xj0VarA = za0Var2.a();
        if (xj0VarA == null) {
            return;
        }
        imageView.setForeground(null);
        imageView.setBackground(null);
        a(xj0VarA);
    }

    private final void a(xj0 xj0Var) {
        this.c.a(xj0Var, new jj0.b() {
            @Override
            public final void a(Bitmap bitmap) {
                cb0.a(this.a, bitmap);
            }
        });
    }

    public static final void a(cb0 cb0Var, Bitmap bitmap) {
        y45.j(cb0Var, "this$0");
        if (bitmap != null) {
            ImageView imageViewB = cb0Var.b();
            if (imageViewB != null) {
                imageViewB.setImageBitmap(bitmap);
                return;
            }
            return;
        }
        ImageView imageViewB2 = cb0Var.b();
        if (imageViewB2 != null) {
            imageViewB2.setImageDrawable(ContextCompat.getDrawable(imageViewB2.getContext(), R.drawable.monetization_ads_internal_default_adtune_feedback_icon));
        }
    }
}
