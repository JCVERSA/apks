package androidx.compose.runtime.internal;

import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.i;
import androidx.compose.runtime.k;
import androidx.compose.runtime.u1;
import kotlin.jvm.internal.Intrinsics;

public abstract class b {

    private static final Object f3453a = new Object();

    public static final int a(int i10, int i11) {
        return i10 << (((i11 % 10) * 3) + 1);
    }

    public static final a b(int i10, boolean z10, Object obj) {
        return new ComposableLambdaImpl(i10, z10, obj);
    }

    public static final int c(int i10) {
        return a(2, i10);
    }

    public static final a d(int i10, boolean z10, Object obj, i iVar, int i11) {
        if (k.H()) {
            k.Q(-1573003438, i11, -1, "androidx.compose.runtime.internal.rememberComposableLambda (ComposableLambda.kt:628)");
        }
        Object objY = iVar.y();
        if (objY == i.f3427a.a()) {
            objY = new ComposableLambdaImpl(i10, z10, obj);
            iVar.p(objY);
        }
        ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) objY;
        composableLambdaImpl.i(obj);
        if (k.H()) {
            k.P();
        }
        return composableLambdaImpl;
    }

    public static final boolean e(u1 u1Var, u1 u1Var2) {
        if (u1Var != null) {
            if ((u1Var instanceof RecomposeScopeImpl) && (u1Var2 instanceof RecomposeScopeImpl)) {
                RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) u1Var;
                if (!recomposeScopeImpl.r() || Intrinsics.c(u1Var, u1Var2) || Intrinsics.c(recomposeScopeImpl.i(), ((RecomposeScopeImpl) u1Var2).i())) {
                }
            }
            return false;
        }
        return true;
    }

    public static final int f(int i10) {
        return a(1, i10);
    }
}
