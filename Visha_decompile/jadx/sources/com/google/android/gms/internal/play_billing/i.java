package com.google.android.gms.internal.play_billing;

import androidx.media3.exoplayer.upstream.CmcdData;
import defpackage.i0g;
import defpackage.p3g;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

public final class i extends h {
    public static final AtomicReferenceFieldUpdater a = AtomicReferenceFieldUpdater.newUpdater(l.class, Thread.class, CmcdData.OBJECT_TYPE_AUDIO_ONLY);
    public static final AtomicReferenceFieldUpdater b = AtomicReferenceFieldUpdater.newUpdater(l.class, l.class, "b");
    public static final AtomicReferenceFieldUpdater c = AtomicReferenceFieldUpdater.newUpdater(m.class, l.class, "d");
    public static final AtomicReferenceFieldUpdater d = AtomicReferenceFieldUpdater.newUpdater(m.class, e.class, "c");
    public static final AtomicReferenceFieldUpdater e = AtomicReferenceFieldUpdater.newUpdater(m.class, Object.class, "b");

    public i(p3g p3gVar) {
        super(null);
    }

    @Override
    public final e a(m mVar, e eVar) {
        return (e) d.getAndSet(mVar, eVar);
    }

    @Override
    public final l b(m mVar, l lVar) {
        return (l) c.getAndSet(mVar, lVar);
    }

    @Override
    public final void c(l lVar, l lVar2) {
        b.lazySet(lVar, lVar2);
    }

    @Override
    public final void d(l lVar, Thread thread) {
        a.lazySet(lVar, thread);
    }

    @Override
    public final boolean e(m mVar, e eVar, e eVar2) {
        return i0g.a(d, mVar, eVar, eVar2);
    }

    @Override
    public final boolean f(m mVar, Object obj, Object obj2) {
        return i0g.a(e, mVar, obj, obj2);
    }

    @Override
    public final boolean g(m mVar, l lVar, l lVar2) {
        return i0g.a(c, mVar, lVar, lVar2);
    }
}
