package com.transsion.lib_web.download_render.utils;

import pl.h;
import yg.l;

public final class d {

    public static final d f44821a = new d();

    private static boolean f44822b;

    private d() {
    }

    public final boolean a() {
        return f44822b;
    }

    public final void b() {
        h.f69205a.a("DR_", "net connected");
        f44822b = true;
    }

    public final void c() {
        h.f69205a.a("DR_", "net disConnected");
        f44822b = false;
    }

    public final void d() {
        f44822b = l.f76264a.b() == 2;
    }
}
