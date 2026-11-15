package u;

import java.util.Arrays;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;

public abstract class x {
    public static final int f(int i10, int i11) {
        return (i10 >> i11) & 31;
    }

    public static final Object[] g(Object[] objArr, int i10, Object obj, Object obj2) {
        Object[] objArr2 = new Object[objArr.length + 2];
        ArraysKt.p(objArr, objArr2, 0, 0, i10, 6, null);
        ArraysKt.l(objArr, objArr2, i10 + 2, i10, objArr.length);
        objArr2[i10] = obj;
        objArr2[i10 + 1] = obj2;
        return objArr2;
    }

    public static final Object[] h(Object[] objArr, int i10) {
        Object[] objArr2 = new Object[objArr.length - 2];
        ArraysKt.p(objArr, objArr2, 0, 0, i10, 6, null);
        ArraysKt.l(objArr, objArr2, i10, i10 + 2, objArr.length);
        return objArr2;
    }

    public static final Object[] i(Object[] objArr, int i10) {
        Object[] objArr2 = new Object[objArr.length - 1];
        ArraysKt.p(objArr, objArr2, 0, 0, i10, 6, null);
        ArraysKt.l(objArr, objArr2, i10, i10 + 1, objArr.length);
        return objArr2;
    }

    public static final Object[] j(Object[] objArr, int i10, int i11, t tVar) {
        Object[] objArr2 = new Object[objArr.length - 1];
        ArraysKt.p(objArr, objArr2, 0, 0, i10, 6, null);
        ArraysKt.l(objArr, objArr2, i10, i10 + 2, i11);
        objArr2[i11 - 2] = tVar;
        ArraysKt.l(objArr, objArr2, i11 - 1, i11, objArr.length);
        return objArr2;
    }

    public static final Object[] k(Object[] objArr, int i10, int i11, Object obj, Object obj2) {
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length + 1);
        Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
        ArraysKt.l(objArrCopyOf, objArrCopyOf, i10 + 2, i10 + 1, objArr.length);
        ArraysKt.l(objArrCopyOf, objArrCopyOf, i11 + 2, i11, i10);
        objArrCopyOf[i11] = obj;
        objArrCopyOf[i11 + 1] = obj2;
        return objArrCopyOf;
    }
}
