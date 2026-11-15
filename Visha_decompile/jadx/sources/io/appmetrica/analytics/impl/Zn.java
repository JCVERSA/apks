package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.toggle.SimpleThreadSafeToggle;
import java.util.WeakHashMap;

public final class Zn extends SimpleThreadSafeToggle {
    public final WeakHashMap a;

    public Zn() {
        super(false, "[WakelocksToggle]");
        this.a = new WeakHashMap();
    }

    public final synchronized void a(Object obj) {
        this.a.put(obj, null);
        if (this.a.size() == 1) {
            updateState(true);
        }
    }

    public final synchronized void b(Object obj) {
        this.a.remove(obj);
        if (this.a.isEmpty()) {
            updateState(false);
        }
    }
}
