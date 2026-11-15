package com.facebook.ads.redexgen.core;

import android.view.View;
import android.widget.RelativeLayout;

public final class MZ extends Y3 {
    public final C1416Zl A00;

    public MZ(C1635dL c1635dL, View.OnClickListener onClickListener) {
        super(c1635dL, onClickListener);
        this.A00 = new C1416Zl(c1635dL);
        addView(this.A00, new RelativeLayout.LayoutParams(-1, -1));
    }

    public final MZ A0F(String str) {
        new KZ(this.A00, this.A01).A05(this.A00.getHeight(), this.A00.getWidth()).A06(new C1087Mm(this)).A07(str);
        A0C();
        return this;
    }

    @Override
    public int getMediaViewId() {
        return this.A00.getId();
    }
}
