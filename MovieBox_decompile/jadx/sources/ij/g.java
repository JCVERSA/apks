package ij;

import kotlin.jvm.internal.Intrinsics;

public final class g {

    public static final g f62108a = new g();

    private static Boolean f62109b;

    private g() {
    }

    private final boolean a() {
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f42221a;
        return bVar.b().getBoolean("key_or_content_mode", false) || bVar.b().getInt("key_or_content_mode_local", -1) == 1;
    }

    private final void c(boolean z10) {
        jg.b.f63119a.b("X-Content-Mode", z10 ? "1" : "0");
    }

    private final void d(boolean z10) {
        com.transsion.baselib.report.launch.b.f42221a.b().putBoolean("key_or_content_mode", z10);
    }

    public final boolean b() {
        Boolean bool = f62109b;
        if (bool != null) {
            Intrinsics.e(bool);
            return bool.booleanValue();
        }
        Boolean boolValueOf = Boolean.valueOf(a());
        f62109b = boolValueOf;
        Intrinsics.e(boolValueOf);
        c(boolValueOf.booleanValue());
        Boolean bool2 = f62109b;
        Intrinsics.e(bool2);
        return bool2.booleanValue();
    }

    public final void e(boolean z10) {
        c(z10);
        f62109b = Boolean.valueOf(z10);
        d(z10);
    }
}
