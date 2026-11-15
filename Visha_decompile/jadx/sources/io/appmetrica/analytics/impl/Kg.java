package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreapi.internal.backport.Consumer;
import io.appmetrica.analytics.coreapi.internal.backport.Function;

public final class Kg implements Consumer {
    public final C3025z0 a;
    public final Function b;
    public final Lg c;

    public Kg(Lg lg, C3025z0 c3025z0, Function<String, C2408a6> function) {
        this.c = lg;
        this.a = c3025z0;
        this.b = function;
    }

    @Override
    public final void consume(@NonNull String str) {
        Lg lg = this.c;
        C3025z0 c3025z0 = this.a;
        String str2 = c3025z0.a;
        String str3 = c3025z0.b;
        int i = c3025z0.d;
        Integer numValueOf = Integer.valueOf(i);
        C3025z0 c3025z1 = this.a;
        String str4 = c3025z1.e;
        C2581h4 c2581h4 = new C2581h4(str2, str3, numValueOf, str4, c3025z1.c);
        C2408a6 c2408a6 = (C2408a6) this.b.apply(str);
        G4 g4 = new G4(new Bl(), new F4(), null);
        lg.c.a(c2581h4, g4).a(c2408a6, g4);
        lg.c.a(i, str3, str4);
    }
}
