package kd;

import java.util.Arrays;

public final class b implements Cloneable {

    private int f63925a;

    private int f63926b;

    private int f63927c;

    private int[] f63928d;

    public b(int i10) {
        this(i10, i10);
    }

    private String a(String str, String str2, String str3) {
        StringBuilder sb2 = new StringBuilder(this.f63926b * (this.f63925a + 1));
        for (int i10 = 0; i10 < this.f63926b; i10++) {
            for (int i11 = 0; i11 < this.f63925a; i11++) {
                sb2.append(h(i11, i10) ? str : str2);
            }
            sb2.append(str3);
        }
        return sb2.toString();
    }

    public void b() {
        int length = this.f63928d.length;
        for (int i10 = 0; i10 < length; i10++) {
            this.f63928d[i10] = 0;
        }
    }

    public b clone() {
        return new b(this.f63925a, this.f63926b, this.f63927c, (int[]) this.f63928d.clone());
    }

    public void e() {
        int length = this.f63928d.length;
        for (int i10 = 0; i10 < length; i10++) {
            int[] iArr = this.f63928d;
            iArr[i10] = ~iArr[i10];
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f63925a == bVar.f63925a && this.f63926b == bVar.f63926b && this.f63927c == bVar.f63927c && Arrays.equals(this.f63928d, bVar.f63928d);
    }

    public void g(int i10, int i11) {
        int i12 = (i11 * this.f63927c) + (i10 / 32);
        int[] iArr = this.f63928d;
        iArr[i12] = (1 << (i10 & 31)) ^ iArr[i12];
    }

    public boolean h(int i10, int i11) {
        return ((this.f63928d[(i11 * this.f63927c) + (i10 / 32)] >>> (i10 & 31)) & 1) != 0;
    }

    public int hashCode() {
        int i10 = this.f63925a;
        return (((((((i10 * 31) + i10) * 31) + this.f63926b) * 31) + this.f63927c) * 31) + Arrays.hashCode(this.f63928d);
    }

    public int[] i() {
        int length = this.f63928d.length - 1;
        while (length >= 0 && this.f63928d[length] == 0) {
            length--;
        }
        if (length < 0) {
            return null;
        }
        int i10 = this.f63927c;
        int i11 = length / i10;
        int i12 = (length % i10) * 32;
        int i13 = 31;
        while ((this.f63928d[length] >>> i13) == 0) {
            i13--;
        }
        return new int[]{i12 + i13, i11};
    }

    public int[] j() {
        int i10 = this.f63925a;
        int i11 = this.f63926b;
        int i12 = -1;
        int i13 = -1;
        for (int i14 = 0; i14 < this.f63926b; i14++) {
            int i15 = 0;
            while (true) {
                int i16 = this.f63927c;
                if (i15 < i16) {
                    int i17 = this.f63928d[(i16 * i14) + i15];
                    if (i17 != 0) {
                        if (i14 < i11) {
                            i11 = i14;
                        }
                        if (i14 > i13) {
                            i13 = i14;
                        }
                        int i18 = i15 * 32;
                        if (i18 < i10) {
                            int i19 = 0;
                            while ((i17 << (31 - i19)) == 0) {
                                i19++;
                            }
                            int i20 = i19 + i18;
                            if (i20 < i10) {
                                i10 = i20;
                            }
                        }
                        if (i18 + 31 > i12) {
                            int i21 = 31;
                            while ((i17 >>> i21) == 0) {
                                i21--;
                            }
                            int i22 = i18 + i21;
                            if (i22 > i12) {
                                i12 = i22;
                            }
                        }
                    }
                    i15++;
                }
            }
        }
        if (i12 < i10 || i13 < i11) {
            return null;
        }
        return new int[]{i10, i11, (i12 - i10) + 1, (i13 - i11) + 1};
    }

    public int k() {
        return this.f63926b;
    }

    public a l(int i10, a aVar) {
        if (aVar == null || aVar.m() < this.f63925a) {
            aVar = new a(this.f63925a);
        } else {
            aVar.e();
        }
        int i11 = i10 * this.f63927c;
        for (int i12 = 0; i12 < this.f63927c; i12++) {
            aVar.s(i12 * 32, this.f63928d[i11 + i12]);
        }
        return aVar;
    }

    public int[] m() {
        int[] iArr;
        int i10 = 0;
        int i11 = 0;
        while (true) {
            iArr = this.f63928d;
            if (i11 >= iArr.length || iArr[i11] != 0) {
                break;
            }
            i11++;
        }
        if (i11 == iArr.length) {
            return null;
        }
        int i12 = this.f63927c;
        int i13 = i11 / i12;
        int i14 = (i11 % i12) * 32;
        while ((iArr[i11] << (31 - i10)) == 0) {
            i10++;
        }
        return new int[]{i14 + i10, i13};
    }

    public int n() {
        return this.f63925a;
    }

    public void o(int i10) {
        int i11 = i10 % 360;
        if (i11 != 0) {
            if (i11 == 90) {
                q();
                return;
            }
            if (i11 == 180) {
                p();
            } else {
                if (i11 != 270) {
                    throw new IllegalArgumentException("degrees must be a multiple of 0, 90, 180, or 270");
                }
                q();
                p();
            }
        }
    }

    public void p() {
        a aVar = new a(this.f63925a);
        a aVar2 = new a(this.f63925a);
        int i10 = (this.f63926b + 1) / 2;
        for (int i11 = 0; i11 < i10; i11++) {
            aVar = l(i11, aVar);
            int i12 = (this.f63926b - 1) - i11;
            aVar2 = l(i12, aVar2);
            aVar.q();
            aVar2.q();
            t(i11, aVar2);
            t(i12, aVar);
        }
    }

    public void q() {
        int i10 = this.f63926b;
        int i11 = this.f63925a;
        int i12 = (i10 + 31) / 32;
        int[] iArr = new int[i12 * i11];
        for (int i13 = 0; i13 < this.f63926b; i13++) {
            for (int i14 = 0; i14 < this.f63925a; i14++) {
                if (((this.f63928d[(this.f63927c * i13) + (i14 / 32)] >>> (i14 & 31)) & 1) != 0) {
                    int i15 = (((i11 - 1) - i14) * i12) + (i13 / 32);
                    iArr[i15] = (1 << (i13 & 31)) | iArr[i15];
                }
            }
        }
        this.f63925a = i10;
        this.f63926b = i11;
        this.f63927c = i12;
        this.f63928d = iArr;
    }

    public void r(int i10, int i11) {
        int i12 = (i11 * this.f63927c) + (i10 / 32);
        int[] iArr = this.f63928d;
        iArr[i12] = (1 << (i10 & 31)) | iArr[i12];
    }

    public void s(int i10, int i11, int i12, int i13) {
        if (i11 < 0 || i10 < 0) {
            throw new IllegalArgumentException("Left and top must be nonnegative");
        }
        if (i13 < 1 || i12 < 1) {
            throw new IllegalArgumentException("Height and width must be at least 1");
        }
        int i14 = i12 + i10;
        int i15 = i13 + i11;
        if (i15 > this.f63926b || i14 > this.f63925a) {
            throw new IllegalArgumentException("The region must fit inside the matrix");
        }
        while (i11 < i15) {
            int i16 = this.f63927c * i11;
            for (int i17 = i10; i17 < i14; i17++) {
                int[] iArr = this.f63928d;
                int i18 = (i17 / 32) + i16;
                iArr[i18] = iArr[i18] | (1 << (i17 & 31));
            }
            i11++;
        }
    }

    public void t(int i10, a aVar) {
        int[] iArrJ = aVar.j();
        int[] iArr = this.f63928d;
        int i11 = this.f63927c;
        System.arraycopy(iArrJ, 0, iArr, i10 * i11, i11);
    }

    public String toString() {
        return u("X ", "  ");
    }

    public String u(String str, String str2) {
        return a(str, str2, "\n");
    }

    public b(int i10, int i11) {
        if (i10 < 1 || i11 < 1) {
            throw new IllegalArgumentException("Both dimensions must be greater than 0");
        }
        this.f63925a = i10;
        this.f63926b = i11;
        int i12 = (i10 + 31) / 32;
        this.f63927c = i12;
        this.f63928d = new int[i12 * i11];
    }

    private b(int i10, int i11, int i12, int[] iArr) {
        this.f63925a = i10;
        this.f63926b = i11;
        this.f63927c = i12;
        this.f63928d = iArr;
    }
}
