package com.facebook.ads.redexgen.core;

import android.view.MotionEvent;
import android.view.View;

public class ViewOnTouchListenerC1286Ui implements View.OnTouchListener {
    public final TD A00;
    public final boolean A01;

    public ViewOnTouchListenerC1286Ui(TD td, boolean z) {
        this.A00 = td;
        this.A01 = z;
    }

    @Override
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        if (this.A01) {
            return false;
        }
        return true;
    }
}
