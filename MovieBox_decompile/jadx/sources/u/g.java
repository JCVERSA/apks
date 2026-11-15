package u;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.jvm.internal.markers.KMutableIterator;

public class g extends e implements Iterator, KMutableIterator {

    private final f f72907d;

    private Object f72908e;

    private boolean f72909f;

    private int f72910g;

    public g(f fVar, u[] uVarArr) {
        super(fVar.j(), uVarArr);
        this.f72907d = fVar;
        this.f72910g = fVar.i();
    }

    private final void j() {
        if (this.f72907d.i() != this.f72910g) {
            throw new ConcurrentModificationException();
        }
    }

    private final void l() {
        if (!this.f72909f) {
            throw new IllegalStateException();
        }
    }

    private final void m(int i10, t tVar, Object obj, int i11) {
        int i12 = i11 * 5;
        if (i12 > 30) {
            f()[i11].n(tVar.p(), tVar.p().length, 0);
            while (!Intrinsics.c(f()[i11].a(), obj)) {
                f()[i11].j();
            }
            i(i11);
            return;
        }
        int iF = 1 << x.f(i10, i12);
        if (tVar.q(iF)) {
            f()[i11].n(tVar.p(), tVar.m() * 2, tVar.n(iF));
            i(i11);
        } else {
            int iO = tVar.O(iF);
            t tVarN = tVar.N(iO);
            f()[i11].n(tVar.p(), tVar.m() * 2, iO);
            m(i10, tVarN, obj, i11 + 1);
        }
    }

    public final void n(Object obj, Object obj2) {
        if (this.f72907d.containsKey(obj)) {
            if (hasNext()) {
                Object objC = c();
                this.f72907d.put(obj, obj2);
                m(objC != null ? objC.hashCode() : 0, this.f72907d.j(), objC, 0);
            } else {
                this.f72907d.put(obj, obj2);
            }
            this.f72910g = this.f72907d.i();
        }
    }

    @Override
    public Object next() {
        j();
        this.f72908e = c();
        this.f72909f = true;
        return super.next();
    }

    @Override
    public void remove() {
        l();
        if (hasNext()) {
            Object objC = c();
            TypeIntrinsics.d(this.f72907d).remove(this.f72908e);
            m(objC != null ? objC.hashCode() : 0, this.f72907d.j(), objC, 0);
        } else {
            TypeIntrinsics.d(this.f72907d).remove(this.f72908e);
        }
        this.f72908e = null;
        this.f72909f = false;
        this.f72910g = this.f72907d.i();
    }
}
