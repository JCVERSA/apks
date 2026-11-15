package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class Cif {
    private static final String c = "Incorrect AppMetrica Integration. The minimum supported version of AppMetrica SDK is 7.7.2 (inclusive) and the maximum supported version is 8.0.0 (exclusive). Please, check your AppMetrica integration.";
    private static final String d = "Incorrect AppMetrica Version. The minimum supported version of AppMetrica SDK is 7.7.2 (inclusive) and the maximum supported version is 8.0.0 (exclusive). And the current version of AppMetrica SDK is ";
    private final ib2 a;
    private final ue b;

    public Cif() {
        this(new ib2(), ve.a());
    }

    public final void a() throws bp0 {
        String strA = this.b.a();
        if (strA == null) {
            String str = c;
            throw new bp0(str, str);
        }
        this.a.getClass();
        hb2 hb2VarA = ib2.a("7.7.2");
        if (hb2VarA == null) {
            return;
        }
        this.a.getClass();
        hb2 hb2VarA2 = ib2.a("8.0.0");
        if (hb2VarA2 == null) {
            return;
        }
        this.a.getClass();
        hb2 hb2VarA3 = ib2.a(strA);
        if (hb2VarA3 == null || hb2VarA3.compareTo(hb2VarA) < 0 || hb2VarA3.compareTo(hb2VarA2) >= 0) {
            String strA2 = a(strA);
            throw new bp0(strA2, strA2);
        }
    }

    public Cif(ib2 ib2Var, ue ueVar) {
        y45.j(ib2Var, "versionNameParser");
        y45.j(ueVar, "appMetricaAdapter");
        this.a = ib2Var;
        this.b = ueVar;
    }

    private static String a(String str) {
        return d + str;
    }
}
