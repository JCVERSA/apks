package com.facebook.ads.redexgen.core;

import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import java.util.Arrays;

public final class C06545e extends AbstractC1019Jw {
    public static byte[] A02;
    public static String[] A03 = {"ccLmdgMtf", "50lpHgsnQSuWf1CWCacJGyiAwAWsDUud", "Nq2vo108Bdlpu7LWCjcAC5dDG31maruF", "TAe0PaklKNA7XHBVlxrhZCtyBfgeydAO", "ouUdcivF6", "IAXVD4SBpgtyrGYWX4yc8p2wBrUpSeUf", "nA5GNdAWyE31pAGlKcdnPdOQEY7Q2fwD", "a5Dyr8HKQP9cZfy0xnx35qJg31dQk6"};
    public static final int A04;
    public final View A00;
    public final boolean A01;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A03[7].length() != 30) {
                throw new RuntimeException();
            }
            String[] strArr = A03;
            strArr[0] = "FT3046kmt";
            strArr[4] = "J6Q3a22Lt";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 71);
            i4++;
        }
    }

    public static void A01() {
        A02 = new byte[]{37, 33, 45, 43, 41};
    }

    static {
        A01();
        A04 = Resources.getSystem().getDisplayMetrics().widthPixels;
    }

    public C06545e(C1473ai c1473ai, boolean z) {
        super(c1473ai, true);
        this.A01 = z;
        this.A00 = c1473ai.A02();
        A1R();
        if (this.A01) {
            addView(c1473ai.A02(), new RelativeLayout.LayoutParams(-1, -1));
        } else {
            FrameLayout frameLayout = new FrameLayout(c1473ai.A06());
            RelativeLayout.LayoutParams insideContainerParams = new RelativeLayout.LayoutParams(-1, -1);
            insideContainerParams.addRule(2, getAdDetailsView().getId());
            frameLayout.setLayoutParams(insideContainerParams);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
            layoutParams.gravity = 17;
            layoutParams.setMargins(AbstractC1469ae.A07, 0, AbstractC1469ae.A07, 0);
            frameLayout.addView(this.A00, layoutParams);
            addView(frameLayout);
        }
        C1333Wg c1333WgA02 = this.A09.A02(getAdDataBundle());
        c1473ai.A06().A0H().A00(c1333WgA02.A01);
        getCtaButton().setCreativeAsCtaLoggingHelper(this.A09);
        if (this.A00 != null) {
            if (c1333WgA02.A00) {
                this.A00.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        this.A00.A1W(view);
                    }
                });
            } else if (U7.A1I(getAdContextWrapper())) {
                AbstractC1423Zs.A00(this.A00, U7.A1J(getAdContextWrapper()), new ViewOnClickListenerC1475ak(this));
            }
        }
        getAdDetailsView().bringToFront();
    }

    @Override
    public final boolean A0C() {
        return this.A01 && super.A0D();
    }

    @Override
    public final boolean A0D() {
        return this.A01 && super.A0D();
    }

    @Override
    public final void A1G(C1089Mp c1089Mp, String str, double d, Bundle bundle) {
        super.A1G(c1089Mp, str, d, bundle);
        if (!this.A01 && d > 0.0d) {
            int mediaHeight = (int) (((double) (A04 - (AbstractC1469ae.A07 * 2))) / d);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, mediaHeight);
            layoutParams.gravity = 17;
            int i = AbstractC1469ae.A07;
            int mediaHeight2 = AbstractC1469ae.A07;
            layoutParams.setMargins(i, 0, mediaHeight2, 0);
            this.A00.setLayoutParams(layoutParams);
        }
    }

    @Override
    public final boolean A1M() {
        return this.A01;
    }

    @Override
    public final AbstractC1426Zv A1P(C1473ai c1473ai, C1089Mp c1089Mp, String str) {
        return new C1021Jy(c1473ai.A06(), getCtaButton(), AbstractC1019Jw.A0H, c1089Mp.A0I().A00() == EnumC1094Mu.A05, getColors(), c1089Mp.A0J().A06(), str, c1473ai.A07(), c1473ai.A0D(), c1473ai.A0G(), c1473ai.A0A(), c1473ai.A05());
    }

    public final void A1W(View view) {
        getCtaButton().A0E(A00(0, 5, 11));
    }
}
