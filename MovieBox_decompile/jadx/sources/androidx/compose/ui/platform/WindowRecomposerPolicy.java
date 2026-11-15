package androidx.compose.ui.platform;

import android.view.View;
import androidx.compose.runtime.Recomposer;
import java.util.concurrent.atomic.AtomicReference;

public final class WindowRecomposerPolicy {

    public static final WindowRecomposerPolicy f5398a = new WindowRecomposerPolicy();

    private static final AtomicReference f5399b = new AtomicReference(y2.f5575a.c());

    public static final int f5400c = 8;

    private WindowRecomposerPolicy() {
    }

    public final Recomposer a(View view) {
        Recomposer recomposerA = ((y2) f5399b.get()).a(view);
        WindowRecomposer_androidKt.i(view, recomposerA);
        view.addOnAttachStateChangeListener(new a(kotlinx.coroutines.k.d(kotlinx.coroutines.n1.f64932a, kotlinx.coroutines.android.g.d(view.getHandler(), "windowRecomposer cleanup").r(), null, new WindowRecomposerPolicy$createAndInstallWindowRecomposer$unsetJob$1(recomposerA, view, null), 2, null)));
        return recomposerA;
    }

    public static final class a implements View.OnAttachStateChangeListener {

        final kotlinx.coroutines.t1 f5401a;

        a(kotlinx.coroutines.t1 t1Var) {
            this.f5401a = t1Var;
        }

        @Override
        public void onViewDetachedFromWindow(View view) {
            view.removeOnAttachStateChangeListener(this);
            kotlinx.coroutines.t1.a.b(this.f5401a, null, 1, null);
        }

        @Override
        public void onViewAttachedToWindow(View view) {
        }
    }
}
