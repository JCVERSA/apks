package com.facebook.ads.redexgen.core;

import android.view.View;
import android.widget.RelativeLayout;

public final class C6P extends C1794fw {
    public C6P(R0 r0) {
        super(r0);
    }

    @Override
    public final void A3w(View view, int i, RelativeLayout.LayoutParams layoutParams) {
        super.A3w(view, i, layoutParams);
    }

    @Override
    public final void A3x(View view, RelativeLayout.LayoutParams layoutParams) {
        super.A3x(view, layoutParams);
    }

    @Override
    public final void A4b(String str) {
        super.A4b(str);
        if (this.A00.get() == null) {
            return;
        }
        String strA03 = EnumC1657dh.A08.A03();
        String rewardedVideoError = EnumC1657dh.A09.A03();
        if (str.equals(strA03)) {
            this.A00.get().finish(11);
        } else if (str.equals(rewardedVideoError)) {
            this.A00.get().finish(12);
        }
    }

    @Override
    public final void A4c(String str, C1256Td c1256Td) {
        super.A4c(str, c1256Td);
    }

    @Override
    public final void AAf(String str, N9 n9) {
        super.AAf(str, n9);
    }

    @Override
    public final void ACf(int i) {
        super.ACf(i);
    }
}
