package com.transsion.ad.strategy;

public final class v {

    public static final v f41199a = new v();

    private static Boolean f41200b;

    private v() {
    }

    public final boolean a() {
        if (f41200b == null) {
            f41200b = Boolean.valueOf(e.f41179a.c().getBoolean("mmkv_key_teen_mode", false));
        }
        Boolean bool = f41200b;
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    public final void b(boolean z10) {
        e.f41179a.c().putBoolean("mmkv_key_teen_mode", z10);
        f41200b = Boolean.valueOf(z10);
    }
}
