package androidx.collection;

import kotlin.jvm.internal.Intrinsics;

public abstract class z0 {

    private static final Object f2058a = new Object();

    public static final Object c(y0 y0Var, int i10) {
        Object obj;
        Intrinsics.h(y0Var, "<this>");
        int iA = n.a.a(y0Var.f2055b, y0Var.f2057d, i10);
        if (iA < 0 || (obj = y0Var.f2056c[iA]) == f2058a) {
            return null;
        }
        return obj;
    }

    public static final Object d(y0 y0Var, int i10, Object obj) {
        Object obj2;
        Intrinsics.h(y0Var, "<this>");
        int iA = n.a.a(y0Var.f2055b, y0Var.f2057d, i10);
        return (iA < 0 || (obj2 = y0Var.f2056c[iA]) == f2058a) ? obj : obj2;
    }

    public static final void e(y0 y0Var, int i10) {
        Intrinsics.h(y0Var, "<this>");
        int iA = n.a.a(y0Var.f2055b, y0Var.f2057d, i10);
        if (iA >= 0) {
            Object[] objArr = y0Var.f2056c;
            Object obj = objArr[iA];
            Object obj2 = f2058a;
            if (obj != obj2) {
                objArr[iA] = obj2;
                y0Var.f2054a = true;
            }
        }
    }

    public static final void f(y0 y0Var) {
        int i10 = y0Var.f2057d;
        int[] iArr = y0Var.f2055b;
        Object[] objArr = y0Var.f2056c;
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            Object obj = objArr[i12];
            if (obj != f2058a) {
                if (i12 != i11) {
                    iArr[i11] = iArr[i12];
                    objArr[i11] = obj;
                    objArr[i12] = null;
                }
                i11++;
            }
        }
        y0Var.f2054a = false;
        y0Var.f2057d = i11;
    }
}
