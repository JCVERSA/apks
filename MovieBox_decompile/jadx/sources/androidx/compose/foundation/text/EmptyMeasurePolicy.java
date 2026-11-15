package androidx.compose.foundation.text;

import androidx.compose.ui.layout.g0;
import androidx.compose.ui.layout.t;
import androidx.compose.ui.layout.v;
import androidx.compose.ui.layout.w;
import androidx.compose.ui.layout.x;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

final class EmptyMeasurePolicy implements t {

    public static final EmptyMeasurePolicy f2883a = new EmptyMeasurePolicy();

    private static final Function1 f2884b = new Function1<g0.a, Unit>() {
        public final void invoke(g0.a aVar) {
        }

        @Override
        public Object invoke(Object obj) {
            invoke((g0.a) obj);
            return Unit.f64096a;
        }
    };

    private EmptyMeasurePolicy() {
    }

    @Override
    public v c(x xVar, List list, long j10) {
        return w.b(xVar, o0.b.l(j10), o0.b.k(j10), null, f2884b, 4, null);
    }
}
