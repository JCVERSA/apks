package io.appmetrica.analytics.impl;

import android.content.Context;

public final class C2837rc implements InterfaceC2979x4 {
    @Override
    public final C2862sc a(Context context, C2855s5 c2855s5, C2581h4 c2581h4, G4 g4) {
        C2817qg c2817qg;
        C2887tc c2887tc = new C2887tc(c2581h4.b, c2581h4.a);
        C2841rg c2841rg = new C2841rg(new C2962wc());
        synchronized (c2855s5) {
            c2817qg = (C2817qg) c2855s5.a(c2887tc, g4, c2841rg, c2855s5.a);
        }
        return new C2862sc(context, c2817qg);
    }
}
