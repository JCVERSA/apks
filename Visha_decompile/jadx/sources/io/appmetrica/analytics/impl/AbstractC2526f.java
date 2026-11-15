package io.appmetrica.analytics.impl;

import android.content.Context;
import androidx.annotation.NonNull;

public abstract class AbstractC2526f implements InterfaceC2954w4 {
    public final Context a;
    public final C2817qg b;

    public AbstractC2526f(@NonNull Context context, @NonNull C2817qg c2817qg) {
        this.a = context.getApplicationContext();
        this.b = c2817qg;
        c2817qg.a(this);
        C2910ua.j().m().b(this);
    }

    @Override
    public final void a(@NonNull C2408a6 c2408a6, @NonNull G4 g4) {
        b(c2408a6, g4);
    }

    @NonNull
    public final C2817qg b() {
        return this.b;
    }

    public abstract void b(@NonNull C2408a6 c2408a6, @NonNull G4 g4);

    @NonNull
    public final Context c() {
        return this.a;
    }

    @Override
    public final void a() {
        this.b.b(this);
        C2910ua.E.l().a(this);
    }
}
