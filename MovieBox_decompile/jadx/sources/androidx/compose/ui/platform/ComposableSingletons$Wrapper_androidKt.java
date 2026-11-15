package androidx.compose.ui.platform;

import kotlin.Unit;
import kotlin.jvm.functions.Function2;

public final class ComposableSingletons$Wrapper_androidKt {

    public static final ComposableSingletons$Wrapper_androidKt f5299a = new ComposableSingletons$Wrapper_androidKt();

    public static Function2 f5300b = androidx.compose.runtime.internal.b.b(-1759434350, false, new Function2<androidx.compose.runtime.i, Integer, Unit>() {
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
                androidx.compose.runtime.k.Q(-1759434350, i10, -1, "androidx.compose.ui.platform.ComposableSingletons$Wrapper_androidKt.lambda-1.<anonymous> (Wrapper.android.kt:120)");
            }
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
        }
    });

    public final Function2 a() {
        return f5300b;
    }
}
