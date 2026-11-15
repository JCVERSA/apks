package com.yandex.mobile.ads.impl;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.yandex.mobile.ads.impl.lx;
import defpackage.jn5;
import defpackage.y45;
import java.util.Iterator;
import java.util.List;

public final class lx {
    private final oj0 a;
    private final List<jn5> b;

    public static final class a implements oj0.d {
        final ImageView a;

        public a(ImageView imageView) {
            this.a = imageView;
        }

        @Override
        public final void a(si2 si2Var) {
        }

        @Override
        public final void a(oj0.c cVar, boolean z) {
            y45.j(cVar, "response");
            Bitmap bitmapB = cVar.b();
            if (bitmapB != null) {
                this.a.setImageBitmap(bitmapB);
            }
        }
    }

    public lx(jz1 jz1Var, List list) {
        y45.j(jz1Var, "imageLoader");
        y45.j(list, "loadReferencesStorage");
        this.a = jz1Var;
        this.b = list;
    }

    public final void a() {
        Iterator<T> it = this.b.iterator();
        while (it.hasNext()) {
            ((jn5) it.next()).cancel();
        }
        this.b.clear();
    }

    public final jn5 a(String str, ImageView imageView) {
        y45.j(str, "imageUrl");
        y45.j(imageView, "imageView");
        final oj0.c cVarA = this.a.a(str, new a(imageView), 0, 0);
        y45.i(cVarA, "get(...)");
        jn5 jn5Var = new jn5() {
            @Override
            public final void cancel() {
                lx.a(cVarA);
            }
        };
        this.b.add(jn5Var);
        return jn5Var;
    }

    public static final void a(oj0.c cVar) {
        y45.j(cVar, "$imageContainer");
        cVar.a();
    }
}
