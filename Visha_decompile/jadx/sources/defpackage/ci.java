package defpackage;

import java.util.Arrays;
import java.util.Iterator;
import java.util.NoSuchElementException;

public abstract class ci {

    public static class a implements Iterator {
        public final Object[] b;
        public int c = 0;

        public a(Object[] objArr) {
            this.b = objArr;
        }

        @Override
        public boolean hasNext() {
            return this.c < this.b.length;
        }

        @Override
        public Object next() {
            int i = this.c;
            Object[] objArr = this.b;
            if (i != objArr.length) {
                this.c = i + 1;
                return objArr[i];
            }
            throw new NoSuchElementException("Out of elements: " + this.c);
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Cannot remove element from an Array.");
        }
    }

    public static int A(long[] jArr, int i, int i2) {
        if (jArr == null) {
            return 0;
        }
        int i3 = i2 + 1;
        while (true) {
            i2--;
            if (i2 < 0) {
                return i3;
            }
            long j = jArr[i + i2];
            i3 = (((i3 * 257) ^ ((int) j)) * 257) ^ ((int) (j >>> 32));
        }
    }

    public static int B(short[] sArr) {
        if (sArr == null) {
            return 0;
        }
        int length = sArr.length;
        int i = length + 1;
        while (true) {
            length--;
            if (length < 0) {
                return i;
            }
            i = (i * 257) ^ (sArr[length] & 255);
        }
    }

    public static boolean C(Object[] objArr) {
        if (objArr == null) {
            return true;
        }
        for (Object obj : objArr) {
            if (obj == null) {
                return true;
            }
        }
        return false;
    }

    public static byte[] D(byte[] bArr, byte b) {
        if (bArr == null) {
            return new byte[]{b};
        }
        int length = bArr.length;
        byte[] bArr2 = new byte[length + 1];
        System.arraycopy(bArr, 0, bArr2, 1, length);
        bArr2[0] = b;
        return bArr2;
    }

    public static byte[] E(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        int i = 0;
        while (true) {
            length--;
            if (length < 0) {
                return bArr2;
            }
            bArr2[length] = bArr[i];
            i++;
        }
    }

    public static byte[] F(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        int length = bArr.length - 1;
        for (int i = 0; i < length; i++) {
            byte b = bArr[i];
            bArr[i] = bArr[length];
            bArr[length] = b;
            length--;
        }
        return bArr;
    }

    public static int[] G(int[] iArr) {
        if (iArr == null) {
            return null;
        }
        int length = iArr.length - 1;
        for (int i = 0; i < length; i++) {
            int i2 = iArr[i];
            iArr[i] = iArr[length];
            iArr[length] = i2;
            length--;
        }
        return iArr;
    }

    public static boolean a(byte[] bArr, int i, int i2, byte[] bArr2, int i3, int i4) {
        int i5 = i2 - i;
        if (i5 != i4 - i3) {
            return false;
        }
        for (int i6 = 0; i6 < i5; i6++) {
            if (bArr[i + i6] != bArr2[i3 + i6]) {
                return false;
            }
        }
        return true;
    }

    public static boolean b(byte[] bArr, byte[] bArr2) {
        return Arrays.equals(bArr, bArr2);
    }

    public static boolean c(char[] cArr, char[] cArr2) {
        return Arrays.equals(cArr, cArr2);
    }

    public static boolean d(int[] iArr, int[] iArr2) {
        return Arrays.equals(iArr, iArr2);
    }

    public static boolean e(short[] sArr, short[] sArr2) {
        return Arrays.equals(sArr, sArr2);
    }

    public static byte[] f(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return (byte[]) bArr.clone();
    }

    public static char[] g(char[] cArr) {
        if (cArr == null) {
            return null;
        }
        return (char[]) cArr.clone();
    }

    public static int[] h(int[] iArr) {
        if (iArr == null) {
            return null;
        }
        return (int[]) iArr.clone();
    }

    public static long[] i(long[] jArr) {
        if (jArr == null) {
            return null;
        }
        return (long[]) jArr.clone();
    }

    public static short[] j(short[] sArr) {
        if (sArr == null) {
            return null;
        }
        return (short[]) sArr.clone();
    }

    public static byte[] k(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            return f(bArr2);
        }
        if (bArr2 == null) {
            return f(bArr);
        }
        byte[] bArr3 = new byte[bArr.length + bArr2.length];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        return bArr3;
    }

    public static byte[] l(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        if (bArr == null) {
            return k(bArr2, bArr3);
        }
        if (bArr2 == null) {
            return k(bArr, bArr3);
        }
        if (bArr3 == null) {
            return k(bArr, bArr2);
        }
        byte[] bArr4 = new byte[bArr.length + bArr2.length + bArr3.length];
        System.arraycopy(bArr, 0, bArr4, 0, bArr.length);
        int length = bArr.length;
        System.arraycopy(bArr2, 0, bArr4, length, bArr2.length);
        System.arraycopy(bArr3, 0, bArr4, length + bArr2.length, bArr3.length);
        return bArr4;
    }

    public static byte[] m(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        if (bArr == null) {
            return l(bArr2, bArr3, bArr4);
        }
        if (bArr2 == null) {
            return l(bArr, bArr3, bArr4);
        }
        if (bArr3 == null) {
            return l(bArr, bArr2, bArr4);
        }
        if (bArr4 == null) {
            return l(bArr, bArr2, bArr3);
        }
        byte[] bArr5 = new byte[bArr.length + bArr2.length + bArr3.length + bArr4.length];
        System.arraycopy(bArr, 0, bArr5, 0, bArr.length);
        int length = bArr.length;
        System.arraycopy(bArr2, 0, bArr5, length, bArr2.length);
        int length2 = length + bArr2.length;
        System.arraycopy(bArr3, 0, bArr5, length2, bArr3.length);
        System.arraycopy(bArr4, 0, bArr5, length2 + bArr3.length, bArr4.length);
        return bArr5;
    }

    public static byte[] n(byte[][] bArr) {
        int length = 0;
        for (int i = 0; i != bArr.length; i++) {
            length += bArr[i].length;
        }
        byte[] bArr2 = new byte[length];
        int length2 = 0;
        for (int i2 = 0; i2 != bArr.length; i2++) {
            byte[] bArr3 = bArr[i2];
            System.arraycopy(bArr3, 0, bArr2, length2, bArr3.length);
            length2 += bArr[i2].length;
        }
        return bArr2;
    }

    public static boolean o(byte[] bArr, byte[] bArr2) {
        if (bArr == null || bArr2 == null) {
            return false;
        }
        if (bArr == bArr2) {
            return true;
        }
        int length = bArr.length < bArr2.length ? bArr.length : bArr2.length;
        int length2 = bArr.length ^ bArr2.length;
        for (int i = 0; i != length; i++) {
            length2 |= bArr[i] ^ bArr2[i];
        }
        while (length < bArr2.length) {
            byte b = bArr2[length];
            length2 |= b ^ (~b);
            length++;
        }
        return length2 == 0;
    }

    public static byte[] p(byte[] bArr, int i) {
        byte[] bArr2 = new byte[i];
        System.arraycopy(bArr, 0, bArr2, 0, Math.min(bArr.length, i));
        return bArr2;
    }

    public static byte[] q(byte[] bArr, int i, int i2) {
        int iU = u(i, i2);
        byte[] bArr2 = new byte[iU];
        System.arraycopy(bArr, i, bArr2, 0, Math.min(bArr.length - i, iU));
        return bArr2;
    }

    public static int[] r(int[] iArr, int i, int i2) {
        int iU = u(i, i2);
        int[] iArr2 = new int[iU];
        System.arraycopy(iArr, i, iArr2, 0, Math.min(iArr.length - i, iU));
        return iArr2;
    }

    public static void s(byte[] bArr, byte b) {
        Arrays.fill(bArr, b);
    }

    public static void t(char[] cArr, char c) {
        Arrays.fill(cArr, c);
    }

    public static int u(int i, int i2) {
        int i3 = i2 - i;
        if (i3 >= 0) {
            return i3;
        }
        throw new IllegalArgumentException(i + " > " + i2);
    }

    public static int v(byte[] bArr) {
        if (bArr == null) {
            return 0;
        }
        int length = bArr.length;
        int i = length + 1;
        while (true) {
            length--;
            if (length < 0) {
                return i;
            }
            i = (i * 257) ^ bArr[length];
        }
    }

    public static int w(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            return 0;
        }
        int i3 = i2 + 1;
        while (true) {
            i2--;
            if (i2 < 0) {
                return i3;
            }
            i3 = (i3 * 257) ^ bArr[i + i2];
        }
    }

    public static int x(char[] cArr) {
        if (cArr == null) {
            return 0;
        }
        int length = cArr.length;
        int i = length + 1;
        while (true) {
            length--;
            if (length < 0) {
                return i;
            }
            i = (i * 257) ^ cArr[length];
        }
    }

    public static int y(int[] iArr) {
        if (iArr == null) {
            return 0;
        }
        int length = iArr.length;
        int i = length + 1;
        while (true) {
            length--;
            if (length < 0) {
                return i;
            }
            i = (i * 257) ^ iArr[length];
        }
    }

    public static int z(int[] iArr, int i, int i2) {
        if (iArr == null) {
            return 0;
        }
        int i3 = i2 + 1;
        while (true) {
            i2--;
            if (i2 < 0) {
                return i3;
            }
            i3 = (i3 * 257) ^ iArr[i + i2];
        }
    }
}
