package com.apm.insight;

import com.apm.insight.l.g;

public final class c {

    private static com.apm.insight.b.a f18821a = new com.apm.insight.b.a();

    public static com.apm.insight.b.a a() {
        return f18821a;
    }

    public static void a(Throwable th2, String str) {
        if (!e.i().isEnsureEnable() || g.a(th2)) {
            return;
        }
        com.apm.insight.f.b.a(th2, str, "core_exception_monitor");
    }
}
