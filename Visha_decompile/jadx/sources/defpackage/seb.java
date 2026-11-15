package defpackage;

import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class seb extends bf8 {
    public long[] a;
    public int b;

    public seb(long[] jArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(jArr);
    }

    @Override
    public Object a() {
        return reb.b(f());
    }

    @Override
    public void b(int i) {
        if (reb.q(this.a) < i) {
            long[] jArr = this.a;
            long[] jArrCopyOf = Arrays.copyOf(jArr, wn8.d(i, reb.q(jArr) * 2));
            y45.i(jArrCopyOf, "copyOf(this, newSize)");
            this.a = reb.f(jArrCopyOf);
        }
    }

    @Override
    public int d() {
        return this.b;
    }

    public final void e(long j) {
        bf8.c(this, 0, 1, null);
        long[] jArr = this.a;
        int iD = d();
        this.b = iD + 1;
        reb.u(jArr, iD, j);
    }

    public long[] f() {
        long[] jArrCopyOf = Arrays.copyOf(this.a, d());
        y45.i(jArrCopyOf, "copyOf(this, newSize)");
        return reb.f(jArrCopyOf);
    }

    public seb(long[] jArr) {
        y45.j(jArr, "bufferWithData");
        this.a = jArr;
        this.b = reb.q(jArr);
        b(10);
    }
}
