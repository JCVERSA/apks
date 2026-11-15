package androidx.compose.foundation.lazy.layout;

import androidx.compose.runtime.g2;
import androidx.compose.runtime.v1;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

public abstract class LazyLayoutItemContentFactoryKt {
    public static final void a(final m mVar, final Object obj, final int i10, final Object obj2, androidx.compose.runtime.i iVar, final int i11) {
        int i12;
        androidx.compose.runtime.i iVarG = iVar.g(1439843069);
        if ((i11 & 6) == 0) {
            i12 = (iVarG.O(mVar) ? 4 : 2) | i11;
        } else {
            i12 = i11;
        }
        if ((i11 & 48) == 0) {
            i12 |= iVarG.O(obj) ? 32 : 16;
        }
        if ((i11 & 384) == 0) {
            i12 |= iVarG.c(i10) ? 256 : 128;
        }
        if ((i11 & 3072) == 0) {
            i12 |= iVarG.O(obj2) ? 2048 : 1024;
        }
        if ((i12 & 1171) == 1170 && iVarG.h()) {
            iVarG.G();
        } else {
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(1439843069, i12, -1, "androidx.compose.foundation.lazy.layout.SkippableItem (LazyLayoutItemContentFactory.kt:133)");
            }
            ((androidx.compose.runtime.saveable.a) obj).d(obj2, androidx.compose.runtime.internal.b.d(980966366, true, new Function2<androidx.compose.runtime.i, Integer, Unit>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override
                public Object invoke(Object obj3, Object obj4) {
                    invoke((androidx.compose.runtime.i) obj3, ((Number) obj4).intValue());
                    return Unit.f64096a;
                }

                public final void invoke(androidx.compose.runtime.i iVar2, int i13) {
                    if ((i13 & 3) == 2 && iVar2.h()) {
                        iVar2.G();
                        return;
                    }
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.Q(980966366, i13, -1, "androidx.compose.foundation.lazy.layout.SkippableItem.<anonymous> (LazyLayoutItemContentFactory.kt:135)");
                    }
                    mVar.g(i10, obj2, iVar2, 0);
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.P();
                    }
                }
            }, iVarG, 54), iVarG, 48);
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
        }
        g2 g2VarJ = iVarG.j();
        if (g2VarJ != null) {
            g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override
                public Object invoke(Object obj3, Object obj4) {
                    invoke((androidx.compose.runtime.i) obj3, ((Number) obj4).intValue());
                    return Unit.f64096a;
                }

                public final void invoke(androidx.compose.runtime.i iVar2, int i13) {
                    LazyLayoutItemContentFactoryKt.a(mVar, obj, i10, obj2, iVar2, v1.a(i11 | 1));
                }
            });
        }
    }
}
