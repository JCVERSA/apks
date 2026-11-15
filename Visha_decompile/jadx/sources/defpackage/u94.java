package defpackage;

import java.lang.reflect.Array;

public class u94 extends u86 {
    public int[][] c;
    public int d;

    public u94(int i, int[][] iArr) {
        int[] iArr2 = iArr[0];
        if (iArr2.length != ((i + 31) >> 5)) {
            throw new ArithmeticException("Int array does not match given number of columns.");
        }
        this.b = i;
        this.a = iArr.length;
        this.d = iArr2.length;
        int i2 = i & 31;
        int i3 = i2 == 0 ? -1 : (1 << i2) - 1;
        for (int i4 = 0; i4 < this.a; i4++) {
            int[] iArr3 = iArr[i4];
            int i5 = this.d - 1;
            iArr3[i5] = iArr3[i5] & i3;
        }
        this.c = iArr;
    }

    public byte[] c() {
        int i = (this.b + 7) >>> 3;
        int i2 = this.a;
        int i3 = 8;
        byte[] bArr = new byte[(i * i2) + 8];
        sm5.a(i2, bArr, 0);
        sm5.a(this.b, bArr, 4);
        int i4 = this.b;
        int i5 = i4 >>> 5;
        int i6 = i4 & 31;
        for (int i7 = 0; i7 < this.a; i7++) {
            int i8 = 0;
            while (i8 < i5) {
                sm5.a(this.c[i7][i8], bArr, i3);
                i8++;
                i3 += 4;
            }
            int i9 = 0;
            while (i9 < i6) {
                bArr[i3] = (byte) ((this.c[i7][i5] >>> i9) & 255);
                i9 += 8;
                i3++;
            }
        }
        return bArr;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof u94)) {
            return false;
        }
        u94 u94Var = (u94) obj;
        if (this.a != u94Var.a || this.b != u94Var.b || this.d != u94Var.d) {
            return false;
        }
        for (int i = 0; i < this.a; i++) {
            if (!w15.b(this.c[i], u94Var.c[i])) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        int iY = (((this.a * 31) + this.b) * 31) + this.d;
        for (int i = 0; i < this.a; i++) {
            iY = (iY * 31) + ci.y(this.c[i]);
        }
        return iY;
    }

    public String toString() {
        int i = this.b & 31;
        int i2 = this.d;
        if (i != 0) {
            i2--;
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (int i3 = 0; i3 < this.a; i3++) {
            stringBuffer.append(i3 + ": ");
            for (int i4 = 0; i4 < i2; i4++) {
                int i5 = this.c[i3][i4];
                for (int i6 = 0; i6 < 32; i6++) {
                    if (((i5 >>> i6) & 1) == 0) {
                        stringBuffer.append('0');
                    } else {
                        stringBuffer.append('1');
                    }
                }
                stringBuffer.append(' ');
            }
            int i7 = this.c[i3][this.d - 1];
            for (int i8 = 0; i8 < i; i8++) {
                if (((i7 >>> i8) & 1) == 0) {
                    stringBuffer.append('0');
                } else {
                    stringBuffer.append('1');
                }
            }
            stringBuffer.append('\n');
        }
        return stringBuffer.toString();
    }

    public u94(u94 u94Var) {
        this.b = u94Var.a();
        this.a = u94Var.b();
        this.d = u94Var.d;
        this.c = new int[u94Var.c.length][];
        int i = 0;
        while (true) {
            int[][] iArr = this.c;
            if (i >= iArr.length) {
                return;
            }
            iArr[i] = w15.a(u94Var.c[i]);
            i++;
        }
    }

    public u94(byte[] bArr) {
        if (bArr.length < 9) {
            throw new ArithmeticException("given array is not an encoded matrix over GF(2)");
        }
        this.a = sm5.e(bArr, 0);
        int iE = sm5.e(bArr, 4);
        this.b = iE;
        int i = this.a;
        int i2 = ((iE + 7) >>> 3) * i;
        if (i > 0) {
            int i3 = 8;
            if (i2 == bArr.length - 8) {
                int i4 = (iE + 31) >>> 5;
                this.d = i4;
                this.c = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i, i4);
                int i5 = this.b;
                int i6 = i5 >> 5;
                int i7 = i5 & 31;
                for (int i8 = 0; i8 < this.a; i8++) {
                    int i9 = 0;
                    while (i9 < i6) {
                        this.c[i8][i9] = sm5.e(bArr, i3);
                        i9++;
                        i3 += 4;
                    }
                    int i10 = 0;
                    while (i10 < i7) {
                        int[] iArr = this.c[i8];
                        iArr[i6] = ((bArr[i3] & 255) << i10) ^ iArr[i6];
                        i10 += 8;
                        i3++;
                    }
                }
                return;
            }
        }
        throw new ArithmeticException("given array is not an encoded matrix over GF(2)");
    }
}
