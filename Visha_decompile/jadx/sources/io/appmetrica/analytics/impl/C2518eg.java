package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;

public class C2518eg {
    public final Ua a;
    public final Zf b;
    public final Sa c;

    public C2518eg(Ua ua, Zf zf, Sa sa) {
        this.a = ua;
        this.b = zf;
        this.c = sa;
    }

    public final void a(@Nullable C2468cg c2468cg) {
        if (this.a.a(c2468cg)) {
            this.b.a(c2468cg);
            this.c.a();
        }
    }

    @NonNull
    @VisibleForTesting(otherwise = 5)
    public final Zf b() {
        return this.b;
    }

    @NonNull
    @VisibleForTesting(otherwise = 5)
    public final Sa c() {
        return this.c;
    }

    @NonNull
    @VisibleForTesting(otherwise = 5)
    public final Ua a() {
        return this.a;
    }
}
