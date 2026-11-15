package com.facebook.ads.redexgen.core;

import android.view.MotionEvent;
import android.view.View;

public class ViewOnTouchListenerC1421Zq implements View.OnTouchListener {
    public final ViewOnClickListenerC1422Zr A00;

    public ViewOnTouchListenerC1421Zq(ViewOnClickListenerC1422Zr viewOnClickListenerC1422Zr) {
        this.A00 = viewOnClickListenerC1422Zr;
    }

    @Override
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 0) {
            this.A00.A00(motionEvent.getX(), motionEvent.getY());
            return false;
        }
        return false;
    }
}
