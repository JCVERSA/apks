package com.facebook.ads.redexgen.core;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import java.lang.ref.WeakReference;

public final class C1074Lz extends Y3 {
    public C06063i A00;
    public boolean A01;
    public boolean A02;
    public final ViewGroup A03;
    public final SF A04;
    public final US A05;
    public final E1 A06;
    public final DX A07;
    public final DV A08;
    public final D6 A09;
    public final D3 A0A;
    public final D1 A0B;
    public final AbstractC1707eW A0C;
    public final C1708eX A0D;

    public C1074Lz(C1635dL c1635dL, US us, SF sf, C1278Ua c1278Ua, View.OnClickListener onClickListener) {
        super(c1635dL, onClickListener);
        this.A02 = false;
        this.A01 = false;
        this.A07 = new DX() {
            @Override
            public final void A03(C06013d c06013d) {
                if (!U7.A1S(((Y3) this.A00).A01)) {
                    return;
                }
                this.A00.A06.A0h(EnumC1651db.A02, 30);
            }
        };
        this.A08 = new AnonymousClass62(this);
        this.A05 = us;
        this.A04 = sf;
        this.A0C = A00();
        this.A0D = A07();
        this.A03 = new FrameLayout(c1635dL);
        addView(this.A03, new RelativeLayout.LayoutParams(-1, -1));
        this.A06 = A01(c1278Ua);
        this.A0A = A04();
        this.A09 = A03();
        this.A0B = A06(c1278Ua);
        A0C();
    }

    private MA A00() {
        return new MA(this);
    }

    private E1 A01(C1278Ua c1278Ua) {
        E1 e1 = new E1(super.A01);
        XP.A0I(e1);
        e1.setFunnelLoggingHandler(c1278Ua);
        e1.getEventBus().A03(this.A07, this.A08);
        if (U7.A1U(super.A01)) {
            e1.setVolume(0.0f);
        }
        if (!U7.A1P(super.A01)) {
            e1.setOnClickListener(new Y5(this));
        }
        RelativeLayout.LayoutParams videoLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
        videoLayoutParams.addRule(13);
        addView(e1, videoLayoutParams);
        return e1;
    }

    private D6 A03() {
        D6 d6 = new D6(super.A01);
        d6.setTextColor(-1);
        XP.A0W(d6, false, 12);
        d6.setGravity(17);
        this.A06.A0i(d6);
        return d6;
    }

    private D3 A04() {
        D3 d3 = new D3(super.A01);
        this.A06.A0i(d3);
        return d3;
    }

    private D1 A06(C1278Ua c1278Ua) {
        D1 d1 = new D1(super.A01, c1278Ua, true);
        d1.setBackgroundPaintColor(855638016);
        this.A06.A0i(d1);
        return d1;
    }

    private C1708eX A07() {
        return new C1708eX(this, 50, true, new WeakReference(this.A0C), super.A01);
    }

    private void A08() {
        if (getVisibility() == 0 && this.A01 && hasWindowFocus()) {
            this.A0D.A0U();
        } else {
            this.A0D.A0V();
        }
    }

    @Override
    public final void A0A() {
        this.A0D.A0V();
        this.A06.getEventBus().A04(this.A07, this.A08);
        this.A06.A0Z();
        XP.A0H(this.A06);
        if (this.A00 != null) {
            this.A00.A0p();
        }
    }

    @Override
    public final void A0B() {
        this.A0B.A09();
        this.A02 = true;
        this.A0D.A0U();
    }

    @Override
    public final void A0C() {
        super.A0C();
        if (U7.A1V(super.A01)) {
            XP.A0H(this.A0A);
            this.A0A.setLayoutParams(A00(true, false));
            addView(this.A0A);
        }
        if (U7.A1R(super.A01)) {
            XP.A0H(this.A09);
            this.A09.setLayoutParams(A00(true, true));
            addView(this.A09);
        }
        if (U7.A1T(super.A01)) {
            XP.A0H(this.A0B);
            this.A0B.setLayoutParams(A00(false, false));
            addView(this.A0B);
        }
    }

    @Override
    public final boolean A0D() {
        return this.A06.A0o();
    }

    @Override
    public final boolean A0E() {
        if (getMeasuredWidth() <= 0 || this.A06.getMeasuredWidth() <= 0) {
            return true;
        }
        int measuredWidth = (int) (((double) (getMeasuredWidth() - this.A06.getMeasuredWidth())) / 2.0d);
        int i = Y3.A05;
        int widthGap = Y3.A04;
        return measuredWidth > i + (widthGap * 2);
    }

    public final C1074Lz A0F(String str, String str2, String str3, String str4, String str5) {
        this.A06.setVideoURI(this.A04.A0T(str2));
        this.A00 = new C06063i(super.A01, this.A05, this.A06, str);
        if (str3 != null && !TextUtils.isEmpty(str3)) {
            new KZ(this.A03, super.A01).A05(this.A03.getHeight(), this.A03.getWidth()).A06(new M0(this)).A07(str3);
        }
        if (str5 != null) {
            this.A0A.setPlayAccessibilityLabel(str4);
        }
        if (str5 != null) {
            this.A0A.setPauseAccessibilityLabel(str5);
        }
        return this;
    }

    @Override
    public int getMediaViewId() {
        return this.A06.getId();
    }

    @Override
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.A01 = true;
        A08();
    }

    @Override
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.A01 = false;
        A08();
    }

    @Override
    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        A08();
    }

    @Override
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        A08();
    }
}
