package com.transsion.home.view;

import java.util.HashMap;
import qi.h;

public final class g {

    private static boolean f44436b;

    public static final g f44435a = new g();

    public static final int f44437c = 8;

    private g() {
    }

    private final void c() {
        HashMap map = new HashMap();
        map.put("click", "search");
        h.f69682a.o("guide", map);
    }

    public final boolean a() {
        return f44436b;
    }

    public final void b(boolean z10) {
        com.transsion.baselib.report.launch.b.f42221a.b().putBoolean("search_guide", true);
        if (z10) {
            c();
        }
    }

    public final void d() {
        f44436b = false;
    }

    public final void e(boolean z10) {
        f44436b = z10;
    }
}
