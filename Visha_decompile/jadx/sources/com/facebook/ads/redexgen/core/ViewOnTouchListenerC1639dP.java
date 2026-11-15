package com.facebook.ads.redexgen.core;

import android.view.MotionEvent;
import android.view.View;

public class ViewOnTouchListenerC1639dP implements View.OnTouchListener {
    public final E1 A00;

    public ViewOnTouchListenerC1639dP(E1 e1) {
        this.A00 = e1;
    }

    @Override
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        this.A00.A0C.A02(new DH(view, motionEvent));
        return false;
    }
}
