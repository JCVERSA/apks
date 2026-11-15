package androidx.compose.ui.graphics.layer;

import android.view.View;

final class v0 {

    public static final v0 f4294a = new v0();

    private v0() {
    }

    public final void a(View view) {
        view.resetPivot();
    }

    public final void b(View view, int i10) {
        view.setOutlineAmbientShadowColor(i10);
    }

    public final void c(View view, int i10) {
        view.setOutlineSpotShadowColor(i10);
    }
}
