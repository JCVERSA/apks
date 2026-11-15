package defpackage;

import com.transsion.apiinvoke.common.router.ProcessInfo;
import org.slf4j.Marker;

public class tc8 {
    public x94 a;
    public int b;
    public int[] c;

    public tc8(x94 x94Var, int i) {
        this.a = x94Var;
        this.b = i;
        int[] iArr = new int[i + 1];
        this.c = iArr;
        iArr[i] = 1;
    }

    public static int c(int[] iArr) {
        int length = iArr.length - 1;
        while (length >= 0 && iArr[length] == 0) {
            length--;
        }
        return length;
    }

    public static int i(int[] iArr) {
        int iC = c(iArr);
        if (iC == -1) {
            return 0;
        }
        return iArr[iC];
    }

    public static boolean j(int[] iArr, int[] iArr2) {
        int iC = c(iArr);
        if (iC != c(iArr2)) {
            return false;
        }
        for (int i = 0; i <= iC; i++) {
            if (iArr[i] != iArr2[i]) {
                return false;
            }
        }
        return true;
    }

    public static int[] p(int[] iArr, int i) {
        int iC = c(iArr);
        if (iC == -1) {
            return new int[1];
        }
        int[] iArr2 = new int[iC + i + 1];
        System.arraycopy(iArr, 0, iArr2, i, iC + 1);
        return iArr2;
    }

    public static int[] q(int[] iArr) {
        int iC = c(iArr);
        if (iC == -1) {
            return new int[1];
        }
        int i = iC + 1;
        if (iArr.length == i) {
            return w15.a(iArr);
        }
        int[] iArr2 = new int[i];
        System.arraycopy(iArr, 0, iArr2, 0, i);
        return iArr2;
    }

    public final int[] a(int[] iArr, int[] iArr2) {
        int[] iArr3;
        if (iArr.length < iArr2.length) {
            iArr3 = new int[iArr2.length];
            System.arraycopy(iArr2, 0, iArr3, 0, iArr2.length);
        } else {
            iArr3 = new int[iArr.length];
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            iArr = iArr2;
        }
        for (int length = iArr.length - 1; length >= 0; length--) {
            iArr3[length] = this.a.a(iArr3[length], iArr[length]);
        }
        return iArr3;
    }

    public void b(tc8 tc8Var) {
        this.c = a(this.c, tc8Var.c);
        d();
    }

    public final void d() {
        int length = this.c.length;
        do {
            this.b = length - 1;
            length = this.b;
            if (length < 0) {
                return;
            }
        } while (this.c[length] == 0);
    }

    public int e(int i) {
        int[] iArr = this.c;
        int i2 = this.b;
        int iH = iArr[i2];
        for (int i3 = i2 - 1; i3 >= 0; i3--) {
            iH = this.a.h(iH, i) ^ this.c[i3];
        }
        return iH;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof tc8)) {
            tc8 tc8Var = (tc8) obj;
            if (this.a.equals(tc8Var.a) && this.b == tc8Var.b && j(this.c, tc8Var.c)) {
                return true;
            }
        }
        return false;
    }

    public int f(int i) {
        if (i < 0 || i > this.b) {
            return 0;
        }
        return this.c[i];
    }

    public int g() {
        int[] iArr = this.c;
        int length = iArr.length - 1;
        if (iArr[length] == 0) {
            return -1;
        }
        return length;
    }

    public byte[] h() {
        int i = 8;
        int i2 = 1;
        while (this.a.d() > i) {
            i2++;
            i += 8;
        }
        byte[] bArr = new byte[this.c.length * i2];
        int i3 = 0;
        for (int i4 = 0; i4 < this.c.length; i4++) {
            int i5 = 0;
            while (i5 < i) {
                bArr[i3] = (byte) (this.c[i4] >>> i5);
                i5 += 8;
                i3++;
            }
        }
        return bArr;
    }

    public int hashCode() {
        int iHashCode = this.a.hashCode();
        int i = 0;
        while (true) {
            int[] iArr = this.c;
            if (i >= iArr.length) {
                return iHashCode;
            }
            iHashCode = (iHashCode * 31) + iArr[i];
            i++;
        }
    }

    public tc8 k(tc8 tc8Var) {
        return new tc8(this.a, l(this.c, tc8Var.c));
    }

    public final int[] l(int[] iArr, int[] iArr2) {
        int iC = c(iArr2);
        if (iC == -1) {
            throw new ArithmeticException("Division by zero");
        }
        int length = iArr.length;
        int[] iArrA = new int[length];
        int iF = this.a.f(i(iArr2));
        System.arraycopy(iArr, 0, iArrA, 0, length);
        while (iC <= c(iArrA)) {
            iArrA = a(o(p(iArr2, c(iArrA) - iC), this.a.h(i(iArrA), iF)), iArrA);
        }
        return iArrA;
    }

    public void m(int i) {
        if (!this.a.g(i)) {
            throw new ArithmeticException("Not an element of the finite field this polynomial is defined over.");
        }
        this.c = o(this.c, i);
        d();
    }

    public tc8 n(int i) {
        if (!this.a.g(i)) {
            throw new ArithmeticException("Not an element of the finite field this polynomial is defined over.");
        }
        return new tc8(this.a, o(this.c, i));
    }

    public final int[] o(int[] iArr, int i) {
        int iC = c(iArr);
        if (iC == -1 || i == 0) {
            return new int[1];
        }
        if (i == 1) {
            return w15.a(iArr);
        }
        int[] iArr2 = new int[iC + 1];
        while (iC >= 0) {
            iArr2[iC] = this.a.h(iArr[iC], i);
            iC--;
        }
        return iArr2;
    }

    public String toString() {
        String str = " Polynomial over " + this.a.toString() + ": \n";
        for (int i = 0; i < this.c.length; i++) {
            str = str + this.a.b(this.c[i]) + "Y^" + i + Marker.ANY_NON_NULL_MARKER;
        }
        return str + ProcessInfo.SPLIT_NEW_VERSION;
    }

    public tc8(x94 x94Var, byte[] bArr) {
        this.a = x94Var;
        int i = 8;
        int i2 = 1;
        while (x94Var.d() > i) {
            i2++;
            i += 8;
        }
        if (bArr.length % i2 != 0) {
            throw new IllegalArgumentException(" Error: byte array is not encoded polynomial over given finite field GF2m");
        }
        this.c = new int[bArr.length / i2];
        int i3 = 0;
        int i4 = 0;
        while (true) {
            int[] iArr = this.c;
            if (i3 >= iArr.length) {
                if (iArr.length != 1 && iArr[iArr.length - 1] == 0) {
                    throw new IllegalArgumentException(" Error: byte array is not encoded polynomial over given finite field GF2m");
                }
                d();
                return;
            }
            int i5 = 0;
            while (i5 < i) {
                int[] iArr2 = this.c;
                iArr2[i3] = ((bArr[i4] & 255) << i5) ^ iArr2[i3];
                i5 += 8;
                i4++;
            }
            if (!this.a.g(this.c[i3])) {
                throw new IllegalArgumentException(" Error: byte array is not encoded polynomial over given finite field GF2m");
            }
            i3++;
        }
    }

    public tc8(x94 x94Var, int[] iArr) {
        this.a = x94Var;
        this.c = q(iArr);
        d();
    }

    public tc8(tc8 tc8Var) {
        this.a = tc8Var.a;
        this.b = tc8Var.b;
        this.c = w15.a(tc8Var.c);
    }
}
