package io.appmetrica.analytics.impl;

import android.content.Context;

public final class C2539fc implements InterfaceC2979x4 {
    @Override
    public final L4 a(Context context, C2855s5 c2855s5, C2581h4 c2581h4, G4 g4) {
        O4 o4;
        M4 m4 = new M4(c2581h4.b);
        P4 p4 = new P4();
        synchronized (c2855s5) {
            o4 = (O4) c2855s5.a(m4, g4, p4, c2855s5.b);
        }
        return new L4(context, o4, g4);
    }
}
