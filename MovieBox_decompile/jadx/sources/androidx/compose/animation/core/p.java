package androidx.compose.animation.core;

import kotlin.jvm.internal.Intrinsics;

public abstract class p {
    public static final k a(float f10) {
        return new k(f10);
    }

    public static final l b(float f10, float f11) {
        return new l(f10, f11);
    }

    public static final m c(float f10, float f11, float f12) {
        return new m(f10, f11, f12);
    }

    public static final n d(float f10, float f11, float f12, float f13) {
        return new n(f10, f11, f12, f13);
    }

    public static final o e(o oVar) {
        o oVarG = g(oVar);
        int iB = oVarG.b();
        for (int i10 = 0; i10 < iB; i10++) {
            oVarG.e(i10, oVar.a(i10));
        }
        return oVarG;
    }

    public static final void f(o oVar, o oVar2) {
        int iB = oVar.b();
        for (int i10 = 0; i10 < iB; i10++) {
            oVar.e(i10, oVar2.a(i10));
        }
    }

    public static final o g(o oVar) {
        o oVarC = oVar.c();
        Intrinsics.f(oVarC, "null cannot be cast to non-null type T of androidx.compose.animation.core.AnimationVectorsKt.newInstance");
        return oVarC;
    }
}
