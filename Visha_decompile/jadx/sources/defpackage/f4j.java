package defpackage;

import com.google.android.gms.internal.play_billing.t;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

public final class f4j extends e5g {
    public final AtomicReferenceFieldUpdater a;
    public final AtomicReferenceFieldUpdater b;
    public final AtomicReferenceFieldUpdater c;
    public final AtomicReferenceFieldUpdater d;
    public final AtomicReferenceFieldUpdater e;

    public f4j(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
        super(null);
        this.a = atomicReferenceFieldUpdater;
        this.b = atomicReferenceFieldUpdater2;
        this.c = atomicReferenceFieldUpdater3;
        this.d = atomicReferenceFieldUpdater4;
        this.e = atomicReferenceFieldUpdater5;
    }

    @Override
    public final void a(haj hajVar, haj hajVar2) {
        this.b.lazySet(hajVar, hajVar2);
    }

    @Override
    public final void b(haj hajVar, Thread thread) {
        this.a.lazySet(hajVar, thread);
    }

    @Override
    public final boolean c(t tVar, hui huiVar, hui huiVar2) {
        return m1j.a(this.d, tVar, huiVar, huiVar2);
    }

    @Override
    public final boolean d(t tVar, Object obj, Object obj2) {
        return m1j.a(this.e, tVar, obj, obj2);
    }

    @Override
    public final boolean e(t tVar, haj hajVar, haj hajVar2) {
        return m1j.a(this.c, tVar, hajVar, hajVar2);
    }
}
