package defpackage;

import java.util.Arrays;

public final class uy3 extends bf8 {
    public float[] a;
    public int b;

    public uy3(float[] fArr) {
        y45.j(fArr, "bufferWithData");
        this.a = fArr;
        this.b = fArr.length;
        b(10);
    }

    @Override
    public void b(int i) {
        float[] fArr = this.a;
        if (fArr.length < i) {
            float[] fArrCopyOf = Arrays.copyOf(fArr, wn8.d(i, fArr.length * 2));
            y45.i(fArrCopyOf, "copyOf(this, newSize)");
            this.a = fArrCopyOf;
        }
    }

    @Override
    public int d() {
        return this.b;
    }

    public final void e(float f) {
        bf8.c(this, 0, 1, null);
        float[] fArr = this.a;
        int iD = d();
        this.b = iD + 1;
        fArr[iD] = f;
    }

    @Override
    public float[] a() {
        float[] fArrCopyOf = Arrays.copyOf(this.a, d());
        y45.i(fArrCopyOf, "copyOf(this, newSize)");
        return fArrCopyOf;
    }
}
