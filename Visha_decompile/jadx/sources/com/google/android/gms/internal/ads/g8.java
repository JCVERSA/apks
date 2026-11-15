package com.google.android.gms.internal.ads;

import defpackage.e8i;
import defpackage.f7i;
import defpackage.g7i;
import defpackage.h7i;
import defpackage.i7i;
import java.util.Collections;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Level;

public abstract class g8 extends w7 {
    public static final f7i d;
    public static final e8i e = new e8i(g8.class);
    public volatile Set b = null;
    public volatile int c;

    static {
        Throwable th;
        f7i h7iVar;
        i7i i7iVar = null;
        try {
            h7iVar = new g7i(i7iVar);
            th = null;
        } catch (Throwable th2) {
            th = th2;
            h7iVar = new h7i(i7iVar);
        }
        d = h7iVar;
        if (th != null) {
            e.a().logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFutureState", "<clinit>", "SafeAtomicHelper is broken!", th);
        }
    }

    public g8(int i) {
        this.c = i;
    }

    public abstract void h(Set set);

    public final int j() {
        return d.a(this);
    }

    public final Set l() {
        Set set = this.b;
        if (set != null) {
            return set;
        }
        Set setNewSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
        h(setNewSetFromMap);
        d.b(this, null, setNewSetFromMap);
        Set set2 = this.b;
        Objects.requireNonNull(set2);
        return set2;
    }

    public final void o() {
        this.b = null;
    }
}
