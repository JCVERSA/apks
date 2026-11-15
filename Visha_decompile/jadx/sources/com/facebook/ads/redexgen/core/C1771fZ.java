package com.facebook.ads.redexgen.core;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;

public class C1771fZ implements RQ {
    public final ImageView A00;
    public final RS A01;
    public final C1178Qc A02;

    public C1771fZ(RS rs, ImageView imageView, C1178Qc c1178Qc) {
        this.A01 = rs;
        this.A00 = imageView;
        this.A02 = c1178Qc;
    }

    @Override
    public final void ADU(Drawable drawable) {
        C1178Qc.A0f(drawable, this.A00);
        this.A02.A1K(drawable);
    }
}
