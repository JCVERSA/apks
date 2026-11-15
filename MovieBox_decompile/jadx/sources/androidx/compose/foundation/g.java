package androidx.compose.foundation;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.graphics.a5;
import androidx.compose.ui.graphics.k4;
import androidx.compose.ui.unit.LayoutDirection;

public abstract class g {

    private static final float f2316a = o0.i.g(30);

    private static final androidx.compose.ui.f f2317b;

    private static final androidx.compose.ui.f f2318c;

    public static final class a implements a5 {
        a() {
        }

        @Override
        public k4 a(long j10, LayoutDirection layoutDirection, o0.e eVar) {
            float fC0 = eVar.c0(g.b());
            return new k4.b(new y.i(0.0f, -fC0, y.m.i(j10), y.m.g(j10) + fC0));
        }
    }

    public static final class b implements a5 {
        b() {
        }

        @Override
        public k4 a(long j10, LayoutDirection layoutDirection, o0.e eVar) {
            float fC0 = eVar.c0(g.b());
            return new k4.b(new y.i(-fC0, 0.0f, y.m.i(j10) + fC0, y.m.g(j10)));
        }
    }

    static {
        androidx.compose.ui.f.a aVar = androidx.compose.ui.f.f3869a;
        f2317b = androidx.compose.ui.draw.d.a(aVar, new a());
        f2318c = androidx.compose.ui.draw.d.a(aVar, new b());
    }

    public static final androidx.compose.ui.f a(androidx.compose.ui.f fVar, Orientation orientation) {
        return fVar.e(orientation == Orientation.Vertical ? f2318c : f2317b);
    }

    public static final float b() {
        return f2316a;
    }
}
