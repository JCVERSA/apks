package defpackage;

import java.util.concurrent.atomic.AtomicReference;

public final class nii {
    public static final nii b = new nii();
    public final AtomicReference a = new AtomicReference(new nji(new kji(null), null));

    public static nii a() {
        return b;
    }

    public final Object b(b9i b9iVar, Class cls) {
        return ((nji) this.a.get()).c(b9iVar, cls);
    }

    public final synchronized void c(jji jjiVar) {
        AtomicReference atomicReference = this.a;
        kji kjiVar = new kji((nji) atomicReference.get(), null);
        kjiVar.a(jjiVar);
        atomicReference.set(new nji(kjiVar, null));
    }

    public final synchronized void d(tji tjiVar) {
        AtomicReference atomicReference = this.a;
        kji kjiVar = new kji((nji) atomicReference.get(), null);
        kjiVar.b(tjiVar);
        atomicReference.set(new nji(kjiVar, null));
    }
}
