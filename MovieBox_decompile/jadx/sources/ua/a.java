package ua;

import android.R;
import android.app.Dialog;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;

public class a implements View.OnTouchListener {

    private final Dialog f73013a;

    private final int f73014b;

    private final int f73015c;

    private final int f73016d;

    public a(Dialog dialog, Rect rect) {
        this.f73013a = dialog;
        this.f73014b = rect.left;
        this.f73015c = rect.top;
        this.f73016d = ViewConfiguration.get(dialog.getContext()).getScaledWindowTouchSlop();
    }

    @Override
    public boolean onTouch(View view, MotionEvent motionEvent) {
        View viewFindViewById = view.findViewById(R.id.content);
        int left = this.f73014b + viewFindViewById.getLeft();
        int width = viewFindViewById.getWidth() + left;
        int top = this.f73015c + viewFindViewById.getTop();
        if (new RectF(left, top, width, viewFindViewById.getHeight() + top).contains(motionEvent.getX(), motionEvent.getY())) {
            return false;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        if (motionEvent.getAction() == 1) {
            motionEventObtain.setAction(4);
        }
        if (Build.VERSION.SDK_INT < 28) {
            motionEventObtain.setAction(0);
            int i10 = this.f73016d;
            motionEventObtain.setLocation((-i10) - 1, (-i10) - 1);
        }
        view.performClick();
        return this.f73013a.onTouchEvent(motionEventObtain);
    }
}
