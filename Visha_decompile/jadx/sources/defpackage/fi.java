package defpackage;

import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.RandomAccess;
import java.util.SortedSet;
import java.util.TreeSet;

public abstract class fi extends ei {

    public static final class a extends g3 implements RandomAccess {
        public final int[] b;

        public a(int[] iArr) {
            this.b = iArr;
        }

        @Override
        public final boolean contains(Object obj) {
            if (obj instanceof Integer) {
                return f(((Number) obj).intValue());
            }
            return false;
        }

        public boolean f(int i) {
            return hi.N(this.b, i);
        }

        @Override
        public int getSize() {
            return this.b.length;
        }

        @Override
        public final int indexOf(Object obj) {
            if (obj instanceof Integer) {
                return l(((Number) obj).intValue());
            }
            return -1;
        }

        @Override
        public boolean isEmpty() {
            return this.b.length == 0;
        }

        @Override
        public Integer get(int i) {
            return Integer.valueOf(this.b[i]);
        }

        public int l(int i) {
            return hi.i0(this.b, i);
        }

        @Override
        public final int lastIndexOf(Object obj) {
            if (obj instanceof Integer) {
                return m(((Number) obj).intValue());
            }
            return -1;
        }

        public int m(int i) {
            return hi.v0(this.b, i);
        }
    }

    public static Object[] A(Object[] objArr, Object obj) {
        y45.j(objArr, "<this>");
        int length = objArr.length;
        Object[] objArrCopyOf = Arrays.copyOf(objArr, length + 1);
        objArrCopyOf[length] = obj;
        y45.g(objArrCopyOf);
        return objArrCopyOf;
    }

    public static Object[] B(Object[] objArr, Object[] objArr2) {
        y45.j(objArr, "<this>");
        y45.j(objArr2, "elements");
        int length = objArr.length;
        int length2 = objArr2.length;
        Object[] objArrCopyOf = Arrays.copyOf(objArr, length + length2);
        System.arraycopy(objArr2, 0, objArrCopyOf, length, length2);
        y45.g(objArrCopyOf);
        return objArrCopyOf;
    }

    public static void C(float[] fArr, int i, int i2) {
        y45.j(fArr, "<this>");
        Arrays.sort(fArr, i, i2);
    }

    public static void D(int[] iArr, int i, int i2) {
        y45.j(iArr, "<this>");
        Arrays.sort(iArr, i, i2);
    }

    public static void E(long[] jArr, int i, int i2) {
        y45.j(jArr, "<this>");
        Arrays.sort(jArr, i, i2);
    }

    public static final void F(Object[] objArr) {
        y45.j(objArr, "<this>");
        if (objArr.length > 1) {
            Arrays.sort(objArr);
        }
    }

    public static final void G(Object[] objArr, Comparator comparator) {
        y45.j(objArr, "<this>");
        y45.j(comparator, "comparator");
        if (objArr.length > 1) {
            Arrays.sort(objArr, comparator);
        }
    }

    public static SortedSet H(Comparable[] comparableArr) {
        y45.j(comparableArr, "<this>");
        return (SortedSet) hi.Q0(comparableArr, new TreeSet());
    }

    public static List e(int[] iArr) {
        y45.j(iArr, "<this>");
        return new a(iArr);
    }

    public static List f(Object[] objArr) {
        y45.j(objArr, "<this>");
        List listA = ii.a(objArr);
        y45.i(listA, "asList(...)");
        return listA;
    }

    public static byte[] g(byte[] bArr, byte[] bArr2, int i, int i2, int i3) {
        y45.j(bArr, "<this>");
        y45.j(bArr2, "destination");
        System.arraycopy(bArr, i2, bArr2, i, i3 - i2);
        return bArr2;
    }

    public static char[] h(char[] cArr, char[] cArr2, int i, int i2, int i3) {
        y45.j(cArr, "<this>");
        y45.j(cArr2, "destination");
        System.arraycopy(cArr, i2, cArr2, i, i3 - i2);
        return cArr2;
    }

    public static float[] i(float[] fArr, float[] fArr2, int i, int i2, int i3) {
        y45.j(fArr, "<this>");
        y45.j(fArr2, "destination");
        System.arraycopy(fArr, i2, fArr2, i, i3 - i2);
        return fArr2;
    }

    public static int[] j(int[] iArr, int[] iArr2, int i, int i2, int i3) {
        y45.j(iArr, "<this>");
        y45.j(iArr2, "destination");
        System.arraycopy(iArr, i2, iArr2, i, i3 - i2);
        return iArr2;
    }

    public static long[] k(long[] jArr, long[] jArr2, int i, int i2, int i3) {
        y45.j(jArr, "<this>");
        y45.j(jArr2, "destination");
        System.arraycopy(jArr, i2, jArr2, i, i3 - i2);
        return jArr2;
    }

    public static Object[] l(Object[] objArr, Object[] objArr2, int i, int i2, int i3) {
        y45.j(objArr, "<this>");
        y45.j(objArr2, "destination");
        System.arraycopy(objArr, i2, objArr2, i, i3 - i2);
        return objArr2;
    }

    public static byte[] m(byte[] bArr, byte[] bArr2, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i = 0;
        }
        if ((i4 & 4) != 0) {
            i2 = 0;
        }
        if ((i4 & 8) != 0) {
            i3 = bArr.length;
        }
        return g(bArr, bArr2, i, i2, i3);
    }

    public static float[] n(float[] fArr, float[] fArr2, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i = 0;
        }
        if ((i4 & 4) != 0) {
            i2 = 0;
        }
        if ((i4 & 8) != 0) {
            i3 = fArr.length;
        }
        return i(fArr, fArr2, i, i2, i3);
    }

    public static int[] o(int[] iArr, int[] iArr2, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i = 0;
        }
        if ((i4 & 4) != 0) {
            i2 = 0;
        }
        if ((i4 & 8) != 0) {
            i3 = iArr.length;
        }
        return j(iArr, iArr2, i, i2, i3);
    }

    public static long[] p(long[] jArr, long[] jArr2, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i = 0;
        }
        if ((i4 & 4) != 0) {
            i2 = 0;
        }
        if ((i4 & 8) != 0) {
            i3 = jArr.length;
        }
        return k(jArr, jArr2, i, i2, i3);
    }

    public static Object[] q(Object[] objArr, Object[] objArr2, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i = 0;
        }
        if ((i4 & 4) != 0) {
            i2 = 0;
        }
        if ((i4 & 8) != 0) {
            i3 = objArr.length;
        }
        return l(objArr, objArr2, i, i2, i3);
    }

    public static byte[] r(byte[] bArr, int i, int i2) {
        y45.j(bArr, "<this>");
        di.b(i2, bArr.length);
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, i, i2);
        y45.i(bArrCopyOfRange, "copyOfRange(...)");
        return bArrCopyOfRange;
    }

    public static Object[] s(Object[] objArr, int i, int i2) {
        y45.j(objArr, "<this>");
        di.b(i2, objArr.length);
        Object[] objArrCopyOfRange = Arrays.copyOfRange(objArr, i, i2);
        y45.i(objArrCopyOfRange, "copyOfRange(...)");
        return objArrCopyOfRange;
    }

    public static final void t(int[] iArr, int i, int i2, int i3) {
        y45.j(iArr, "<this>");
        Arrays.fill(iArr, i2, i3, i);
    }

    public static final void u(long[] jArr, long j, int i, int i2) {
        y45.j(jArr, "<this>");
        Arrays.fill(jArr, i, i2, j);
    }

    public static void v(Object[] objArr, Object obj, int i, int i2) {
        y45.j(objArr, "<this>");
        Arrays.fill(objArr, i, i2, obj);
    }

    public static void w(int[] iArr, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        if ((i4 & 4) != 0) {
            i3 = iArr.length;
        }
        t(iArr, i, i2, i3);
    }

    public static void x(long[] jArr, long j, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = jArr.length;
        }
        u(jArr, j, i, i2);
    }

    public static void y(Object[] objArr, Object obj, int i, int i2, int i3, Object obj2) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = objArr.length;
        }
        v(objArr, obj, i, i2);
    }

    public static byte[] z(byte[] bArr, byte[] bArr2) {
        y45.j(bArr, "<this>");
        y45.j(bArr2, "elements");
        int length = bArr.length;
        int length2 = bArr2.length;
        byte[] bArrCopyOf = Arrays.copyOf(bArr, length + length2);
        System.arraycopy(bArr2, 0, bArrCopyOf, length, length2);
        y45.g(bArrCopyOf);
        return bArrCopyOf;
    }
}
