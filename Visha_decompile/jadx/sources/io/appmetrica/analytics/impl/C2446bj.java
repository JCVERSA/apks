package io.appmetrica.analytics.impl;

import android.content.Context;

public final class C2446bj implements InterfaceC2979x4 {
    @Override
    public final Xi a(Context context, C2855s5 c2855s5, C2581h4 c2581h4, G4 g4) {
        C2817qg c2817qg;
        C2532f5 c2532f5 = new C2532f5(c2581h4.b, c2581h4.a);
        synchronized (c2855s5) {
            c2817qg = (C2817qg) c2855s5.a.get(c2532f5.toString());
        }
        return new Xi(c2817qg);
    }
}
