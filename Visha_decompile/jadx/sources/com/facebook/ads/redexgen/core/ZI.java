package com.facebook.ads.redexgen.core;

import android.view.MotionEvent;
import android.view.View;

public class ZI implements View.OnTouchListener {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case 0:
                XP.A0K(view, ZO.A0I);
                return false;
            case 1:
                XP.A0K(view, 0);
                return false;
            default:
                return false;
        }
    }
}
