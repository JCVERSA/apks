package defpackage;

import com.google.android.gms.internal.ads.zzgnw;
import java.util.concurrent.atomic.AtomicReference;

public final class qii {
    public static final qii b = (qii) zzgnw.zza(new eki() {
        @Override
        public final Object zza() {
            qii qiiVar = new qii();
            qiiVar.g(new jhi(thi.class, uji.class, new khi() {
                @Override
                public final yji a(b9i b9iVar, t9i t9iVar) {
                    return ((thi) b9iVar).b(t9iVar);
                }
            }));
            return qiiVar;
        }
    });
    public final AtomicReference a = new AtomicReference(new dki(new zji(), null));

    public static qii c() {
        return b;
    }

    public final b9i a(yji yjiVar, t9i t9iVar) {
        return ((dki) this.a.get()).a(yjiVar, t9iVar);
    }

    public final p9i b(yji yjiVar) {
        return ((dki) this.a.get()).b(yjiVar);
    }

    public final yji d(b9i b9iVar, Class cls, t9i t9iVar) {
        return ((dki) this.a.get()).c(b9iVar, cls, t9iVar);
    }

    public final yji e(p9i p9iVar, Class cls) {
        return ((dki) this.a.get()).d(p9iVar, cls);
    }

    public final synchronized void f(ihi ihiVar) {
        AtomicReference atomicReference = this.a;
        zji zjiVar = new zji((dki) atomicReference.get());
        zjiVar.a(ihiVar);
        atomicReference.set(new dki(zjiVar, null));
    }

    public final synchronized void g(mhi mhiVar) {
        AtomicReference atomicReference = this.a;
        zji zjiVar = new zji((dki) atomicReference.get());
        zjiVar.b(mhiVar);
        atomicReference.set(new dki(zjiVar, null));
    }

    public final synchronized void h(vii viiVar) {
        AtomicReference atomicReference = this.a;
        zji zjiVar = new zji((dki) atomicReference.get());
        zjiVar.c(viiVar);
        atomicReference.set(new dki(zjiVar, null));
    }

    public final synchronized void i(zii ziiVar) {
        AtomicReference atomicReference = this.a;
        zji zjiVar = new zji((dki) atomicReference.get());
        zjiVar.d(ziiVar);
        atomicReference.set(new dki(zjiVar, null));
    }

    public final boolean j(yji yjiVar) {
        return ((dki) this.a.get()).i(yjiVar);
    }

    public final boolean k(yji yjiVar) {
        return ((dki) this.a.get()).j(yjiVar);
    }
}
