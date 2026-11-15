package com.facebook.ads.redexgen.core;

import android.view.View;

public class ViewOnAttachStateChangeListenerC1279Ub implements View.OnAttachStateChangeListener {
    public final UZ A00;
    public final C1278Ua A01;

    public ViewOnAttachStateChangeListenerC1279Ub(C1278Ua c1278Ua, UZ uz) {
        this.A01 = c1278Ua;
        this.A00 = uz;
    }

    @Override
    public final void onViewAttachedToWindow(View view) {
        this.A01.A04(this.A00, null);
    }

    @Override
    public final void onViewDetachedFromWindow(View view) {
    }
}
