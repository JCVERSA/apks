package androidx.compose.material.ripple;

import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.w1;

public interface i {

    public static final a f3195a = a.f3196a;

    public static final class a {

        static final a f3196a = new a();

        private a() {
        }

        public final c a(long j10, boolean z10) {
            if (z10) {
                return ((double) w1.i(j10)) > 0.5d ? RippleThemeKt.f3177b : RippleThemeKt.f3178c;
            }
            return RippleThemeKt.f3179d;
        }

        public final long b(long j10, boolean z10) {
            return (z10 || ((double) w1.i(j10)) >= 0.5d) ? j10 : u1.f4349b.f();
        }
    }

    long a(androidx.compose.runtime.i iVar, int i10);

    c b(androidx.compose.runtime.i iVar, int i10);
}
