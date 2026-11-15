package p7;

import android.view.GestureDetector;
import android.view.MotionEvent;
import com.contrarywind.view.WheelView;

public final class a extends GestureDetector.SimpleOnGestureListener {

    private final WheelView f69076a;

    public a(WheelView wheelView) {
        this.f69076a = wheelView;
    }

    @Override
    public final boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
        this.f69076a.scrollBy(f11);
        return true;
    }
}
