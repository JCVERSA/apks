package com.facebook.ads.redexgen.core;

import android.animation.ValueAnimator;
import android.view.View;

public final class CU implements InterfaceC1677e2 {
    public ValueAnimator A00;
    public EnumC1676e1 A01 = EnumC1676e1.A04;
    public final int A02;
    public final int A03;
    public final int A04;
    public final View A05;

    public CU(View view, int i, int i2, int i3) {
        this.A05 = view;
        this.A02 = i;
        this.A04 = i2;
        this.A03 = i3;
    }

    private ValueAnimator A00(View view, int i, int i2) {
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(i, i2);
        valueAnimatorOfInt.setDuration(this.A02);
        valueAnimatorOfInt.addUpdateListener(new C1686eB(this, view));
        return valueAnimatorOfInt;
    }

    public void A04() {
        if (this.A00 != null) {
            this.A00.removeAllListeners();
            this.A00 = null;
        }
    }

    public void A08(boolean z) {
        if (z) {
            this.A01 = EnumC1676e1.A05;
            this.A00 = A00(this.A05, this.A03, this.A04);
            this.A00.addListener(new C1685eA(this));
            this.A00.start();
            return;
        }
        this.A05.setTranslationY(this.A04);
        XP.A0F(this.A05);
        this.A01 = EnumC1676e1.A04;
    }

    public void A09(boolean z) {
        XP.A0J(this.A05);
        if (z) {
            this.A01 = EnumC1676e1.A03;
            this.A00 = A00(this.A05, this.A04, this.A03);
            this.A00.addListener(new C1684e9(this));
            this.A00.start();
            return;
        }
        this.A05.setTranslationY(this.A03);
        this.A01 = EnumC1676e1.A02;
    }

    @Override
    public final void A42(boolean z, boolean z2) {
        if (z2) {
            A08(z);
        } else {
            A09(z);
        }
    }

    @Override
    public final EnumC1676e1 A93() {
        return this.A01;
    }

    @Override
    public final void cancel() {
        if (this.A00 != null) {
            this.A00.cancel();
        }
    }
}
