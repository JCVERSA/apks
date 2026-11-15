package u;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.markers.KMappedMarker;

public abstract class e implements Iterator, KMappedMarker {

    private final u[] f72898a;

    private int f72899b;

    private boolean f72900c = true;

    public e(t tVar, u[] uVarArr) {
        this.f72898a = uVarArr;
        uVarArr[0].m(tVar.p(), tVar.m() * 2);
        this.f72899b = 0;
        e();
    }

    private final void a() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
    }

    private final void e() {
        if (this.f72898a[this.f72899b].h()) {
            return;
        }
        for (int i10 = this.f72899b; -1 < i10; i10--) {
            int iH = h(i10);
            if (iH == -1 && this.f72898a[i10].i()) {
                this.f72898a[i10].l();
                iH = h(i10);
            }
            if (iH != -1) {
                this.f72899b = iH;
                return;
            }
            if (i10 > 0) {
                this.f72898a[i10 - 1].l();
            }
            this.f72898a[i10].m(t.f72918e.a().p(), 0);
        }
        this.f72900c = false;
    }

    private final int h(int i10) {
        if (this.f72898a[i10].h()) {
            return i10;
        }
        if (!this.f72898a[i10].i()) {
            return -1;
        }
        t tVarC = this.f72898a[i10].c();
        if (i10 == 6) {
            this.f72898a[i10 + 1].m(tVarC.p(), tVarC.p().length);
        } else {
            this.f72898a[i10 + 1].m(tVarC.p(), tVarC.m() * 2);
        }
        return h(i10 + 1);
    }

    protected final Object c() {
        a();
        return this.f72898a[this.f72899b].a();
    }

    protected final u[] f() {
        return this.f72898a;
    }

    @Override
    public boolean hasNext() {
        return this.f72900c;
    }

    protected final void i(int i10) {
        this.f72899b = i10;
    }

    @Override
    public Object next() {
        a();
        Object next = this.f72898a[this.f72899b].next();
        e();
        return next;
    }

    @Override
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
