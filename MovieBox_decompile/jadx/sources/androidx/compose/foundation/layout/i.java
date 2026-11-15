package androidx.compose.foundation.layout;

import kotlin.jvm.internal.Intrinsics;

public abstract class i {

    private static final androidx.compose.ui.layout.t f2550a = new ColumnMeasurePolicy(b.f2527a.d(), androidx.compose.ui.b.f3778a.i());

    public static final androidx.compose.ui.layout.t a(b.k kVar, androidx.compose.ui.b.InterfaceC0036b interfaceC0036b, androidx.compose.runtime.i iVar, int i10) {
        androidx.compose.ui.layout.t tVar;
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.Q(1089876336, i10, -1, "androidx.compose.foundation.layout.columnMeasurePolicy (Column.kt:106)");
        }
        if (Intrinsics.c(kVar, b.f2527a.d()) && Intrinsics.c(interfaceC0036b, androidx.compose.ui.b.f3778a.i())) {
            iVar.P(345962472);
            iVar.K();
            tVar = f2550a;
        } else {
            iVar.P(346016319);
            boolean z10 = ((((i10 & 14) ^ 6) > 4 && iVar.O(kVar)) || (i10 & 6) == 4) | ((((i10 & 112) ^ 48) > 32 && iVar.O(interfaceC0036b)) || (i10 & 48) == 32);
            Object objY = iVar.y();
            if (z10 || objY == androidx.compose.runtime.i.f3427a.a()) {
                objY = new ColumnMeasurePolicy(kVar, interfaceC0036b);
                iVar.p(objY);
            }
            tVar = (ColumnMeasurePolicy) objY;
            iVar.K();
        }
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.P();
        }
        return tVar;
    }

    public static final long b(boolean z10, int i10, int i11, int i12, int i13) {
        return !z10 ? o0.c.a(i11, i13, i10, i12) : o0.b.f67397b.a(i11, i13, i10, i12);
    }
}
