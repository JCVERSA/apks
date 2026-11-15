package com.transsion.shorttv_pugc.base.widget.toast.core;

import android.app.Application;
import android.content.res.Resources;
import kotlin.jvm.internal.Intrinsics;

public final class h {

    public static final h f51960a = new h();

    private static Application f51961b;

    private static os.b f51962c;

    private static os.c f51963d;

    private h() {
    }

    public static void b(h hVar, Application application, os.c cVar, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            cVar = f51963d;
        }
        hVar.a(application, cVar);
    }

    public final void a(Application application, os.c cVar) {
        f51961b = application;
        if (f51962c == null) {
            e(new g());
        }
        if (cVar == null) {
            cVar = new ps.a();
        }
        f51960a.f(cVar);
    }

    public final void c(int i10, int i11, int i12) {
        d(i10, i11, i12, 0.0f, 0.0f);
    }

    public final void d(int i10, int i11, int i12, float f10, float f11) {
        os.b bVar = f51962c;
        Intrinsics.e(bVar);
        os.c cVar = f51963d;
        Intrinsics.e(cVar);
        bVar.b(new ps.b(cVar, i10, i11, i12, f10, f11));
    }

    public final void e(os.b bVar) {
        f51962c = bVar;
        Intrinsics.e(bVar);
        bVar.registerStrategy(f51961b);
    }

    public final void f(os.c cVar) {
        f51963d = cVar;
        os.b bVar = f51962c;
        Intrinsics.e(bVar);
        bVar.b(cVar);
    }

    public final void g(int i10) {
        if (i10 <= 0) {
            return;
        }
        f(new ps.c(i10, f51963d));
    }

    public final void h(int i10) {
        try {
            Application application = f51961b;
            Intrinsics.e(application);
            i(application.getResources().getText(i10));
        } catch (Resources.NotFoundException unused) {
            i(String.valueOf(i10));
        }
    }

    public final void i(CharSequence charSequence) {
        if (charSequence == null || charSequence.length() == 0) {
            return;
        }
        os.b bVar = f51962c;
        Intrinsics.e(bVar);
        bVar.a(charSequence);
    }
}
