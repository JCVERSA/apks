package androidx.compose.material.ripple;

import androidx.compose.animation.core.b0;
import androidx.compose.animation.core.r0;
import androidx.compose.foundation.x;
import androidx.compose.runtime.a3;
import androidx.compose.runtime.r2;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.x1;
import kotlin.jvm.functions.Function0;

public abstract class h {

    private static final r0 f3194a = new r0(15, 0, b0.d(), 2, null);

    public static final androidx.compose.ui.node.f c(p.g gVar, boolean z10, float f10, x1 x1Var, Function0 function0) {
        return j.d(gVar, z10, f10, x1Var, function0);
    }

    public static final androidx.compose.animation.core.g d(p.f fVar) {
        if (fVar instanceof p.d) {
            return f3194a;
        }
        if (fVar instanceof p.b) {
            return new r0(45, 0, b0.d(), 2, null);
        }
        return fVar instanceof p.a.b ? new r0(45, 0, b0.d(), 2, null) : f3194a;
    }

    public static final androidx.compose.animation.core.g e(p.f fVar) {
        if (fVar instanceof p.d) {
            return f3194a;
        }
        if (fVar instanceof p.b) {
            return f3194a;
        }
        return fVar instanceof p.a.b ? new r0(150, 0, b0.d(), 2, null) : f3194a;
    }

    public static final x f(boolean z10, float f10, long j10, androidx.compose.runtime.i iVar, int i10, int i11) {
        boolean z11 = true;
        if ((i11 & 1) != 0) {
            z10 = true;
        }
        if ((i11 & 2) != 0) {
            f10 = o0.i.f67404b.b();
        }
        if ((i11 & 4) != 0) {
            j10 = u1.f4349b.e();
        }
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.Q(1635163520, i10, -1, "androidx.compose.material.ripple.rememberRipple (Ripple.kt:146)");
        }
        a3 a3VarI = r2.i(u1.g(j10), iVar, (i10 >> 6) & 14);
        boolean z12 = (((i10 & 14) ^ 6) > 4 && iVar.a(z10)) || (i10 & 6) == 4;
        if ((((i10 & 112) ^ 48) <= 32 || !iVar.b(f10)) && (i10 & 48) != 32) {
            z11 = false;
        }
        boolean z13 = z12 | z11;
        Object objY = iVar.y();
        if (z13 || objY == androidx.compose.runtime.i.f3427a.a()) {
            objY = new b(z10, f10, a3VarI, null);
            iVar.p(objY);
        }
        b bVar = (b) objY;
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.P();
        }
        return bVar;
    }
}
