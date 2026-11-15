package rh;

public final class f {

    public static final f f71235a = new f();

    private static Boolean f71236b;

    private static Boolean f71237c;

    private static Boolean f71238d;

    private f() {
    }

    public final boolean a() {
        Boolean bool = f71237c;
        if (bool == null) {
            Boolean boolValueOf = Boolean.valueOf(com.transsion.ad.strategy.e.f41179a.b().getBoolean("isDetailRequestLog", false));
            f71237c = boolValueOf;
            return boolValueOf.booleanValue();
        }
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    public final boolean b() {
        return com.transsion.ad.strategy.e.f41179a.b().getBoolean("isGlobalAdOff", false);
    }

    public final Boolean c() {
        if (f71238d == null) {
            f71238d = Boolean.valueOf(com.transsion.ad.strategy.e.f41179a.b().getBoolean("isHitLog", false));
        }
        return f71238d;
    }

    public final boolean d() {
        Boolean bool = f71236b;
        if (bool == null) {
            Boolean boolValueOf = Boolean.valueOf(com.transsion.ad.strategy.e.f41179a.b().getBoolean("isReleasePsApi", true));
            f71236b = boolValueOf;
            return boolValueOf.booleanValue();
        }
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    public final void e(boolean z10) {
        com.transsion.ad.strategy.e.f41179a.b().putBoolean("isDetailRequestLog", z10);
        f71237c = Boolean.valueOf(z10);
    }

    public final void f(boolean z10) {
        com.transsion.ad.strategy.e.f41179a.b().putBoolean("isGlobalAdOff", z10);
    }

    public final void g(Boolean bool) {
        if (bool == null) {
            return;
        }
        com.transsion.ad.strategy.e.f41179a.b().putBoolean("isHitLog", bool.booleanValue());
        f71238d = bool;
    }

    public final void h(boolean z10) {
        com.transsion.ad.strategy.e.f41179a.b().putBoolean("isReleasePsApi", z10);
        f71236b = Boolean.valueOf(z10);
    }
}
