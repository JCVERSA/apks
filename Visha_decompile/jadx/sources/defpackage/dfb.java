package defpackage;

import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class dfb extends bf8 {
    public short[] a;
    public int b;

    public dfb(short[] sArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(sArr);
    }

    @Override
    public Object a() {
        return cfb.b(f());
    }

    @Override
    public void b(int i) {
        if (cfb.q(this.a) < i) {
            short[] sArr = this.a;
            short[] sArrCopyOf = Arrays.copyOf(sArr, wn8.d(i, cfb.q(sArr) * 2));
            y45.i(sArrCopyOf, "copyOf(this, newSize)");
            this.a = cfb.f(sArrCopyOf);
        }
    }

    @Override
    public int d() {
        return this.b;
    }

    public final void e(short s) {
        bf8.c(this, 0, 1, null);
        short[] sArr = this.a;
        int iD = d();
        this.b = iD + 1;
        cfb.u(sArr, iD, s);
    }

    public short[] f() {
        short[] sArrCopyOf = Arrays.copyOf(this.a, d());
        y45.i(sArrCopyOf, "copyOf(this, newSize)");
        return cfb.f(sArrCopyOf);
    }

    public dfb(short[] sArr) {
        y45.j(sArr, "bufferWithData");
        this.a = sArr;
        this.b = cfb.q(sArr);
        b(10);
    }
}
