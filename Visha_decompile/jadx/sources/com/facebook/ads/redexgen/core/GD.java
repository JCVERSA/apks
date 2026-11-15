package com.facebook.ads.redexgen.core;

import android.widget.ImageView;
import android.widget.RelativeLayout;

public class GD implements InterfaceC1419Zo {
    public final C4K A00;

    public GD(C4K c4k) {
        this.A00 = c4k;
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
