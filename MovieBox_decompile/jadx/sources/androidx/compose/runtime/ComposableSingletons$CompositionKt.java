package androidx.compose.runtime;

import kotlin.Unit;
import kotlin.jvm.functions.Function2;

public final class ComposableSingletons$CompositionKt {

    public static final ComposableSingletons$CompositionKt f3250a = new ComposableSingletons$CompositionKt();

    public static Function2 f3251b = androidx.compose.runtime.internal.b.b(954879418, false, new Function2<i, Integer, Unit>() {
        @Override
        public Object invoke(Object obj, Object obj2) {
            invoke((i) obj, ((Number) obj2).intValue());
            return Unit.f64096a;
        }

        public final void invoke(i iVar, int i10) {
            if ((i10 & 3) == 2 && iVar.h()) {
                iVar.G();
                return;
            }
            if (k.H()) {
                k.Q(954879418, i10, -1, "androidx.compose.runtime.ComposableSingletons$CompositionKt.lambda-1.<anonymous> (Composition.kt:623)");
            }
            if (k.H()) {
                k.P();
            }
        }
    });

    public static Function2 f3252c = androidx.compose.runtime.internal.b.b(1918065384, false, new Function2<i, Integer, Unit>() {
        @Override
        public Object invoke(Object obj, Object obj2) {
            invoke((i) obj, ((Number) obj2).intValue());
            return Unit.f64096a;
        }

        public final void invoke(i iVar, int i10) {
            if ((i10 & 3) == 2 && iVar.h()) {
                iVar.G();
                return;
            }
            if (k.H()) {
                k.Q(1918065384, i10, -1, "androidx.compose.runtime.ComposableSingletons$CompositionKt.lambda-2.<anonymous> (Composition.kt:757)");
            }
            if (k.H()) {
                k.P();
            }
        }
    });

    public final Function2 a() {
        return f3251b;
    }

    public final Function2 b() {
        return f3252c;
    }
}
