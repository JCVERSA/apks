package com.google.android.gms.internal.ads;

import androidx.media3.exoplayer.upstream.CmcdData;
import defpackage.a7i;
import defpackage.e7i;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import org.mozilla.javascript.ES6Iterator;

public final class z7 extends y7 {
    public static final AtomicReferenceFieldUpdater a = AtomicReferenceFieldUpdater.newUpdater(c8.class, Thread.class, CmcdData.OBJECT_TYPE_AUDIO_ONLY);
    public static final AtomicReferenceFieldUpdater b = AtomicReferenceFieldUpdater.newUpdater(c8.class, c8.class, "b");
    public static final AtomicReferenceFieldUpdater c;
    public static final AtomicReferenceFieldUpdater d;
    public static final AtomicReferenceFieldUpdater e;

    static {
        int i = d8.zzh;
        c = AtomicReferenceFieldUpdater.newUpdater(d8.class, c8.class, "waiters");
        d = AtomicReferenceFieldUpdater.newUpdater(d8.class, u7.class, "listeners");
        e = AtomicReferenceFieldUpdater.newUpdater(d8.class, Object.class, ES6Iterator.VALUE_PROPERTY);
    }

    public z7(e7i e7iVar) {
        super(null);
    }

    @Override
    public final u7 a(d8 d8Var, u7 u7Var) {
        return (u7) d.getAndSet(d8Var, u7Var);
    }

    @Override
    public final c8 b(d8 d8Var, c8 c8Var) {
        return (c8) c.getAndSet(d8Var, c8Var);
    }

    @Override
    public final void c(c8 c8Var, c8 c8Var2) {
        b.lazySet(c8Var, c8Var2);
    }

    @Override
    public final void d(c8 c8Var, Thread thread) {
        a.lazySet(c8Var, thread);
    }

    @Override
    public final boolean e(d8 d8Var, u7 u7Var, u7 u7Var2) {
        return a7i.a(d, d8Var, u7Var, u7Var2);
    }

    @Override
    public final boolean f(d8 d8Var, Object obj, Object obj2) {
        return a7i.a(e, d8Var, obj, obj2);
    }

    @Override
    public final boolean g(d8 d8Var, c8 c8Var, c8 c8Var2) {
        return a7i.a(c, d8Var, c8Var, c8Var2);
    }
}
