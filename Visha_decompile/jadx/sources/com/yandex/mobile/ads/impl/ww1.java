package com.yandex.mobile.ads.impl;

import defpackage.hz9;
import defpackage.y45;
import java.util.Arrays;
import java.util.Locale;

public final class ww1 {
    private final w11 a;

    public ww1() {
        this(new w11());
    }

    public final String a() {
        this.a.getClass();
        gb2 gb2VarA = w11.a();
        hz9 hz9Var = hz9.a;
        String str = String.format(Locale.US, "%d.%d%d", Arrays.copyOf(new Object[]{Integer.valueOf(gb2VarA.a()), Integer.valueOf(gb2VarA.b()), Integer.valueOf(gb2VarA.c())}, 3));
        y45.i(str, "format(...)");
        return str;
    }

    public final String b() {
        this.a.getClass();
        gb2 gb2VarA = w11.a();
        hz9 hz9Var = hz9.a;
        String str = String.format(Locale.US, "%d.%d.%d", Arrays.copyOf(new Object[]{Integer.valueOf(gb2VarA.a()), Integer.valueOf(gb2VarA.b()), Integer.valueOf(gb2VarA.c())}, 3));
        y45.i(str, "format(...)");
        return str;
    }

    public ww1(w11 w11Var) {
        y45.j(w11Var, "mobileAdsVersionInfoProvider");
        this.a = w11Var;
    }
}
