package androidx.compose.ui.window;

import kotlin.Unit;
import kotlin.jvm.functions.Function2;

public final class ComposableSingletons$AndroidPopup_androidKt {

    public static final ComposableSingletons$AndroidPopup_androidKt f6215a = new ComposableSingletons$AndroidPopup_androidKt();

    public static Function2 f6216b = androidx.compose.runtime.internal.b.b(-1131826196, false, new Function2<androidx.compose.runtime.i, Integer, Unit>() {
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
                androidx.compose.runtime.k.Q(-1131826196, i10, -1, "androidx.compose.ui.window.ComposableSingletons$AndroidPopup_androidKt.lambda-1.<anonymous> (AndroidPopup.android.kt:555)");
            }
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
        }
    });

    public final Function2 a() {
        return f6216b;
    }
}
