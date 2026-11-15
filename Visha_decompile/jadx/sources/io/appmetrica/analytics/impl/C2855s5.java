package io.appmetrica.analytics.impl;

import android.content.Context;
import java.util.HashMap;

public final class C2855s5 {
    public final HashMap a = new HashMap();
    public final HashMap b = new HashMap();
    public final Context c;

    public C2855s5(Context context) {
        this.c = context.getApplicationContext();
    }

    public final Na a(C2532f5 c2532f5, G4 g4, T7 t7, HashMap map) {
        Na na = (Na) map.get(c2532f5.toString());
        if (na != null) {
            na.a(g4);
            return na;
        }
        Na naA = t7.a(this.c, c2532f5, g4);
        map.put(c2532f5.toString(), naA);
        return naA;
    }
}
