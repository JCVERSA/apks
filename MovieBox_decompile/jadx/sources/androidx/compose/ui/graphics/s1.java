package androidx.compose.ui.graphics;

import android.graphics.Canvas;

final class s1 {

    public static final s1 f4327a = new s1();

    private s1() {
    }

    public final void a(Canvas canvas, boolean z10) {
        if (z10) {
            canvas.enableZ();
        } else {
            canvas.disableZ();
        }
    }
}
