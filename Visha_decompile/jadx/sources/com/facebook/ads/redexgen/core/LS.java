package com.facebook.ads.redexgen.core;

import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import java.util.Arrays;

public final class LS extends AbstractC1382Yd {
    public static byte[] A05;
    public static final int A06;
    public static final int A07;
    public static final int A08;
    public final ImageView A00;
    public final LinearLayout A01;
    public final ScrollView A02;
    public final O2 A03;
    public final C1635dL A04;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 24);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A05 = new byte[]{-52, -21, -19, -11, 120, -95, -92, -88, -102, 85, 118, -103, 85, -121, -102, -91, -92, -89, -87, -98, -93, -100};
    }

    static {
        A01();
        A08 = (int) (AbstractC1338Wl.A02 * 8.0f);
        A07 = (int) (AbstractC1338Wl.A02 * 10.0f);
        A06 = (int) (AbstractC1338Wl.A02 * 44.0f);
    }

    public LS(C1635dL c1635dL, US us, String str) {
        super(c1635dL, us, str);
        this.A04 = c1635dL;
        this.A03 = O3.A00(this.A04.A02());
        this.A00 = new ImageView(getContext());
        this.A00.setPadding(A07, A07, A07, A07);
        this.A00.setColorFilter(-10459280);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(A06, A06);
        layoutParams.gravity = 3;
        this.A00.setLayoutParams(layoutParams);
        this.A02 = new ScrollView(getContext());
        this.A02.setFillViewport(true);
        XP.A0K(this.A02, -218103809);
        this.A01 = new LinearLayout(getContext());
        this.A01.setOrientation(1);
        this.A01.setPadding(A08, A08, A08, A08);
        this.A02.addView(this.A01, new FrameLayout.LayoutParams(-1, -2));
        addView(this.A02, new FrameLayout.LayoutParams(-1, -1));
    }

    @Override
    public final void A0N() {
        this.A00.setImageBitmap(XY.A01(XX.CROSS));
        this.A00.setOnClickListener(new ViewOnClickListenerC1401Yw(this));
        this.A00.setContentDescription(A00(4, 18, 29));
        C1386Yh c1386Yh = new C1386Yh(this.A04);
        c1386Yh.setData(this.A03.A0H(), XX.HIDE_AD);
        c1386Yh.setOnClickListener(new ViewOnClickListenerC1402Yx(this, c1386Yh));
        C1386Yh c1386Yh2 = new C1386Yh(this.A04);
        c1386Yh2.setData(this.A03.A0L(), XX.REPORT_AD);
        c1386Yh2.setOnClickListener(new ViewOnClickListenerC1403Yy(this, c1386Yh2));
        C1386Yh c1386Yh3 = new C1386Yh(this.A04);
        c1386Yh3.setData(this.A03.A0M(), XX.AD_CHOICES_ICON);
        c1386Yh3.setOnClickListener(new ViewOnClickListenerC1404Yz(this, c1386Yh3));
        LinearLayout.LayoutParams menuParams = new LinearLayout.LayoutParams(-2, -2);
        menuParams.setMargins(A08, A08, A08, A08);
        menuParams.gravity = 17;
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, 0);
        layoutParams.gravity = 17;
        layoutParams.weight = 1.0f;
        XP.A0R(this.A01);
        this.A01.removeAllViews();
        this.A01.addView(this.A00);
        this.A01.addView(linearLayout, layoutParams);
        linearLayout.addView(c1386Yh, menuParams);
        linearLayout.addView(c1386Yh2, menuParams);
        linearLayout.addView(c1386Yh3, menuParams);
    }

    @Override
    public final void A0O() {
        XP.A0G(this);
        XP.A0H(this);
    }

    @Override
    public final void A0P(O6 o6, O4 o4) {
        String strA0H;
        XX xx;
        int i;
        this.A00.setOnClickListener(null);
        if (o4 == O4.A06) {
            strA0H = this.A03.A0F();
            xx = XX.REPORT_AD;
            i = -552389;
        } else {
            strA0H = this.A03.A0H();
            xx = XX.HIDE_AD;
            i = -13272859;
        }
        C1380Yb c1380YbA0I = new C1380Yb(this.A04, this.A0B).A0I(strA0H);
        String title = this.A03.A0D();
        C1380Yb c1380YbA0H = c1380YbA0I.A0H(title);
        String title2 = o6.A04();
        C1381Yc adHiddenView = c1380YbA0H.A0F(title2).A0K(false).A0E(xx).A0D(i).A0L(false).A0J(false).A0M();
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
        layoutParams.gravity = 17;
        layoutParams.weight = 1.0f;
        XP.A0R(this.A01);
        this.A02.fullScroll(33);
        this.A01.removeAllViews();
        this.A01.addView(adHiddenView, layoutParams);
    }

    @Override
    public final void A0Q(O6 o6, O4 o4) {
        boolean isReportFlow = o4 == O4.A06;
        C1400Yv c1400Yv = new C1400Yv(this.A04, o6, this.A0B, isReportFlow ? XX.REPORT_AD : XX.HIDE_AD);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, 0);
        layoutParams.gravity = 17;
        layoutParams.weight = 1.0f;
        this.A00.setImageBitmap(XY.A01(XX.BACK_ARROW));
        this.A00.setOnClickListener(new Z0(this));
        this.A00.setContentDescription(A00(0, 4, 114));
        XP.A0R(this.A01);
        this.A02.fullScroll(33);
        this.A01.removeAllViews();
        this.A01.addView(this.A00);
        this.A01.addView(c1400Yv, layoutParams);
    }

    @Override
    public final boolean A0R() {
        return true;
    }
}
