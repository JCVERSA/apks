package androidx.compose.material3;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.g2;
import androidx.compose.runtime.i;
import androidx.compose.runtime.k;
import androidx.compose.runtime.v1;
import androidx.compose.ui.platform.CompositionLocalsKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

public abstract class DividerKt {
    public static final void a(androidx.compose.ui.f fVar, float f10, long j10, i iVar, final int i10, final int i11) {
        int i12;
        i iVarG = iVar.g(1562471785);
        int i13 = i11 & 1;
        if (i13 != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 6) == 0) {
            i12 = (iVarG.O(fVar) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        int i14 = i11 & 2;
        if (i14 != 0) {
            i12 |= 48;
        } else if ((i10 & 48) == 0) {
            i12 |= iVarG.b(f10) ? 32 : 16;
        }
        if ((i10 & 384) == 0) {
            i12 |= ((i11 & 4) == 0 && iVarG.d(j10)) ? 256 : 128;
        }
        if ((i12 & 147) == 146 && iVarG.h()) {
            iVarG.G();
        } else {
            iVarG.B();
            if ((i10 & 1) == 0 || iVarG.I()) {
                if (i13 != 0) {
                    fVar = androidx.compose.ui.f.f3869a;
                }
                if (i14 != 0) {
                    f10 = c.f3237a.b();
                }
                if ((i11 & 4) != 0) {
                    j10 = c.f3237a.a(iVarG, 6);
                    i12 &= -897;
                }
            } else {
                iVarG.G();
                if ((i11 & 4) != 0) {
                    i12 &= -897;
                }
            }
            iVarG.s();
            if (k.H()) {
                k.Q(1562471785, i12, -1, "androidx.compose.material3.Divider (Divider.kt:95)");
            }
            iVarG.x(1232937226);
            float fG = o0.i.i(f10, o0.i.f67404b.a()) ? o0.i.g(1.0f / ((o0.e) iVarG.l(CompositionLocalsKt.c())).getDensity()) : f10;
            iVarG.N();
            BoxKt.a(BackgroundKt.b(SizeKt.e(SizeKt.d(fVar, 0.0f, 1, null), fG), j10, null, 2, null), iVarG, 0);
            if (k.H()) {
                k.P();
            }
        }
        final androidx.compose.ui.f fVar2 = fVar;
        final float f11 = f10;
        final long j11 = j10;
        g2 g2VarJ = iVarG.j();
        if (g2VarJ != null) {
            g2VarJ.a(new Function2<i, Integer, Unit>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override
                public Object invoke(Object obj, Object obj2) {
                    invoke((i) obj, ((Number) obj2).intValue());
                    return Unit.f64096a;
                }

                public final void invoke(i iVar2, int i15) {
                    DividerKt.a(fVar2, f11, j11, iVar2, v1.a(i10 | 1), i11);
                }
            });
        }
    }
}
