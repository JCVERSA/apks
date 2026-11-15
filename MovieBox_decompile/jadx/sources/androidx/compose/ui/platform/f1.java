package androidx.compose.ui.platform;

import android.view.MotionEvent;

final class f1 {

    public static final f1 f5471a = new f1();

    private f1() {
    }

    public final boolean a(MotionEvent motionEvent, int i10) {
        float rawX = motionEvent.getRawX(i10);
        if (!Float.isInfinite(rawX) && !Float.isNaN(rawX)) {
            float rawY = motionEvent.getRawY(i10);
            if (!Float.isInfinite(rawY) && !Float.isNaN(rawY)) {
                return true;
            }
        }
        return false;
    }
}
