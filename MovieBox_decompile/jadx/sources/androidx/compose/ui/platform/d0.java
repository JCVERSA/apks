package androidx.compose.ui.platform;

import android.view.View;

public final class d0 {

    public static final d0 f5456a = new d0();

    private d0() {
    }

    public final void a(View view) {
        view.clearViewTranslationCallback();
    }

    public final void b(View view) {
        view.setViewTranslationCallback(a0.a(z.f5578a));
    }
}
