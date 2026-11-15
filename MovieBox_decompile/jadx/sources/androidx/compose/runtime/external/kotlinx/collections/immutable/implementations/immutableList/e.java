package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import kotlin.ranges.RangesKt;

public final class e extends a {

    private final Object[] f3402c;

    private final i f3403d;

    public e(Object[] objArr, Object[] objArr2, int i10, int i11, int i12) {
        super(i10, i11);
        this.f3402c = objArr2;
        int iD = j.d(i11);
        this.f3403d = new i(objArr, RangesKt.h(i10, iD), iD, i12);
    }

    @Override
    public Object next() {
        a();
        if (this.f3403d.hasNext()) {
            h(e() + 1);
            return this.f3403d.next();
        }
        Object[] objArr = this.f3402c;
        int iE = e();
        h(iE + 1);
        return objArr[iE - this.f3403d.f()];
    }

    @Override
    public Object previous() {
        c();
        if (e() <= this.f3403d.f()) {
            h(e() - 1);
            return this.f3403d.previous();
        }
        Object[] objArr = this.f3402c;
        h(e() - 1);
        return objArr[e() - this.f3403d.f()];
    }
}
