package defpackage;

import java.util.Arrays;

public class jj4 {
    public final float[] a;
    public final int[] b;

    public jj4(float[] fArr, int[] iArr) {
        this.a = fArr;
        this.b = iArr;
    }

    public final void a(jj4 jj4Var) {
        int i = 0;
        while (true) {
            int[] iArr = jj4Var.b;
            if (i >= iArr.length) {
                return;
            }
            this.a[i] = jj4Var.a[i];
            this.b[i] = iArr[i];
            i++;
        }
    }

    public jj4 b(float[] fArr) {
        int[] iArr = new int[fArr.length];
        for (int i = 0; i < fArr.length; i++) {
            iArr[i] = c(fArr[i]);
        }
        return new jj4(fArr, iArr);
    }

    public final int c(float f) {
        int iBinarySearch = Arrays.binarySearch(this.a, f);
        if (iBinarySearch >= 0) {
            return this.b[iBinarySearch];
        }
        int i = -(iBinarySearch + 1);
        if (i == 0) {
            return this.b[0];
        }
        int[] iArr = this.b;
        if (i == iArr.length - 1) {
            return iArr[iArr.length - 1];
        }
        float[] fArr = this.a;
        int i2 = i - 1;
        float f2 = fArr[i2];
        return dd4.c((f - f2) / (fArr[i] - f2), iArr[i2], iArr[i]);
    }

    public int[] d() {
        return this.b;
    }

    public float[] e() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        jj4 jj4Var = (jj4) obj;
        return Arrays.equals(this.a, jj4Var.a) && Arrays.equals(this.b, jj4Var.b);
    }

    public int f() {
        return this.b.length;
    }

    public void g(jj4 jj4Var, jj4 jj4Var2, float f) {
        int[] iArr;
        if (jj4Var.equals(jj4Var2)) {
            a(jj4Var);
            return;
        }
        if (f <= 0.0f) {
            a(jj4Var);
            return;
        }
        if (f >= 1.0f) {
            a(jj4Var2);
            return;
        }
        if (jj4Var.b.length != jj4Var2.b.length) {
            throw new IllegalArgumentException("Cannot interpolate between gradients. Lengths vary (" + jj4Var.b.length + " vs " + jj4Var2.b.length + ")");
        }
        int i = 0;
        while (true) {
            iArr = jj4Var.b;
            if (i >= iArr.length) {
                break;
            }
            this.a[i] = xp6.i(jj4Var.a[i], jj4Var2.a[i], f);
            this.b[i] = dd4.c(f, jj4Var.b[i], jj4Var2.b[i]);
            i++;
        }
        int length = iArr.length;
        while (true) {
            float[] fArr = this.a;
            if (length >= fArr.length) {
                return;
            }
            int[] iArr2 = jj4Var.b;
            fArr[length] = fArr[iArr2.length - 1];
            int[] iArr3 = this.b;
            iArr3[length] = iArr3[iArr2.length - 1];
            length++;
        }
    }

    public int hashCode() {
        return (Arrays.hashCode(this.a) * 31) + Arrays.hashCode(this.b);
    }
}
