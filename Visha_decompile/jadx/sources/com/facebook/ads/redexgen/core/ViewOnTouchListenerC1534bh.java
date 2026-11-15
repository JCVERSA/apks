package com.facebook.ads.redexgen.core;

import android.view.MotionEvent;
import android.view.View;

public class ViewOnTouchListenerC1534bh implements View.OnTouchListener {
    public final C5K A00;

    public ViewOnTouchListenerC1534bh(C5K c5k) {
        this.A00 = c5k;
    }

    @Override
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        this.A00.A0E.dispatchTouchEvent(MotionEvent.obtain(motionEvent));
        return false;
    }
}
