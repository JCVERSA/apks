package androidx.compose.ui.platform;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;

public abstract class InspectableValueKt {

    private static final Function1 f5354a = new Function1<z0, Unit>() {
        public final void invoke(z0 z0Var) {
        }

        @Override
        public Object invoke(Object obj) {
            invoke((z0) obj);
            return Unit.f64096a;
        }
    };

    private static boolean f5355b;

    public static final Function1 a() {
        return f5354a;
    }

    public static final boolean b() {
        return f5355b;
    }
}
