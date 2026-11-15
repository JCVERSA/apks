package kotlin.collections;

import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

public class ArraysKt___ArraysJvmKt extends e {
    public static int[] A(int[] iArr, int i10) {
        Intrinsics.h(iArr, "<this>");
        int length = iArr.length;
        int[] iArrCopyOf = Arrays.copyOf(iArr, length + 1);
        iArrCopyOf[length] = i10;
        Intrinsics.e(iArrCopyOf);
        return iArrCopyOf;
    }

    public static int[] B(int[] iArr, int[] elements) {
        Intrinsics.h(iArr, "<this>");
        Intrinsics.h(elements, "elements");
        int length = iArr.length;
        int length2 = elements.length;
        int[] iArrCopyOf = Arrays.copyOf(iArr, length + length2);
        System.arraycopy(elements, 0, iArrCopyOf, length, length2);
        Intrinsics.e(iArrCopyOf);
        return iArrCopyOf;
    }

    public static Object[] C(Object[] objArr, Object obj) {
        Intrinsics.h(objArr, "<this>");
        int length = objArr.length;
        Object[] objArrCopyOf = Arrays.copyOf(objArr, length + 1);
        objArrCopyOf[length] = obj;
        Intrinsics.e(objArrCopyOf);
        return objArrCopyOf;
    }

    public static void D(Object[] objArr) {
        Intrinsics.h(objArr, "<this>");
        if (objArr.length > 1) {
            Arrays.sort(objArr);
        }
    }

    public static final void E(Object[] objArr, Comparator comparator) {
        Intrinsics.h(objArr, "<this>");
        Intrinsics.h(comparator, "comparator");
        if (objArr.length > 1) {
            Arrays.sort(objArr, comparator);
        }
    }

    public static void F(Object[] objArr, Comparator comparator, int i10, int i11) {
        Intrinsics.h(objArr, "<this>");
        Intrinsics.h(comparator, "comparator");
        Arrays.sort(objArr, i10, i11, comparator);
    }

    public static List e(byte[] bArr) {
        Intrinsics.h(bArr, "<this>");
        return new ArraysKt___ArraysJvmKt$asList$1(bArr);
    }

    public static List f(int[] iArr) {
        Intrinsics.h(iArr, "<this>");
        return new ArraysKt___ArraysJvmKt$asList$3(iArr);
    }

    public static List g(Object[] objArr) {
        Intrinsics.h(objArr, "<this>");
        List listA = h.a(objArr);
        Intrinsics.g(listA, "asList(...)");
        return listA;
    }

    public static byte[] h(byte[] bArr, byte[] destination, int i10, int i11, int i12) {
        Intrinsics.h(bArr, "<this>");
        Intrinsics.h(destination, "destination");
        System.arraycopy(bArr, i11, destination, i10, i12 - i11);
        return destination;
    }

    public static float[] i(float[] fArr, float[] destination, int i10, int i11, int i12) {
        Intrinsics.h(fArr, "<this>");
        Intrinsics.h(destination, "destination");
        System.arraycopy(fArr, i11, destination, i10, i12 - i11);
        return destination;
    }

    public static int[] j(int[] iArr, int[] destination, int i10, int i11, int i12) {
        Intrinsics.h(iArr, "<this>");
        Intrinsics.h(destination, "destination");
        System.arraycopy(iArr, i11, destination, i10, i12 - i11);
        return destination;
    }

    public static long[] k(long[] jArr, long[] destination, int i10, int i11, int i12) {
        Intrinsics.h(jArr, "<this>");
        Intrinsics.h(destination, "destination");
        System.arraycopy(jArr, i11, destination, i10, i12 - i11);
        return destination;
    }

    public static Object[] l(Object[] objArr, Object[] destination, int i10, int i11, int i12) {
        Intrinsics.h(objArr, "<this>");
        Intrinsics.h(destination, "destination");
        System.arraycopy(objArr, i11, destination, i10, i12 - i11);
        return destination;
    }

    public static byte[] m(byte[] bArr, byte[] bArr2, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i10 = 0;
        }
        if ((i13 & 4) != 0) {
            i11 = 0;
        }
        if ((i13 & 8) != 0) {
            i12 = bArr.length;
        }
        return ArraysKt.h(bArr, bArr2, i10, i11, i12);
    }

    public static float[] n(float[] fArr, float[] fArr2, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i10 = 0;
        }
        if ((i13 & 4) != 0) {
            i11 = 0;
        }
        if ((i13 & 8) != 0) {
            i12 = fArr.length;
        }
        return ArraysKt.i(fArr, fArr2, i10, i11, i12);
    }

    public static int[] o(int[] iArr, int[] iArr2, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i10 = 0;
        }
        if ((i13 & 4) != 0) {
            i11 = 0;
        }
        if ((i13 & 8) != 0) {
            i12 = iArr.length;
        }
        return ArraysKt.j(iArr, iArr2, i10, i11, i12);
    }

    public static Object[] p(Object[] objArr, Object[] objArr2, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i10 = 0;
        }
        if ((i13 & 4) != 0) {
            i11 = 0;
        }
        if ((i13 & 8) != 0) {
            i12 = objArr.length;
        }
        return ArraysKt.l(objArr, objArr2, i10, i11, i12);
    }

    public static byte[] q(byte[] bArr, int i10, int i11) {
        Intrinsics.h(bArr, "<this>");
        d.b(i11, bArr.length);
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, i10, i11);
        Intrinsics.g(bArrCopyOfRange, "copyOfRange(...)");
        return bArrCopyOfRange;
    }

    public static Object[] r(Object[] objArr, int i10, int i11) {
        Intrinsics.h(objArr, "<this>");
        d.b(i11, objArr.length);
        Object[] objArrCopyOfRange = Arrays.copyOfRange(objArr, i10, i11);
        Intrinsics.g(objArrCopyOfRange, "copyOfRange(...)");
        return objArrCopyOfRange;
    }

    public static final void s(int[] iArr, int i10, int i11, int i12) {
        Intrinsics.h(iArr, "<this>");
        Arrays.fill(iArr, i11, i12, i10);
    }

    public static final void t(long[] jArr, long j10, int i10, int i11) {
        Intrinsics.h(jArr, "<this>");
        Arrays.fill(jArr, i10, i11, j10);
    }

    public static void u(Object[] objArr, Object obj, int i10, int i11) {
        Intrinsics.h(objArr, "<this>");
        Arrays.fill(objArr, i10, i11, obj);
    }

    public static final void v(boolean[] zArr, boolean z10, int i10, int i11) {
        Intrinsics.h(zArr, "<this>");
        Arrays.fill(zArr, i10, i11, z10);
    }

    public static void w(int[] iArr, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i11 = 0;
        }
        if ((i13 & 4) != 0) {
            i12 = iArr.length;
        }
        s(iArr, i10, i11, i12);
    }

    public static void x(long[] jArr, long j10, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = jArr.length;
        }
        t(jArr, j10, i10, i11);
    }

    public static void y(Object[] objArr, Object obj, int i10, int i11, int i12, Object obj2) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = objArr.length;
        }
        ArraysKt.u(objArr, obj, i10, i11);
    }

    public static void z(boolean[] zArr, boolean z10, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = zArr.length;
        }
        v(zArr, z10, i10, i11);
    }
}
