package defpackage;

import android.content.res.Resources;

public final class tz4 {
    public static final tz4 a = new tz4();

    public static final int a(float f) {
        Resources system = Resources.getSystem();
        y45.f(system, "Resources.getSystem()");
        return (int) ((f * system.getDisplayMetrics().density) + 0.5f);
    }

    public final float b(rz4 rz4Var, float f, int i) {
        y45.k(rz4Var, "indicatorOptions");
        return (f / 2) + ((rz4Var.f() + rz4Var.l()) * i);
    }

    public final float c(float f) {
        return f / 2;
    }
}
