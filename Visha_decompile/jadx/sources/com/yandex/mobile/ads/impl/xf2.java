package com.yandex.mobile.ads.impl;

import android.graphics.Matrix;
import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;

public final class xf2 {
    private final fz1 a;
    private final fz1 b;

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.yandex.mobile.ads.impl.xf2$a[], still in use, count: 1, list:
      (r0v1 com.yandex.mobile.ads.impl.xf2$a[]) from 0x001a: INVOKE (r0v1 com.yandex.mobile.ads.impl.xf2$a[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m)]
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
    	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
    	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class a {
        b,
        c;

        static {
            kotlin.enums.a.a(aVarArr);
        }

        private a() {
            super(str, i);
        }

        public static a valueOf(String str) {
            return (a) Enum.valueOf(a.class, str);
        }

        public static a[] values() {
            return (a[]) d.clone();
        }
    }

    public xf2(fz1 fz1Var, fz1 fz1Var2) {
        y45.j(fz1Var, "viewSize");
        y45.j(fz1Var2, "videoSize");
        this.a = fz1Var;
        this.b = fz1Var2;
    }

    private final Matrix a(float f, float f2, a aVar) {
        int iOrdinal = aVar.ordinal();
        if (iOrdinal == 0) {
            Matrix matrix = new Matrix();
            matrix.setScale(f, f2, 0.0f, 0.0f);
            return matrix;
        }
        if (iOrdinal != 1) {
            throw new NoWhenBranchMatchedException();
        }
        float fB = this.a.b() / 2.0f;
        float fA = this.a.a() / 2.0f;
        Matrix matrix2 = new Matrix();
        matrix2.setScale(f, f2, fB, fA);
        return matrix2;
    }

    public final Matrix a(yf2 yf2Var) {
        y45.j(yf2Var, "videoScaleType");
        fz1 fz1Var = this.b;
        if (fz1Var.b() > 0 && fz1Var.a() > 0) {
            fz1 fz1Var2 = this.a;
            if (fz1Var2.b() > 0 && fz1Var2.a() > 0) {
                int iOrdinal = yf2Var.ordinal();
                if (iOrdinal == 0) {
                    return a(1.0f, 1.0f, a.b);
                }
                if (iOrdinal == 1) {
                    float fB = this.a.b() / this.b.b();
                    float fA = this.a.a() / this.b.a();
                    float fMin = Math.min(fB, fA);
                    return a(fMin / fB, fMin / fA, a.c);
                }
                if (iOrdinal == 2) {
                    float fB2 = this.a.b() / this.b.b();
                    float fA2 = this.a.a() / this.b.a();
                    float fMax = Math.max(fB2, fA2);
                    return a(fMax / fB2, fMax / fA2, a.c);
                }
                throw new NoWhenBranchMatchedException();
            }
        }
        return null;
    }
}
