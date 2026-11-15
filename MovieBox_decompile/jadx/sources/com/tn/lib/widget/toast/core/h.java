package com.tn.lib.widget.toast.core;

import android.app.Application;
import android.content.res.Resources;
import kotlin.jvm.internal.Intrinsics;

public final class h {

    public static final h f40484a = new h();

    private static Application f40485b;

    private static gh.b f40486c;

    private static gh.c f40487d;

    private static Boolean f40488e;

    private h() {
    }

    public static void c(h hVar, Application application, gh.c cVar, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            cVar = f40487d;
        }
        hVar.b(application, cVar);
    }

    private final boolean d() {
        if (f40488e == null) {
            Application application = f40485b;
            Intrinsics.e(application);
            f40488e = Boolean.valueOf((application.getApplicationInfo().flags & 2) != 0);
        }
        Boolean bool = f40488e;
        Intrinsics.e(bool);
        return bool.booleanValue();
    }

    public final void a(CharSequence charSequence) {
        if (d()) {
            l(charSequence);
        }
    }

    public final void b(Application application, gh.c cVar) {
        f40485b = application;
        if (f40486c == null) {
            h(new g());
        }
        if (cVar == null) {
            cVar = new hh.a();
        }
        f40484a.i(cVar);
    }

    public final void e(int i10) {
        f(i10, 0, 0);
    }

    public final void f(int i10, int i11, int i12) {
        g(i10, i11, i12, 0.0f, 0.0f);
    }

    public final void g(int i10, int i11, int i12, float f10, float f11) {
        gh.b bVar = f40486c;
        Intrinsics.e(bVar);
        gh.c cVar = f40487d;
        Intrinsics.e(cVar);
        bVar.b(new hh.b(cVar, i10, i11, i12, f10, f11));
    }

    public final void h(gh.b bVar) {
        f40486c = bVar;
        Intrinsics.e(bVar);
        bVar.registerStrategy(f40485b);
    }

    public final void i(gh.c cVar) {
        f40487d = cVar;
        gh.b bVar = f40486c;
        Intrinsics.e(bVar);
        bVar.b(cVar);
    }

    public final void j(int i10) {
        if (i10 <= 0) {
            return;
        }
        i(new hh.c(i10, f40487d));
    }

    public final void k(int i10) {
        try {
            Application application = f40485b;
            Intrinsics.e(application);
            l(application.getResources().getText(i10));
        } catch (Resources.NotFoundException unused) {
            l(String.valueOf(i10));
        }
    }

    public final void l(CharSequence charSequence) {
        if (charSequence == null || charSequence.length() == 0) {
            return;
        }
        gh.b bVar = f40486c;
        Intrinsics.e(bVar);
        bVar.a(charSequence);
    }
}
