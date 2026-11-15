package com.facebook.ads.redexgen.core;

import android.widget.ImageView;
import android.widget.RelativeLayout;

public final class C0868Ea extends C1450aL {
    public final ImageView A00;
    public final C1635dL A01;

    public C0868Ea(C1635dL c1635dL) {
        super(c1635dL);
        this.A01 = c1635dL;
        this.A00 = new ImageView(c1635dL);
        this.A00.setAdjustViewBounds(true);
        addView(this.A00, new RelativeLayout.LayoutParams(-2, -1));
    }

    public final void A00(String str) {
        KZ downloadImageTask = new KZ(this.A00, this.A01);
        downloadImageTask.A04();
        downloadImageTask.A07(str);
    }
}
