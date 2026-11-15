package io.appmetrica.analytics.impl;

import android.content.Context;

public final class C2917uh implements InterfaceC2979x4 {
    public final InterfaceC2731n5 a;

    public C2917uh(InterfaceC2731n5 interfaceC2731n5) {
        this.a = interfaceC2731n5;
    }

    @Override
    public final C2792pg a(Context context, C2855s5 c2855s5, C2581h4 c2581h4, G4 g4) {
        C2817qg c2817qg;
        C2532f5 c2532f5 = new C2532f5(c2581h4.b, c2581h4.a);
        C2841rg c2841rg = new C2841rg(this.a);
        synchronized (c2855s5) {
            c2817qg = (C2817qg) c2855s5.a(c2532f5, g4, c2841rg, c2855s5.a);
        }
        return new C2792pg(context, c2817qg);
    }
}
