package androidx.compose.ui.draw;

import androidx.compose.ui.graphics.a5;
import androidx.compose.ui.graphics.d4;
import androidx.compose.ui.graphics.v4;

public abstract class l {
    public static final androidx.compose.ui.f a(androidx.compose.ui.f fVar, float f10, a5 a5Var, boolean z10, long j10, long j11) {
        return (o0.i.f(f10, o0.i.g((float) 0)) > 0 || z10) ? fVar.e(new ShadowGraphicsLayerElement(f10, a5Var, z10, j10, j11, null)) : fVar;
    }

    public static androidx.compose.ui.f b(androidx.compose.ui.f fVar, float f10, a5 a5Var, boolean z10, long j10, long j11, int i10, Object obj) {
        boolean z11;
        a5 a5VarA = (i10 & 2) != 0 ? v4.a() : a5Var;
        if ((i10 & 4) != 0) {
            z11 = false;
            if (o0.i.f(f10, o0.i.g(0)) > 0) {
                z11 = true;
            }
        } else {
            z11 = z10;
        }
        return a(fVar, f10, a5VarA, z11, (i10 & 8) != 0 ? d4.a() : j10, (i10 & 16) != 0 ? d4.a() : j11);
    }
}
