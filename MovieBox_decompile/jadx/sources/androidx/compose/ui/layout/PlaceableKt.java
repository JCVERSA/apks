package androidx.compose.ui.layout;

import androidx.compose.ui.graphics.c4;
import androidx.compose.ui.node.LookaheadCapablePlaceable;
import androidx.compose.ui.node.y0;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

public abstract class PlaceableKt {

    private static final Function1 f4839a = new Function1<c4, Unit>() {
        public final void invoke(c4 c4Var) {
        }

        @Override
        public Object invoke(Object obj) {
            invoke((c4) obj);
            return Unit.f64096a;
        }
    };

    private static final long f4840b = o0.c.b(0, 0, 0, 0, 15, null);

    public static final g0.a a(LookaheadCapablePlaceable lookaheadCapablePlaceable) {
        return new p(lookaheadCapablePlaceable);
    }

    public static final g0.a b(y0 y0Var) {
        return new e0(y0Var);
    }
}
