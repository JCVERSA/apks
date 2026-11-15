package com.facebook.ads.redexgen.core;

import android.view.View;
import android.widget.RelativeLayout;

public final class D3 extends RelativeLayout implements InterfaceC1652dc, View.OnClickListener {
    public E1 A00;
    public final DX A01;
    public final DR A02;
    public final DP A03;
    public final DN A04;
    public final C1675e0 A05;
    public static final int A07 = (int) (AbstractC1338Wl.A02 * 16.0f);
    public static final int A06 = (int) (AbstractC1338Wl.A02 * 6.0f);

    public D3(C1635dL c1635dL) {
        super(c1635dL);
        this.A04 = new DN() {
            @Override
            public final void A03(DO r3) {
                this.A00.setVisibility(0);
            }
        };
        this.A02 = new DR() {
            @Override
            public final void A03(C3Y c3y) {
                this.A00.A05.setChecked(true);
            }
        };
        this.A03 = new DP() {
            @Override
            public final void A03(DQ dq) {
                this.A00.A05.setChecked(false);
            }
        };
        this.A01 = new DX() {
            @Override
            public final void A03(C06013d c06013d) {
                this.A00.A05.setChecked(true);
            }
        };
        XP.A0Q(this, XP.A06(855638016, A06));
        this.A05 = new C1675e0(c1635dL, true);
        this.A05.setChecked(true);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(A07, A07);
        layoutParams.addRule(13);
        setVisibility(8);
        addView(this.A05, layoutParams);
        setClickable(true);
        setFocusable(true);
    }

    @Override
    public final void AAm(E1 e1) {
        this.A00 = e1;
        setOnClickListener(this);
        this.A05.setOnClickListener(this);
        if (this.A00 != null) {
            this.A00.getEventBus().A03(this.A04, this.A01, this.A02, this.A03);
        }
    }

    @Override
    public final void AJk(E1 e1) {
        if (this.A00 != null) {
            this.A00.getEventBus().A04(this.A03, this.A02, this.A01, this.A04);
        }
        setOnClickListener(null);
        this.A05.setOnClickListener(null);
        this.A00 = null;
    }

    @Override
    public final void onClick(View view) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            if (this.A00 == null) {
                return;
            }
            if (this.A00.getState() == EnumC1705eU.A07 || this.A00.getState() == EnumC1705eU.A05 || this.A00.getState() == EnumC1705eU.A06) {
                this.A00.A0h(EnumC1651db.A04, 11);
            } else if (this.A00.getState() == EnumC1705eU.A0A) {
                this.A00.A0l(true, 7);
            }
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }

    public void setPauseAccessibilityLabel(String str) {
        this.A05.setPauseAccessibilityLabel(str);
    }

    public void setPlayAccessibilityLabel(String str) {
        this.A05.setPlayAccessibilityLabel(str);
    }
}
