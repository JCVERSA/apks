package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.IReporter;
import java.util.HashMap;

public final class Mg extends Gg {
    public final IReporter b;

    public Mg(@NonNull C2706m5 c2706m5, @NonNull IReporter iReporter) {
        super(c2706m5);
        this.b = iReporter;
    }

    @Override
    public final boolean a(@NonNull C2408a6 c2408a6) {
        Mc mc = (Mc) Mc.c.get(c2408a6.d);
        HashMap map = new HashMap();
        map.put("type", mc.a);
        map.put("delivery_method", mc.b);
        this.b.reportEvent("crash_saved", map);
        return false;
    }
}
