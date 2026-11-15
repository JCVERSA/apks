package androidx.compose.foundation.layout;

import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

final class SpacerMeasurePolicy implements androidx.compose.ui.layout.t {

    public static final SpacerMeasurePolicy f2483a = new SpacerMeasurePolicy();

    private SpacerMeasurePolicy() {
    }

    @Override
    public androidx.compose.ui.layout.v c(androidx.compose.ui.layout.x xVar, List list, long j10) {
        return androidx.compose.ui.layout.w.b(xVar, o0.b.j(j10) ? o0.b.l(j10) : 0, o0.b.i(j10) ? o0.b.k(j10) : 0, null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() {
            public final void invoke(androidx.compose.ui.layout.g0.a aVar) {
            }

            @Override
            public Object invoke(Object obj) {
                invoke((androidx.compose.ui.layout.g0.a) obj);
                return Unit.f64096a;
            }
        }, 4, null);
    }
}
