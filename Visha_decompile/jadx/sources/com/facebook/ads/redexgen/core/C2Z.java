package com.facebook.ads.redexgen.core;

import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.RelativeLayout;

public final class C2Z extends AbstractC0842Da implements View.OnClickListener {
    public final DX A00;
    public final DR A01;
    public final DP A02;
    public final DN A03;
    public final C1675e0 A04;

    public C2Z(C1635dL c1635dL) {
        this(c1635dL, null);
    }

    public C2Z(C1635dL c1635dL, AttributeSet attributeSet) {
        this(c1635dL, attributeSet, 0);
    }

    public C2Z(C1635dL c1635dL, AttributeSet attributeSet, int i) {
        super(c1635dL, attributeSet, i);
        this.A03 = new DN() {
            @Override
            public final void A03(DO r3) {
                this.A00.setVisibility(0);
            }
        };
        this.A01 = new DR() {
            @Override
            public final void A03(C3Y c3y) {
                this.A00.A04.setChecked(true);
            }
        };
        this.A02 = new DP() {
            @Override
            public final void A03(DQ dq) {
                this.A00.A04.setChecked(false);
            }
        };
        this.A00 = new DX() {
            @Override
            public final void A03(C06013d c06013d) {
                this.A00.A04.setChecked(true);
            }
        };
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.A04 = new C1675e0(c1635dL);
        this.A04.setChecked(true);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) (displayMetrics.density * 25.0f), (int) (displayMetrics.density * 25.0f));
        setVisibility(8);
        addView(this.A04, layoutParams);
        setClickable(true);
        setFocusable(true);
    }

    @Override
    public final void A07() {
        super.A07();
        setOnClickListener(this);
        this.A04.setOnClickListener(this);
        if (getVideoView() != null) {
            getVideoView().getEventBus().A03(this.A03, this.A00, this.A01, this.A02);
        }
    }

    @Override
    public final void A08() {
        if (getVideoView() != null) {
            getVideoView().getEventBus().A04(this.A02, this.A01, this.A00, this.A03);
        }
        setOnClickListener(null);
        this.A04.setOnClickListener(null);
        super.A08();
    }

    @Override
    public final void onClick(View view) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            E1 videoView = getVideoView();
            if (videoView == null) {
                return;
            }
            if (videoView.getState() == EnumC1705eU.A07 || videoView.getState() == EnumC1705eU.A05 || videoView.getState() == EnumC1705eU.A06) {
                videoView.A0h(EnumC1651db.A04, 11);
            } else if (videoView.getState() == EnumC1705eU.A0A) {
                videoView.A0l(true, 7);
            }
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }

    public void setPauseAccessibilityLabel(String str) {
        this.A04.setPauseAccessibilityLabel(str);
    }

    public void setPlayAccessibilityLabel(String str) {
        this.A04.setPlayAccessibilityLabel(str);
    }
}
