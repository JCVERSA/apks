package com.facebook.ads.redexgen.core;

import android.view.MotionEvent;
import android.view.View;

public class ViewOnTouchListenerC1592cd implements View.OnTouchListener {
    public final C06153r A00;

    public ViewOnTouchListenerC1592cd(C06153r c06153r) {
        this.A00 = c06153r;
    }

    @Override
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getX() >= this.A00.A0H.getX() && motionEvent.getX() <= this.A00.A0H.getX() + this.A00.A0H.getWidth() && motionEvent.getY() >= this.A00.A0H.getY() && motionEvent.getY() <= this.A00.A0H.getY() + this.A00.A0H.getHeight()) {
            if (this.A00.A03 != null) {
                this.A00.A03.dispatchTouchEvent(motionEvent);
                return true;
            }
            return true;
        }
        return false;
    }
}
