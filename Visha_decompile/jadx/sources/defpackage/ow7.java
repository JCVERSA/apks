package defpackage;

import android.view.MotionEvent;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;

public final class ow7 implements ue7 {
    public static final ow7 a = new ow7();

    @Override
    public boolean a(ViewGroup viewGroup, MotionEvent motionEvent) {
        y45.j(viewGroup, TypedValues.AttributesType.S_TARGET);
        y45.j(motionEvent, NotificationCompat.CATEGORY_EVENT);
        ViewParent parent = viewGroup.getParent();
        if (parent == null) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            parent.requestDisallowInterceptTouchEvent(true);
        } else if (actionMasked == 1 || actionMasked == 3) {
            parent.requestDisallowInterceptTouchEvent(false);
        }
        return false;
    }
}
