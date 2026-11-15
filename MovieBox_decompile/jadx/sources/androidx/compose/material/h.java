package androidx.compose.material;

import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.w1;

public final class h {

    public static final h f3103a = new h();

    private h() {
    }

    public final androidx.compose.material.ripple.c a(long j10, boolean z10) {
        if (z10) {
            return ((double) w1.i(j10)) > 0.5d ? RippleKt.f3063e : RippleKt.f3064f;
        }
        return RippleKt.f3065g;
    }

    public final long b(long j10, boolean z10) {
        return (z10 || ((double) w1.i(j10)) >= 0.5d) ? j10 : u1.f4349b.f();
    }
}
