package androidx.compose.ui.layout;

import kotlin.Unit;
import kotlin.jvm.functions.Function2;

public final class ComposableSingletons$SubcomposeLayoutKt {

    public static final ComposableSingletons$SubcomposeLayoutKt f4788a = new ComposableSingletons$SubcomposeLayoutKt();

    public static Function2 f4789b = androidx.compose.runtime.internal.b.b(-1741544742, false, new Function2<androidx.compose.runtime.i, Integer, Unit>() {
        @Override
        public Object invoke(Object obj, Object obj2) {
            invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
            return Unit.f64096a;
        }

        public final void invoke(androidx.compose.runtime.i iVar, int i10) {
            if ((i10 & 3) == 2 && iVar.h()) {
                iVar.G();
                return;
            }
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(-1741544742, i10, -1, "androidx.compose.ui.layout.ComposableSingletons$SubcomposeLayoutKt.lambda-1.<anonymous> (SubcomposeLayout.kt:473)");
            }
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
        }
    });

    public final Function2 a() {
        return f4789b;
    }
}
