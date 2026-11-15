package com.facebook.ads.redexgen.core;

import android.view.View;
import android.view.ViewPropertyAnimator;

public final class CZ implements InterfaceC1677e2 {
    public ViewPropertyAnimator A00;
    public EnumC1676e1 A01 = EnumC1676e1.A04;
    public final int A02;
    public final View A03;
    public final boolean A04;

    public CZ(View view, int i, boolean z) {
        this.A02 = i;
        this.A03 = view;
        this.A04 = z;
    }

    private void A04(boolean z) {
        this.A01 = EnumC1676e1.A03;
        if (this.A04) {
            XP.A0J(this.A03);
        }
        if (!z) {
            this.A03.setAlpha(1.0f);
            this.A01 = EnumC1676e1.A02;
        } else {
            this.A00 = this.A03.animate().alpha(1.0f).setDuration(this.A02).setListener(new C1681e6(this));
        }
    }

    private void A05(boolean z) {
        this.A01 = EnumC1676e1.A05;
        if (!z) {
            this.A03.setAlpha(0.0f);
            this.A01 = EnumC1676e1.A04;
        } else {
            this.A00 = this.A03.animate().alpha(0.0f).setDuration(this.A02).setListener(new C1682e7(this));
        }
    }

    @Override
    public final void A42(boolean z, boolean z2) {
        if (z2) {
            A05(z);
        } else {
            A04(z);
        }
    }

    @Override
    public final EnumC1676e1 A93() {
        return this.A01;
    }

    @Override
    public final void cancel() {
        this.A03.clearAnimation();
        if (this.A00 != null) {
            this.A00.cancel();
        }
    }
}
