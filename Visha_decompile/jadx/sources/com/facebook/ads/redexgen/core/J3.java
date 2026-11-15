package com.facebook.ads.redexgen.core;

import android.widget.ImageView;
import android.widget.RelativeLayout;

public class J3 implements InterfaceC1419Zo {
    public final C0989Is A00;

    public J3(C0989Is c0989Is) {
        this.A00 = c0989Is;
    }

    @Override
    public final void ADT(C1418Zn c1418Zn) {
        if (this.A00.A02 != null && c1418Zn.A00() != null) {
            this.A00.A02.setImageBitmap(c1418Zn.A00());
            this.A00.A02.setScaleType(ImageView.ScaleType.CENTER_CROP);
            this.A00.A02.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        }
    }
}
