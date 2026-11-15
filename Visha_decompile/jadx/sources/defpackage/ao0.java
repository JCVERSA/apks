package defpackage;

import java.util.Arrays;

public final class ao0 extends bf8 {
    public byte[] a;
    public int b;

    public ao0(byte[] bArr) {
        y45.j(bArr, "bufferWithData");
        this.a = bArr;
        this.b = bArr.length;
        b(10);
    }

    @Override
    public void b(int i) {
        byte[] bArr = this.a;
        if (bArr.length < i) {
            byte[] bArrCopyOf = Arrays.copyOf(bArr, wn8.d(i, bArr.length * 2));
            y45.i(bArrCopyOf, "copyOf(this, newSize)");
            this.a = bArrCopyOf;
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
        bArr[iD] = b;
    }

    @Override
    public byte[] a() {
        byte[] bArrCopyOf = Arrays.copyOf(this.a, d());
        y45.i(bArrCopyOf, "copyOf(this, newSize)");
        return bArrCopyOf;
    }
}
