package com.facebook.ads.redexgen.core;

import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;

public final class EW extends C1450aL {
    public final ImageView A00;
    public final C1635dL A01;

    public EW(C1635dL c1635dL) {
        super(c1635dL);
        this.A01 = c1635dL;
        setRadius(30);
        this.A00 = new ImageView(c1635dL);
        this.A00.setAdjustViewBounds(true);
        addView(this.A00, new RelativeLayout.LayoutParams(-2, -1));
    }

    public final void A00(C1418Zn c1418Zn) {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        layoutParams.width = -2;
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (viewGroup != null) {
            viewGroup.updateViewLayout(this, layoutParams);
        }
    }

    public void setUrl(String str) {
        KZ kz = new KZ(this.A00, this.A01);
        kz.A04();
        kz.A07(str);
        kz.A06(new InterfaceC1419Zo() {
            @Override
            public final void ADT(C1418Zn c1418Zn) {
                this.A00.A00(c1418Zn);
            }
        });
    }
}
