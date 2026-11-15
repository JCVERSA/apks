package com.facebook.ads.redexgen.core;

import android.animation.AnimatorListenerAdapter;
import android.os.Handler;
import android.view.View;

public final class D4 implements InterfaceC1652dc {
    public View A00;
    public E1 A01;
    public EnumC1666dr A02;
    public boolean A03;
    public final Handler A04;
    public final DX A05;
    public final DR A06;
    public final DP A07;
    public final DG A08;
    public final boolean A09;
    public final boolean A0A;

    public D4(View view, EnumC1666dr enumC1666dr, boolean z) {
        this(view, enumC1666dr, z, false);
    }

    public D4(View view, EnumC1666dr enumC1666dr, boolean z, boolean z2) {
        this.A06 = new DR() {
            @Override
            public final void A03(C3Y c3y) {
                this.A00.A06(1, 0);
            }
        };
        this.A07 = new DP() {
            @Override
            public final void A03(DQ dq) {
                if (!this.A00.A03) {
                    return;
                }
                if (this.A00.A02 == EnumC1666dr.A02 || this.A00.A09) {
                    this.A00.A02 = null;
                    this.A00.A05();
                } else {
                    this.A00.A06(0, 8);
                }
            }
        };
        this.A05 = new DX() {
            @Override
            public final void A03(C06013d c06013d) {
                if (this.A00.A02 == EnumC1666dr.A03) {
                    return;
                }
                this.A00.A00.setAlpha(1.0f);
                this.A00.A00.setVisibility(0);
            }
        };
        this.A08 = new C05962y(this);
        this.A03 = true;
        this.A04 = new Handler();
        this.A09 = z;
        this.A0A = z2;
        A08(view, enumC1666dr);
    }

    public void A05() {
        this.A00.animate().alpha(0.0f).setDuration(500L).setListener(new C1665dq(this));
    }

    public void A06(int i, int i2) {
        this.A04.removeCallbacksAndMessages(null);
        this.A00.clearAnimation();
        this.A00.setAlpha(i);
        this.A00.setVisibility(i2);
    }

    public void A07(AnimatorListenerAdapter animatorListenerAdapter) {
        this.A00.setVisibility(0);
        this.A00.animate().alpha(1.0f).setDuration(500L).setListener(animatorListenerAdapter);
    }

    private final void A08(View view, EnumC1666dr enumC1666dr) {
        this.A02 = enumC1666dr;
        this.A00 = view;
        this.A00.clearAnimation();
        if (enumC1666dr == EnumC1666dr.A03) {
            this.A00.setAlpha(0.0f);
            this.A00.setVisibility(8);
        } else {
            this.A00.setAlpha(1.0f);
            this.A00.setVisibility(0);
        }
    }

    @Override
    public final void AAm(E1 e1) {
        this.A01 = e1;
        e1.getEventBus().A03(this.A06, this.A07, this.A08, this.A05);
    }

    @Override
    public final void AJk(E1 e1) {
        A06(1, 0);
        e1.getEventBus().A04(this.A05, this.A08, this.A07, this.A06);
        this.A01 = null;
    }
}
