package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.os.Build;
import defpackage.y45;
import java.util.List;
import java.util.Locale;

public final class j10 {
    private final l10 a;
    private final vs0 b;
    private final us1 c;

    public j10() {
        this(0);
    }

    public final String a(Context context) {
        y45.j(context, "context");
        return this.b.a(context);
    }

    public final String b(Context context) {
        y45.j(context, "context");
        String lowerCase = this.a.a(context).name().toLowerCase(Locale.ROOT);
        y45.i(lowerCase, "toLowerCase(...)");
        return lowerCase;
    }

    public final String c(Context context) {
        y45.j(context, "context");
        return this.b.c(context);
    }

    public final List<String> d(Context context) {
        y45.j(context, "context");
        return this.b.b(context);
    }

    public j10(int i) {
        this(new l10(), new vs0());
    }

    public static String a() {
        return Build.MANUFACTURER;
    }

    public final boolean c() {
        this.c.getClass();
        return us1.a();
    }

    public static String b() {
        return Build.VERSION.RELEASE;
    }

    public j10(l10 l10Var, vs0 vs0Var) {
        y45.j(l10Var, "deviceTypeProvider");
        y45.j(vs0Var, "localeProvider");
        this.a = l10Var;
        this.b = vs0Var;
        this.c = us1.a;
    }
}
