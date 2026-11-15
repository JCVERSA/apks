package com.facebook.ads.redexgen.core;

import android.view.MotionEvent;
import android.view.View;

public class ViewOnTouchListenerC1613cy implements View.OnTouchListener {
    public final C1614cz A00;

    public ViewOnTouchListenerC1613cy(C1614cz c1614cz) {
        this.A00 = c1614cz;
    }

    @Override
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            this.A00.A01 = System.currentTimeMillis();
            C1614cz.A00(this.A00);
            this.A00.A07.ABJ(this.A00.A04.A25(), new C1420Zp().A03(this.A00.getViewabilityChecker()).A02(this.A00.getTouchDataRecorder()).A05());
            return false;
        }
        return false;
    }
}
