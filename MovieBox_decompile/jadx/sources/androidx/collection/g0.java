package androidx.collection;

import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class g0 extends t {

    private int f1970f;

    public g0() {
        this(0, 1, null);
    }

    private final void f() {
        this.f1970f = v0.c(c()) - this.f2028e;
    }

    private final void g(int i10) {
        long[] jArr;
        if (i10 == 0) {
            jArr = v0.f2044a;
        } else {
            jArr = new long[((i10 + 15) & (-8)) >> 3];
            ArraysKt.x(jArr, -9187201950435737472L, 0, 0, 6, null);
        }
        this.f2024a = jArr;
        int i11 = i10 >> 3;
        long j10 = 255 << ((i10 & 7) << 3);
        jArr[i11] = (jArr[i11] & (~j10)) | j10;
        f();
    }

    private final void h(int i10) {
        int iMax = i10 > 0 ? Math.max(7, v0.f(i10)) : 0;
        this.f2027d = iMax;
        g(iMax);
        this.f2025b = new long[iMax];
        this.f2026c = new int[iMax];
    }

    public g0(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 6 : i10);
    }

    public g0(int i10) {
        super(null);
        if (!(i10 >= 0)) {
            n.d.a("Capacity must be a positive value.");
        }
        h(v0.g(i10));
    }
}
