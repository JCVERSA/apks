package com.facebook.ads.redexgen.core;

import android.view.MotionEvent;
import android.view.View;

public final class DH extends C1256Td {
    public final MotionEvent A00;
    public final View A01;

    public DH(View view, MotionEvent motionEvent) {
        this.A01 = view;
        this.A00 = motionEvent;
    }

    public final MotionEvent A00() {
        return this.A00;
    }
}
