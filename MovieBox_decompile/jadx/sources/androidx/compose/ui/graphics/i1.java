package androidx.compose.ui.graphics;

import android.graphics.BlendModeColorFilter;

final class i1 {

    public static final i1 f4142a = new i1();

    private i1() {
    }

    public final BlendModeColorFilter a(long j10, int i10) {
        f1.a();
        return e1.a(w1.j(j10), f0.a(i10));
    }

    public final d1 b(BlendModeColorFilter blendModeColorFilter) {
        return new d1(w1.b(blendModeColorFilter.getColor()), f0.b(blendModeColorFilter.getMode()), blendModeColorFilter, null);
    }
}
