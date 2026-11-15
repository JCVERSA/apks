package androidx.compose.animation.core;

import kotlin.Metadata;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(k = 3, mv = {1, 8, 0}, xi = 176)
@SourceDebugExtension
public final class TransitionKt$animateOffset$1 extends Lambda implements Function3<q0.a, androidx.compose.runtime.i, Integer, o0> {
    public static final TransitionKt$animateOffset$1 INSTANCE = new TransitionKt$animateOffset$1();

    public TransitionKt$animateOffset$1() {
        super(3);
    }

    @Override
    public Object invoke(Object obj, Object obj2, Object obj3) {
        android.support.v4.media.session.c.a(obj);
        return invoke((q0.a) null, (androidx.compose.runtime.i) obj2, ((Number) obj3).intValue());
    }

    public final o0 invoke(q0.a aVar, androidx.compose.runtime.i iVar, int i10) {
        iVar.P(1623385561);
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.Q(1623385561, i10, -1, "androidx.compose.animation.core.animateOffset.<anonymous> (Transition.kt:2025)");
        }
        o0 o0VarD = h.d(0.0f, 0.0f, y.g.d(g1.b(y.g.f75999b)), 3, null);
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.P();
        }
        iVar.K();
        return o0VarD;
    }
}
