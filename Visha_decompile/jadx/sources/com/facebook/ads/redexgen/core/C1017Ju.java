package com.facebook.ads.redexgen.core;

import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import java.util.Arrays;

public final class C1017Ju extends AbstractC1469ae implements Wf {
    public static byte[] A03;
    public static String[] A04 = {"jViytUMb8W4ggVUJxJM4ipopCTL5", "9aLNfhHGIgyW1yw0lAvb2knTk6C61HAs", "tSRmVjXXTSnTtzrce7INiQjRTYiInlbV", "4hcdJiGUQmFME9vgh87fiTmYWHBJid0b", "Sl93MFe7LYTqHCUKgRBPFfcYUFdC2Wx2", "6CReOOSeiw7R4vGYWPFAi839J8MszZAI", "rkSedGSxOJTtoP7gEY2R8PFp4jzzUrYJ", "HZKY5YyrBfN27m9O42YnVDeAUeo6GkfS"};
    public final AbstractC1910hy A00;
    public final C1334Wh A01;
    public final InterfaceC1366Xn A02;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A04[0].length() != 28) {
                throw new RuntimeException();
            }
            String[] strArr = A04;
            strArr[1] = "P3g3yiO3ICi92ZTGqQIjITPfAPWFUEMm";
            strArr[2] = "pyBqNmisWoZkDTGCi8bHuToayw1uFlPn";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 78);
            i4++;
        }
    }

    public static void A01() {
        A03 = new byte[]{64, 68, 72, 78, 76};
    }

    static {
        A01();
    }

    public C1017Ju(C1473ai c1473ai, boolean z) {
        FrameLayout.LayoutParams layoutParams;
        super(c1473ai, true);
        this.A02 = c1473ai.A0D();
        this.A00 = c1473ai.A05();
        RelativeLayout relativeLayout = new RelativeLayout(c1473ai.A06());
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.addRule(12);
        XP.A0P(relativeLayout, getAdContextWrapper());
        LinearLayout linearLayout = new LinearLayout(c1473ai.A06());
        linearLayout.setOrientation(!z ? 1 : 0);
        linearLayout.setGravity(80);
        XP.A0I(linearLayout);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams3.setMargins(AbstractC1469ae.A07, 0, AbstractC1469ae.A07, AbstractC1469ae.A07);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(z ? -2 : -1, -2);
        layoutParams4.setMargins(z ? AbstractC1469ae.A07 : 0, z ? 0 : AbstractC1469ae.A07, 0, 0);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(z ? 0 : -1, -2);
        layoutParams5.setMargins(0, 0, 0, 0);
        layoutParams5.weight = 1.0f;
        linearLayout.addView(getTitleDescContainer(), layoutParams5);
        this.A01 = C1334Wh.A00(c1473ai.A06(), this.A00, this);
        C1333Wg c1333WgA02 = this.A01.A02(this.A00);
        c1473ai.A06().A0H().A00(c1333WgA02.A01);
        if (c1473ai.A0I() && !z) {
            C1601cm c1601cm = new C1601cm(c1473ai.A06());
            c1601cm.setPageDetails(c1473ai.A05().A23());
            int iA05 = this.A06.A05().A1z().A00().A05(true);
            c1601cm.A02(iA05, iA05);
            XP.A0E(1007, c1601cm);
            LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-1, -2);
            layoutParams6.setMargins(0, AbstractC1469ae.A07, 0, 0);
            linearLayout.addView(c1601cm, layoutParams6);
            if (U7.A18(c1473ai.A06())) {
                c1601cm.setOnClickListener(getCtaButton());
            }
        }
        linearLayout.addView(getCtaButton(), layoutParams4);
        relativeLayout.addView(linearLayout, layoutParams3);
        getCtaButton().A0F(c1473ai.A05(), c1473ai.A0C());
        View viewA02 = c1473ai.A02();
        if (viewA02 != null && (c1333WgA02.A00 || U7.A1I(getAdContextWrapper()))) {
            if (z) {
                layoutParams = new FrameLayout.LayoutParams(-2, -1);
            } else {
                layoutParams = new FrameLayout.LayoutParams(-1, -2);
            }
            layoutParams.gravity = 17;
            FrameLayout frameLayout = new FrameLayout(c1473ai.A06());
            frameLayout.addView(viewA02, layoutParams);
            addView(frameLayout, new RelativeLayout.LayoutParams(-1, -1));
            getCtaButton().setCreativeAsCtaLoggingHelper(this.A01);
            if (c1333WgA02.A00) {
                viewA02.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        this.A00.A1O(view);
                    }
                });
            } else {
                AbstractC1423Zs.A00(viewA02, U7.A1J(getAdContextWrapper()), new ViewOnClickListenerC1466ab(this));
            }
        } else if (viewA02 != null) {
            addView(viewA02, new RelativeLayout.LayoutParams(-1, -1));
        }
        addView(relativeLayout, layoutParams2);
        if (U7.A17(c1473ai.A06())) {
            getTitleDescContainer().setCTAClickListener(getCtaButton());
            if (c1473ai.A0C() != null) {
                c1473ai.A0C().setCTAClickListener(getCtaButton());
            }
        }
    }

    @Override
    public final void A1B() {
        super.A1B();
        this.A01.A03();
    }

    @Override
    public final void A1G(C1089Mp c1089Mp, String str, double d, Bundle bundle) {
        super.A1G(c1089Mp, str, d, bundle);
    }

    @Override
    public final boolean A1M() {
        return true;
    }

    public final void A1O(View view) {
        getCtaButton().A0E(A00(0, 5, 103));
    }
}
