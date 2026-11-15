package com.facebook.ads.redexgen.core;

import android.view.View;

public class ViewOnClickListenerC1422Zr implements View.OnClickListener {
    public float A00;
    public float A01;
    public View.OnClickListener A02;

    public ViewOnClickListenerC1422Zr(View.OnClickListener onClickListener) {
        this.A02 = onClickListener;
    }

    public final void A00(float f, float f2) {
        this.A00 = f;
        this.A01 = f2;
    }

    @Override
    public final void onClick(View view) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            int width = view.getWidth();
            int height = view.getHeight();
            int diff = Math.abs(width - height) / 2;
            if (width == height || ((width > height && this.A00 >= diff && this.A00 <= width - diff) || (height > width && this.A01 >= diff && this.A01 <= height - diff))) {
                this.A02.onClick(view);
            }
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
