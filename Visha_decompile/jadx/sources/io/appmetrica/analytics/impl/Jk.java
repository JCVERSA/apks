package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public final class Jk implements Pn {
    public final C2801q0 a;

    public Jk(@NonNull C2801q0 c2801q0) {
        this.a = c2801q0;
    }

    @Override
    public final Nn a(@Nullable Void r3) {
        boolean z;
        this.a.getClass();
        synchronized (C2776p0.class) {
            z = C2776p0.f;
        }
        return z ? new Nn(this, true, "") : new Nn(this, false, "AppMetrica isn't initialized. Use AppMetrica#activate(android.content.Context, String) method to activate.");
    }

    public final Nn a() {
        return a((Void) null);
    }
}
