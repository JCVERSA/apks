package com.facebook.ads.redexgen.core;

import android.view.MotionEvent;
import android.view.View;

public class ViewOnTouchListenerC1698eN implements View.OnTouchListener {
    public final CM A00;

    public ViewOnTouchListenerC1698eN(CM cm) {
        this.A00 = cm;
    }

    @Override
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        if (this.A00.A09 != null && motionEvent.getAction() == 1) {
            if (this.A00.A09.isShowing()) {
                this.A00.A09.hide();
            } else {
                this.A00.A09.show();
            }
        }
        return true;
    }
}
