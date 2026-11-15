package com.mgadplus.viewgroup.dynamicview;

import android.view.MotionEvent;
import android.widget.FrameLayout;

public class ContainerFrameLayout extends FrameLayout {
    public float b;
    public float c;
    public float d;
    public float e;

    public interface a {
    }

    public final void a(float f, float f2, float f3, float f4) {
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            float x = motionEvent.getX();
            this.c = x;
            this.b = x;
            float y = motionEvent.getY();
            this.e = y;
            this.d = y;
        } else if (action == 1) {
            this.c = motionEvent.getX();
            this.e = motionEvent.getY();
            if (Math.abs(this.c - this.b) < 5.0f || Math.abs(this.e - this.d) < 5.0f) {
                a(motionEvent.getRawX(), motionEvent.getRawY(), this.c, this.e);
            }
        }
        return true;
    }

    public void setTapclickListener(a aVar) {
    }
}
