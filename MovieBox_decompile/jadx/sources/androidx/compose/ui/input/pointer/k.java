package androidx.compose.ui.input.pointer;

import android.view.MotionEvent;

final class k {

    public static final k f4695a = new k();

    private k() {
    }

    public final long a(MotionEvent motionEvent, int i10) {
        return y.h.a(motionEvent.getRawX(i10), motionEvent.getRawY(i10));
    }
}
