package wd;

final class c {

    private final b f74268a;

    private final int[] f74269b;

    c(b bVar, int[] iArr) {
        if (iArr.length == 0) {
            throw new IllegalArgumentException();
        }
        this.f74268a = bVar;
        int length = iArr.length;
        int i10 = 1;
        if (length <= 1 || iArr[0] != 0) {
            this.f74269b = iArr;
            return;
        }
        while (i10 < length && iArr[i10] == 0) {
            i10++;
        }
        if (i10 == length) {
            this.f74269b = new int[]{0};
            return;
        }
        int[] iArr2 = new int[length - i10];
        this.f74269b = iArr2;
        System.arraycopy(iArr, i10, iArr2, 0, iArr2.length);
    }

    c a(c cVar) {
        if (!this.f74268a.equals(cVar.f74268a)) {
            throw new IllegalArgumentException("ModulusPolys do not have same ModulusGF field");
        }
        if (e()) {
            return cVar;
        }
        if (cVar.e()) {
            return this;
        }
        int[] iArr = this.f74269b;
        int[] iArr2 = cVar.f74269b;
        if (iArr.length <= iArr2.length) {
            iArr = iArr2;
            iArr2 = iArr;
        }
        int[] iArr3 = new int[iArr.length];
        int length = iArr.length - iArr2.length;
        System.arraycopy(iArr, 0, iArr3, 0, length);
        for (int i10 = length; i10 < iArr.length; i10++) {
            iArr3[i10] = this.f74268a.a(iArr2[i10 - length], iArr[i10]);
        }
        return new c(this.f74268a, iArr3);
    }

    int b(int i10) {
        if (i10 == 0) {
            return c(0);
        }
        if (i10 == 1) {
            int iA = 0;
            for (int i11 : this.f74269b) {
                iA = this.f74268a.a(iA, i11);
            }
            return iA;
        }
        int[] iArr = this.f74269b;
        int iA2 = iArr[0];
        int length = iArr.length;
        for (int i12 = 1; i12 < length; i12++) {
            b bVar = this.f74268a;
            iA2 = bVar.a(bVar.i(i10, iA2), this.f74269b[i12]);
        }
        return iA2;
    }

    int c(int i10) {
        int[] iArr = this.f74269b;
        return iArr[(iArr.length - 1) - i10];
    }

    int d() {
        return this.f74269b.length - 1;
    }

    boolean e() {
        return this.f74269b[0] == 0;
    }

    c f(int i10) {
        if (i10 == 0) {
            return this.f74268a.f();
        }
        if (i10 == 1) {
            return this;
        }
        int length = this.f74269b.length;
        int[] iArr = new int[length];
        for (int i11 = 0; i11 < length; i11++) {
            iArr[i11] = this.f74268a.i(this.f74269b[i11], i10);
        }
        return new c(this.f74268a, iArr);
    }

    c g(c cVar) {
        if (!this.f74268a.equals(cVar.f74268a)) {
            throw new IllegalArgumentException("ModulusPolys do not have same ModulusGF field");
        }
        if (e() || cVar.e()) {
            return this.f74268a.f();
        }
        int[] iArr = this.f74269b;
        int length = iArr.length;
        int[] iArr2 = cVar.f74269b;
        int length2 = iArr2.length;
        int[] iArr3 = new int[(length + length2) - 1];
        for (int i10 = 0; i10 < length; i10++) {
            int i11 = iArr[i10];
            for (int i12 = 0; i12 < length2; i12++) {
                int i13 = i10 + i12;
                b bVar = this.f74268a;
                iArr3[i13] = bVar.a(iArr3[i13], bVar.i(i11, iArr2[i12]));
            }
        }
        return new c(this.f74268a, iArr3);
    }

    c h(int i10, int i11) {
        if (i10 < 0) {
            throw new IllegalArgumentException();
        }
        if (i11 == 0) {
            return this.f74268a.f();
        }
        int length = this.f74269b.length;
        int[] iArr = new int[i10 + length];
        for (int i12 = 0; i12 < length; i12++) {
            iArr[i12] = this.f74268a.i(this.f74269b[i12], i11);
        }
        return new c(this.f74268a, iArr);
    }

    c i() {
        int length = this.f74269b.length;
        int[] iArr = new int[length];
        for (int i10 = 0; i10 < length; i10++) {
            iArr[i10] = this.f74268a.j(0, this.f74269b[i10]);
        }
        return new c(this.f74268a, iArr);
    }

    c j(c cVar) {
        if (this.f74268a.equals(cVar.f74268a)) {
            return cVar.e() ? this : a(cVar.i());
        }
        throw new IllegalArgumentException("ModulusPolys do not have same ModulusGF field");
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(d() * 8);
        for (int iD = d(); iD >= 0; iD--) {
            int iC = c(iD);
            if (iC != 0) {
                if (iC < 0) {
                    sb2.append(" - ");
                    iC = -iC;
                } else if (sb2.length() > 0) {
                    sb2.append(" + ");
                }
                if (iD == 0 || iC != 1) {
                    sb2.append(iC);
                }
                if (iD != 0) {
                    if (iD == 1) {
                        sb2.append('x');
                    } else {
                        sb2.append("x^");
                        sb2.append(iD);
                    }
                }
            }
        }
        return sb2.toString();
    }
}
