package com.yandex.div.internal.widget.tabs;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import defpackage.y45;

public final class g {
    public final Context a;
    public final BaseIndicatorTabLayout.c b;
    public Bitmap c;
    public int d;
    public int e;

    public g(Context context, BaseIndicatorTabLayout.c cVar) {
        y45.j(context, "context");
        y45.j(cVar, "indicators");
        this.a = context;
        this.b = cVar;
    }

    public final void a() {
        d();
        if (c()) {
            int childCount = this.b.getChildCount();
            for (int i = 1; i < childCount; i++) {
                this.b.addView(b(), (i * 2) - 1);
            }
            this.b.s(true);
        }
    }

    public final View b() {
        ImageView imageView = new ImageView(this.a);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.e, this.d);
        layoutParams.gravity = 17;
        imageView.setLayoutParams(layoutParams);
        imageView.setImageBitmap(this.c);
        return imageView;
    }

    public final boolean c() {
        return this.c != null;
    }

    public final void d() {
        if (this.b.l()) {
            for (int childCount = this.b.getChildCount() - 1; childCount > 0; childCount -= 2) {
                this.b.removeViewAt(childCount);
            }
        }
        this.b.s(false);
    }

    public final void e(int i) {
        if (c() && this.b.getChildCount() != 1) {
            if (i == 0) {
                this.b.addView(b(), 1);
            } else {
                this.b.addView(b(), i);
            }
        }
    }

    public final void f(int i) {
        if (c() && this.b.getChildCount() != 0) {
            if (i == 0) {
                this.b.removeViewAt(0);
            } else {
                this.b.removeViewAt(i - 1);
            }
        }
    }

    public final void g(Bitmap bitmap, int i, int i2) {
        y45.j(bitmap, "bitmap");
        this.c = bitmap;
        this.d = i2;
        this.e = i;
        a();
    }
}
