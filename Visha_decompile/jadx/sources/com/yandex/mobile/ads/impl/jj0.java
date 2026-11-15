package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.graphics.Bitmap;
import defpackage.abb;
import defpackage.ky5;
import defpackage.y45;

public final class jj0 {
    private final a a;
    private final sj0 b;
    private final oj0 c;

    public interface a {
        boolean a();
    }

    public interface b {
        void a(Bitmap bitmap);
    }

    public static final class c implements oj0.d {
        final String b;
        final b c;

        public c(String str, b bVar) {
            this.b = str;
            this.c = bVar;
        }

        @Override
        public final void a(si2 si2Var) {
        }

        @Override
        public final void a(oj0.c cVar, boolean z) {
            Bitmap bitmapB = cVar.b();
            if (bitmapB != null) {
                jj0 jj0Var = jj0.this;
                String str = this.b;
                b bVar = this.c;
                jj0Var.b.a(ky5.h(abb.a(str, bitmapB)));
                bVar.a(bitmapB);
            }
        }
    }

    public jj0(Context context, a aVar, sj0 sj0Var) {
        this(context, aVar, sj0Var, id1.c.a(context).b());
    }

    public final void a(xj0 xj0Var, b bVar) {
        y45.j(xj0Var, "imageValue");
        y45.j(bVar, "listener");
        Bitmap bitmapB = this.b.b(xj0Var);
        if (bitmapB != null) {
            bVar.a(bitmapB);
            return;
        }
        bVar.a(this.b.a(xj0Var));
        if (this.a.a()) {
            String strF = xj0Var.f();
            int iA = xj0Var.a();
            this.c.a(strF, new c(strF, bVar), xj0Var.g(), iA);
        }
    }

    public jj0(Context context, a aVar, sj0 sj0Var, oj0 oj0Var) {
        y45.j(context, "context");
        y45.j(aVar, "configuration");
        y45.j(sj0Var, "imageProvider");
        y45.j(oj0Var, "imageLoader");
        this.a = aVar;
        this.b = sj0Var;
        this.c = oj0Var;
    }
}
