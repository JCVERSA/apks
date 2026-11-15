package com.facebook.ads.redexgen.core;

import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;

public final class C0830Co implements InterfaceC1677e2 {
    public int A00;
    public ValueAnimator A01;
    public EnumC1676e1 A02 = EnumC1676e1.A04;
    public final int A03;
    public final int A04;
    public final View A05;

    public C0830Co(View view, int i, int i2, int i3) {
        this.A05 = view;
        this.A03 = i;
        this.A00 = i2;
        this.A04 = i3;
    }

    private ValueAnimator A00(int i, int i2, View view) {
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(i, i2);
        valueAnimatorOfInt.setDuration(this.A03);
        valueAnimatorOfInt.addUpdateListener(new C1680e5(this, view));
        return valueAnimatorOfInt;
    }

    public void A07(boolean z) {
        if (z) {
            this.A02 = EnumC1676e1.A05;
            this.A01 = A00(this.A00, this.A04, this.A05);
            this.A01.addListener(new C1679e4(this));
            this.A01.start();
            return;
        }
        ViewGroup.LayoutParams layoutParams = this.A05.getLayoutParams();
        layoutParams.height = this.A04;
        this.A05.setLayoutParams(layoutParams);
        XP.A0F(this.A05);
        this.A02 = EnumC1676e1.A04;
    }

    public void A08(boolean z) {
        XP.A0J(this.A05);
        if (z) {
            this.A02 = EnumC1676e1.A03;
            this.A01 = A00(this.A04, this.A00, this.A05);
            this.A01.addListener(new C1678e3(this));
            this.A01.start();
            return;
        }
        ViewGroup.LayoutParams layoutParams = this.A05.getLayoutParams();
        layoutParams.height = this.A00;
        this.A05.setLayoutParams(layoutParams);
        this.A02 = EnumC1676e1.A02;
    }

    @Override
    public final void A42(boolean z, boolean z2) {
        if (z2) {
            A07(z);
        } else {
            A08(z);
        }
    }

    @Override
    public final EnumC1676e1 A93() {
        return this.A02;
    }

    @Override
    public final void cancel() {
        if (this.A01 != null) {
            this.A01.cancel();
        }
    }
}
