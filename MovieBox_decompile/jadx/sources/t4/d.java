package t4;

import java.util.Arrays;

public class d {

    private final float[] f72476a;

    private final int[] f72477b;

    public d(float[] fArr, int[] iArr) {
        this.f72476a = fArr;
        this.f72477b = iArr;
    }

    private void a(d dVar) {
        int i10 = 0;
        while (true) {
            int[] iArr = dVar.f72477b;
            if (i10 >= iArr.length) {
                return;
            }
            this.f72476a[i10] = dVar.f72476a[i10];
            this.f72477b[i10] = iArr[i10];
            i10++;
        }
    }

    private int c(float f10) {
        int iBinarySearch = Arrays.binarySearch(this.f72476a, f10);
        if (iBinarySearch >= 0) {
            return this.f72477b[iBinarySearch];
        }
        int i10 = -(iBinarySearch + 1);
        if (i10 == 0) {
            return this.f72477b[0];
        }
        int[] iArr = this.f72477b;
        if (i10 == iArr.length - 1) {
            return iArr[iArr.length - 1];
        }
        float[] fArr = this.f72476a;
        int i11 = i10 - 1;
        float f11 = fArr[i11];
        return x4.d.c((f10 - f11) / (fArr[i10] - f11), iArr[i11], iArr[i10]);
    }

    public d b(float[] fArr) {
        int[] iArr = new int[fArr.length];
        for (int i10 = 0; i10 < fArr.length; i10++) {
            iArr[i10] = c(fArr[i10]);
        }
        return new d(fArr, iArr);
    }

    public int[] d() {
        return this.f72477b;
    }

    public float[] e() {
        return this.f72476a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        return Arrays.equals(this.f72476a, dVar.f72476a) && Arrays.equals(this.f72477b, dVar.f72477b);
    }

    public int f() {
        return this.f72477b.length;
    }

    public void g(d dVar, d dVar2, float f10) {
        int[] iArr;
        if (dVar.equals(dVar2)) {
            a(dVar);
            return;
        }
        if (f10 <= 0.0f) {
            a(dVar);
            return;
        }
        if (f10 >= 1.0f) {
            a(dVar2);
            return;
        }
        if (dVar.f72477b.length != dVar2.f72477b.length) {
            throw new IllegalArgumentException("Cannot interpolate between gradients. Lengths vary (" + dVar.f72477b.length + " vs " + dVar2.f72477b.length + ")");
        }
        int i10 = 0;
        while (true) {
            iArr = dVar.f72477b;
            if (i10 >= iArr.length) {
                break;
            }
            this.f72476a[i10] = x4.k.i(dVar.f72476a[i10], dVar2.f72476a[i10], f10);
            this.f72477b[i10] = x4.d.c(f10, dVar.f72477b[i10], dVar2.f72477b[i10]);
            i10++;
        }
        int length = iArr.length;
        while (true) {
            float[] fArr = this.f72476a;
            if (length >= fArr.length) {
                return;
            }
            int[] iArr2 = dVar.f72477b;
            fArr[length] = fArr[iArr2.length - 1];
            int[] iArr3 = this.f72477b;
            iArr3[length] = iArr3[iArr2.length - 1];
            length++;
        }
    }

    public int hashCode() {
        return (Arrays.hashCode(this.f72476a) * 31) + Arrays.hashCode(this.f72477b);
    }
}
