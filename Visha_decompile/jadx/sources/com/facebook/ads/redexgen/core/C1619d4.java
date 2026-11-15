package com.facebook.ads.redexgen.core;

import android.text.TextUtils;
import android.util.Pair;
import android.view.View;
import android.widget.LinearLayout;

public final class C1619d4 {
    public KE A00;
    public final C1086Ml A01;
    public final C1096Mw A02;
    public final N0 A03;
    public final N9 A04;
    public final C1635dL A05;
    public final C1278Ua A06;
    public static final int A09 = (int) (AbstractC1338Wl.A02 * 4.0f);
    public static final int A07 = (int) (AbstractC1338Wl.A02 * 72.0f);
    public static final int A08 = (int) (AbstractC1338Wl.A02 * 8.0f);

    public C1619d4(C1635dL c1635dL, US us, AbstractC1910hy abstractC1910hy) {
        this.A05 = c1635dL;
        this.A06 = new C1278Ua(abstractC1910hy.A25(), us);
        this.A01 = abstractC1910hy.A1z();
        this.A02 = abstractC1910hy.A20().A0I();
        this.A04 = abstractC1910hy.A23();
        this.A03 = abstractC1910hy.A20().A0K();
    }

    private View A00(KE ke) {
        C1455aQ c1455aQ = new C1455aQ(this.A05, this.A01.A01(), true, false, false);
        c1455aQ.A04(this.A02.A0F(), this.A02.A04(), null, false, true);
        c1455aQ.setAlignment(17);
        C1449aK c1449aK = new C1449aK(this.A05);
        XP.A0K(c1449aK, 0);
        c1449aK.setRadius(50);
        new KZ(c1449aK, this.A05).A04().A07(this.A04.A01());
        LinearLayout linearLayout = new LinearLayout(this.A05);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(17);
        linearLayout.addView(c1449aK, new LinearLayout.LayoutParams(A07, A07));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(0, A08, 0, A08);
        linearLayout.addView(c1455aQ, layoutParams);
        if (ke != null) {
            XP.A0H(ke);
            linearLayout.addView(ke, layoutParams);
            if (TextUtils.isEmpty(ke.getText())) {
                XP.A0F(ke);
            }
        }
        return linearLayout;
    }

    private C06826g A01() {
        C06826g c06826g = new C06826g(this.A05);
        c06826g.setLayoutManager(new C1815gI(this.A05, 0, false));
        c06826g.setAdapter(new C0869Eb(this.A05, this.A03.A02(), A09, this.A00));
        return c06826g;
    }

    private final EnumC1618d3 A02() {
        if (!this.A03.A02().isEmpty()) {
            return EnumC1618d3.A03;
        }
        return EnumC1618d3.A02;
    }

    public final Pair<EnumC1618d3, View> A03(KE ke) {
        View viewA01;
        this.A00 = ke;
        EnumC1618d3 enumC1618d3A02 = A02();
        switch (C1617d2.A00[enumC1618d3A02.ordinal()]) {
            case 1:
                viewA01 = A01();
                break;
            default:
                viewA01 = A00(this.A00);
                break;
        }
        AbstractC1280Uc.A04(viewA01, this.A06, UZ.A0S);
        return new Pair<>(enumC1618d3A02, viewA01);
    }
}
