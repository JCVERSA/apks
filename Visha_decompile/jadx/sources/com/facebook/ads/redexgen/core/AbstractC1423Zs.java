package com.facebook.ads.redexgen.core;

import android.view.View;

public abstract class AbstractC1423Zs {
    public static void A00(View view, boolean z, View.OnClickListener onClickListener) {
        if (!z) {
            view.setOnClickListener(onClickListener);
        } else {
            if (!z) {
                return;
            }
            ViewOnClickListenerC1422Zr viewOnClickListenerC1422Zr = new ViewOnClickListenerC1422Zr(onClickListener);
            view.setOnClickListener(viewOnClickListenerC1422Zr);
            view.setOnTouchListener(new ViewOnTouchListenerC1421Zq(viewOnClickListenerC1422Zr));
        }
    }
}
