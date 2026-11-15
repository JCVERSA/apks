package androidx.compose.ui.window;

import kotlin.Unit;
import kotlin.jvm.functions.Function2;

public final class ComposableSingletons$AndroidDialog_androidKt {

    public static final ComposableSingletons$AndroidDialog_androidKt f6213a = new ComposableSingletons$AndroidDialog_androidKt();

    public static Function2 f6214b = androidx.compose.runtime.internal.b.b(210148896, false, new Function2<androidx.compose.runtime.i, Integer, Unit>() {
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
                androidx.compose.runtime.k.Q(210148896, i10, -1, "androidx.compose.ui.window.ComposableSingletons$AndroidDialog_androidKt.lambda-1.<anonymous> (AndroidDialog.android.kt:227)");
            }
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
        }
    });

    public final Function2 a() {
        return f6214b;
    }
}
