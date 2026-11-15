package com.facebook.ads.redexgen.core;

import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import java.util.Arrays;

public final class C1012Jp extends AbstractC1469ae implements Wf {
    public static byte[] A05;
    public static final int A06;
    public final AbstractC1910hy A00;
    public final C1334Wh A01;
    public final InterfaceC1366Xn A02;
    public final C1501bA A03;
    public final C1601cm A04;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 86);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A05 = new byte[]{38, 42, 30, 36, 34};
    }

    static {
        A01();
        A06 = Resources.getSystem().getDisplayMetrics().widthPixels;
    }

    public C1012Jp(C1473ai c1473ai, boolean z) {
        int id;
        int iA01;
        super(c1473ai, z);
        this.A02 = c1473ai.A0D();
        this.A00 = c1473ai.A05();
        this.A03 = new C1501bA(c1473ai.A06(), c1473ai.A02());
        this.A03.A01(getTitleDescContainer(), z);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(12);
        layoutParams.setMargins(AbstractC1469ae.A07, AbstractC1469ae.A07, AbstractC1469ae.A07, AbstractC1469ae.A07);
        getCtaButton().setLayoutParams(layoutParams);
        if (c1473ai.A0I()) {
            this.A04 = new C1601cm(c1473ai.A06());
            this.A04.setPageDetails(c1473ai.A05().A23());
            XP.A0E(1007, this.A04);
            RelativeLayout.LayoutParams pageDetailsParams = new RelativeLayout.LayoutParams(-2, -2);
            pageDetailsParams.addRule(2, getCtaButton().getId());
            pageDetailsParams.setMargins(AbstractC1469ae.A07, AbstractC1469ae.A07 - (AbstractC1469ae.A07 / 2), AbstractC1469ae.A07, 0);
            this.A04.setLayoutParams(pageDetailsParams);
            id = this.A04.getId();
            iA01 = c1473ai.A01() - (AbstractC1469ae.A07 / 2);
        } else {
            id = getCtaButton().getId();
            iA01 = c1473ai.A01();
            this.A04 = null;
        }
        FrameLayout insideContainerLayout = new FrameLayout(c1473ai.A06());
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams2.addRule(10);
        layoutParams2.addRule(2, id);
        layoutParams2.setMargins(0, iA01, 0, 0);
        insideContainerLayout.setLayoutParams(layoutParams2);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, -2);
        layoutParams3.gravity = 17;
        layoutParams3.setMargins(AbstractC1469ae.A07, 0, AbstractC1469ae.A07, 0);
        insideContainerLayout.addView(this.A03, layoutParams3);
        addView(insideContainerLayout);
        if (this.A04 != null) {
            addView(this.A04);
        }
        addView(getCtaButton());
        getCtaButton().A0F(c1473ai.A05(), c1473ai.A0C());
        View viewA02 = c1473ai.A02();
        this.A01 = C1334Wh.A00(c1473ai.A06(), this.A00, this);
        C1333Wg c1333WgA02 = this.A01.A02(this.A00);
        c1473ai.A06().A0H().A00(c1333WgA02.A01);
        getCtaButton().setCreativeAsCtaLoggingHelper(this.A01);
        if (viewA02 != null && c1333WgA02.A00) {
            viewA02.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.A00.A1O(view);
                }
            });
        } else if (viewA02 != null && U7.A1I(getAdContextWrapper())) {
            AbstractC1423Zs.A00(viewA02, U7.A1J(getAdContextWrapper()), new ViewOnClickListenerC1480ap(this));
        }
        if (U7.A17(c1473ai.A06())) {
            getTitleDescContainer().setCTAClickListener(getCtaButton());
            if (c1473ai.A0C() != null) {
                c1473ai.A0C().setCTAClickListener(getCtaButton());
            }
        }
        if (this.A04 != null && U7.A18(c1473ai.A06())) {
            this.A04.setOnClickListener(getCtaButton());
        }
    }

    @Override
    public final boolean A0C() {
        return false;
    }

    @Override
    public final boolean A0D() {
        return false;
    }

    @Override
    public final void A1B() {
        super.A1B();
        this.A01.A03();
    }

    @Override
    public final void A1G(C1089Mp c1089Mp, String str, double d, Bundle bundle) {
        super.A1G(c1089Mp, str, d, bundle);
        if (d > 0.0d) {
            int mediaHeight = (int) (((double) (A06 - (AbstractC1469ae.A07 * 2))) / d);
            this.A03.A00(mediaHeight);
        }
    }

    @Override
    public final boolean A1M() {
        return false;
    }

    public final void A1O(View view) {
        getCtaButton().A0E(A00(0, 5, 103));
    }
}
