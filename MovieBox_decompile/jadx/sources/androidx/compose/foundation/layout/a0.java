package androidx.compose.foundation.layout;

import kotlin.jvm.internal.Intrinsics;

public abstract class a0 {

    private static final androidx.compose.ui.layout.t f2526a = new RowMeasurePolicy(b.f2527a.c(), androidx.compose.ui.b.f3778a.j());

    public static final long a(boolean z10, int i10, int i11, int i12, int i13) {
        return !z10 ? o0.c.a(i10, i12, i11, i13) : o0.b.f67397b.b(i10, i12, i11, i13);
    }

    public static final androidx.compose.ui.layout.t b(b.d dVar, androidx.compose.ui.b.c cVar, androidx.compose.runtime.i iVar, int i10) {
        androidx.compose.ui.layout.t tVar;
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.Q(-837807694, i10, -1, "androidx.compose.foundation.layout.rowMeasurePolicy (Row.kt:122)");
        }
        if (Intrinsics.c(dVar, b.f2527a.c()) && Intrinsics.c(cVar, androidx.compose.ui.b.f3778a.j())) {
            iVar.P(-849081669);
            iVar.K();
            tVar = f2526a;
        } else {
            iVar.P(-849030798);
            boolean z10 = ((((i10 & 14) ^ 6) > 4 && iVar.O(dVar)) || (i10 & 6) == 4) | ((((i10 & 112) ^ 48) > 32 && iVar.O(cVar)) || (i10 & 48) == 32);
            Object objY = iVar.y();
            if (z10 || objY == androidx.compose.runtime.i.f3427a.a()) {
                objY = new RowMeasurePolicy(dVar, cVar);
                iVar.p(objY);
            }
            tVar = (RowMeasurePolicy) objY;
            iVar.K();
        }
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.P();
        }
        return tVar;
    }
}
