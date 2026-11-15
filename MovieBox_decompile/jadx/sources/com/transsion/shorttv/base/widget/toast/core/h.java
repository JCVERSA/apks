package com.transsion.shorttv.base.widget.toast.core;

import android.app.Application;
import android.content.res.Resources;
import kotlin.jvm.internal.Intrinsics;

public final class h {

    public static final h f50980a = new h();

    private static Application f50981b;

    private static kr.b f50982c;

    private static kr.c f50983d;

    private h() {
    }

    public static void b(h hVar, Application application, kr.c cVar, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            cVar = f50983d;
        }
        hVar.a(application, cVar);
    }

    public final void a(Application application, kr.c cVar) {
        f50981b = application;
        if (f50982c == null) {
            e(new g());
        }
        if (cVar == null) {
            cVar = new lr.a();
        }
        f50980a.f(cVar);
    }

    public final void c(int i10, int i11, int i12) {
        d(i10, i11, i12, 0.0f, 0.0f);
    }

    public final void d(int i10, int i11, int i12, float f10, float f11) {
        kr.b bVar = f50982c;
        Intrinsics.e(bVar);
        kr.c cVar = f50983d;
        Intrinsics.e(cVar);
        bVar.b(new lr.b(cVar, i10, i11, i12, f10, f11));
    }

    public final void e(kr.b bVar) {
        f50982c = bVar;
        Intrinsics.e(bVar);
        bVar.registerStrategy(f50981b);
    }

    public final void f(kr.c cVar) {
        f50983d = cVar;
        kr.b bVar = f50982c;
        Intrinsics.e(bVar);
        bVar.b(cVar);
    }

    public final void g(int i10) {
        if (i10 <= 0) {
            return;
        }
        f(new lr.c(i10, f50983d));
    }

    public final void h(int i10) {
        try {
            Application application = f50981b;
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
        kr.b bVar = f50982c;
        Intrinsics.e(bVar);
        bVar.a(charSequence);
    }
}
