package defpackage;

import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class beb extends bf8 {
    public byte[] a;
    public int b;

    public beb(byte[] bArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(bArr);
    }

    @Override
    public Object a() {
        return aeb.b(f());
    }

    @Override
    public void b(int i) {
        if (aeb.q(this.a) < i) {
            byte[] bArr = this.a;
            byte[] bArrCopyOf = Arrays.copyOf(bArr, wn8.d(i, aeb.q(bArr) * 2));
            y45.i(bArrCopyOf, "copyOf(this, newSize)");
            this.a = aeb.f(bArrCopyOf);
        }
    }

    @Override
    public int d() {
        return this.b;
    }

    public final void e(byte b) {
        bf8.c(this, 0, 1, null);
        byte[] bArr = this.a;
        int iD = d();
        this.b = iD + 1;
        aeb.u(bArr, iD, b);
    }

    public byte[] f() {
        byte[] bArrCopyOf = Arrays.copyOf(this.a, d());
        y45.i(bArrCopyOf, "copyOf(this, newSize)");
        return aeb.f(bArrCopyOf);
    }

    public beb(byte[] bArr) {
        y45.j(bArr, "bufferWithData");
        this.a = bArr;
        this.b = aeb.q(bArr);
        b(10);
    }
}
