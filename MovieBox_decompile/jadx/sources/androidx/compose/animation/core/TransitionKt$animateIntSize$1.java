package androidx.compose.animation.core;

import kotlin.Metadata;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(k = 3, mv = {1, 8, 0}, xi = 176)
@SourceDebugExtension
public final class TransitionKt$animateIntSize$1 extends Lambda implements Function3<q0.a, androidx.compose.runtime.i, Integer, o0> {
    public static final TransitionKt$animateIntSize$1 INSTANCE = new TransitionKt$animateIntSize$1();

    public TransitionKt$animateIntSize$1() {
        super(3);
    }

    public final o0 invoke(q0.a aVar, androidx.compose.runtime.i iVar, int i10) {
        iVar.P(967893300);
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.Q(967893300, i10, -1, "androidx.compose.animation.core.animateIntSize.<anonymous> (Transition.kt:2149)");
        }
        o0 o0VarD = h.d(0.0f, 0.0f, o0.t.b(o0.u.a(1, 1)), 3, null);
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.P();
        }
        iVar.K();
        return o0VarD;
    }

    @Override
    public Object invoke(Object obj, Object obj2, Object obj3) {
        android.support.v4.media.session.c.a(obj);
        return invoke((q0.a) null, (androidx.compose.runtime.i) obj2, ((Number) obj3).intValue());
    }
}
