package defpackage;

import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class meb extends bf8 {
    public int[] a;
    public int b;

    public meb(int[] iArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(iArr);
    }

    @Override
    public Object a() {
        return leb.b(f());
    }

    @Override
    public void b(int i) {
        if (leb.q(this.a) < i) {
            int[] iArr = this.a;
            int[] iArrCopyOf = Arrays.copyOf(iArr, wn8.d(i, leb.q(iArr) * 2));
            y45.i(iArrCopyOf, "copyOf(this, newSize)");
            this.a = leb.f(iArrCopyOf);
        }
    }

    @Override
    public int d() {
        return this.b;
    }

    public final void e(int i) {
        bf8.c(this, 0, 1, null);
        int[] iArr = this.a;
        int iD = d();
        this.b = iD + 1;
        leb.u(iArr, iD, i);
    }

    public int[] f() {
        int[] iArrCopyOf = Arrays.copyOf(this.a, d());
        y45.i(iArrCopyOf, "copyOf(this, newSize)");
        return leb.f(iArrCopyOf);
    }

    public meb(int[] iArr) {
        y45.j(iArr, "bufferWithData");
        this.a = iArr;
        this.b = leb.q(iArr);
        b(10);
    }
}
