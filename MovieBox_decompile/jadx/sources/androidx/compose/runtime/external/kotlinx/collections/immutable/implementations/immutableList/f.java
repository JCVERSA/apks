package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import java.util.ConcurrentModificationException;
import java.util.ListIterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableListIterator;
import kotlin.ranges.RangesKt;

public final class f extends a implements ListIterator, KMutableListIterator {

    private final PersistentVectorBuilder f3404c;

    private int f3405d;

    private i f3406e;

    private int f3407f;

    public f(PersistentVectorBuilder persistentVectorBuilder, int i10) {
        super(i10, persistentVectorBuilder.size());
        this.f3404c = persistentVectorBuilder;
        this.f3405d = persistentVectorBuilder.e();
        this.f3407f = -1;
        n();
    }

    private final void j() {
        if (this.f3405d != this.f3404c.e()) {
            throw new ConcurrentModificationException();
        }
    }

    private final void l() {
        if (this.f3407f == -1) {
            throw new IllegalStateException();
        }
    }

    private final void m() {
        i(this.f3404c.size());
        this.f3405d = this.f3404c.e();
        this.f3407f = -1;
        n();
    }

    private final void n() {
        Object[] objArrF = this.f3404c.f();
        if (objArrF == null) {
            this.f3406e = null;
            return;
        }
        int iD = j.d(this.f3404c.size());
        int iH = RangesKt.h(e(), iD);
        int i10 = (this.f3404c.i() / 5) + 1;
        i iVar = this.f3406e;
        if (iVar == null) {
            this.f3406e = new i(objArrF, iH, iD, i10);
        } else {
            Intrinsics.e(iVar);
            iVar.n(objArrF, iH, iD, i10);
        }
    }

    @Override
    public void add(Object obj) {
        j();
        this.f3404c.add(e(), obj);
        h(e() + 1);
        m();
    }

    @Override
    public Object next() {
        j();
        a();
        this.f3407f = e();
        i iVar = this.f3406e;
        if (iVar == null) {
            Object[] objArrJ = this.f3404c.j();
            int iE = e();
            h(iE + 1);
            return objArrJ[iE];
        }
        if (iVar.hasNext()) {
            h(e() + 1);
            return iVar.next();
        }
        Object[] objArrJ2 = this.f3404c.j();
        int iE2 = e();
        h(iE2 + 1);
        return objArrJ2[iE2 - iVar.f()];
    }

    @Override
    public Object previous() {
        j();
        c();
        this.f3407f = e() - 1;
        i iVar = this.f3406e;
        if (iVar == null) {
            Object[] objArrJ = this.f3404c.j();
            h(e() - 1);
            return objArrJ[e()];
        }
        if (e() <= iVar.f()) {
            h(e() - 1);
            return iVar.previous();
        }
        Object[] objArrJ2 = this.f3404c.j();
        h(e() - 1);
        return objArrJ2[e() - iVar.f()];
    }

    @Override
    public void remove() {
        j();
        l();
        this.f3404c.remove(this.f3407f);
        if (this.f3407f < e()) {
            h(this.f3407f);
        }
        m();
    }

    @Override
    public void set(Object obj) {
        j();
        l();
        this.f3404c.set(this.f3407f, obj);
        this.f3405d = this.f3404c.e();
        n();
    }
}
