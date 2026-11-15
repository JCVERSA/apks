package io.appmetrica.analytics.impl;

import android.content.Context;
import java.util.LinkedHashMap;

public final class Xn {
    public final Context a;
    public final LinkedHashMap b = new LinkedHashMap();
    public final Tn c;
    public final Tn d;

    public Xn(Context context) {
        this.a = context;
        C2612ia c2612ia = new C2612ia(context, "appmetrica_vital.dat");
        this.c = new Tn(C2910ua.j().x(), c2612ia);
        this.d = new Tn(new Oe(C2559g7.a(context).d()), c2612ia);
    }

    public final Tn a() {
        return this.c;
    }

    public final Tn b() {
        return this.d;
    }
}
