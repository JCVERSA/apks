package com.facebook.ads.redexgen.core;

import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.ads.AdOptionsView;
import com.facebook.ads.MediaView;
import com.facebook.ads.NativeBannerAd;
import java.util.ArrayList;

public final class EQ extends LinearLayout implements InterfaceC1636dM {
    public final NativeBannerAd A00;
    public final C1635dL A01;
    public final ArrayList<View> A02;
    public static final int A04 = (int) (AbstractC1338Wl.A02 * 42.0f);
    public static final int A03 = (int) (AbstractC1338Wl.A02 * 48.0f);
    public static final int A05 = (int) (AbstractC1338Wl.A02 * 54.0f);
    public static final int A07 = (int) (AbstractC1338Wl.A02 * 4.0f);
    public static final int A06 = (int) (AbstractC1338Wl.A02 * 8.0f);

    public EQ(C1635dL c1635dL, NativeBannerAd nativeBannerAd, C1295Ur c1295Ur, EnumC1296Us enumC1296Us, MediaView mediaView, AdOptionsView adOptionsView) {
        LinearLayout.LayoutParams layoutParams;
        ViewGroup.LayoutParams ctaButtonParams;
        super(c1635dL);
        this.A02 = new ArrayList<>();
        this.A00 = nativeBannerAd;
        this.A01 = c1635dL;
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        int iA00 = A00(enumC1296Us);
        C1450aL c1450aL = new C1450aL(this.A01);
        c1450aL.setFullCircleCorners(true);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(iA00, iA00);
        layoutParams2.gravity = 16;
        c1450aL.addView(mediaView, new LinearLayout.LayoutParams(-1, -1));
        linearLayout.addView(c1450aL, layoutParams2);
        C1633dJ c1633dJ = new C1633dJ(c1635dL, this.A00, enumC1296Us, c1295Ur, adOptionsView);
        c1633dJ.setPadding(A06, 0, 0, 0);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(0, -2);
        layoutParams3.weight = 1.0f;
        layoutParams3.gravity = 16;
        linearLayout.addView(c1633dJ, layoutParams3);
        if (enumC1296Us == EnumC1296Us.A0A) {
            setPadding(A07, A07, A07, A07);
            setOrientation(0);
            layoutParams = new LinearLayout.LayoutParams(0, -1);
            ctaButtonParams = new LinearLayout.LayoutParams(-2, -1);
            linearLayout.setPadding(0, 0, A07, 0);
        } else {
            setPadding(A06, A06, A06, A06);
            setOrientation(1);
            layoutParams = new LinearLayout.LayoutParams(-1, 0);
            ctaButtonParams = new LinearLayout.LayoutParams(-1, -2);
            linearLayout.setPadding(0, 0, 0, A06);
        }
        layoutParams.weight = 1.0f;
        addView(linearLayout, layoutParams);
        TextView ctaButton = new TextView(getContext());
        ctaButton.setPadding(A06, A07, A06, A07);
        c1295Ur.A05(ctaButton);
        ctaButton.setText(this.A00.getAdCallToAction());
        addView(ctaButton, ctaButtonParams);
        this.A02.add(mediaView);
        this.A02.add(ctaButton);
    }

    public static int A00(EnumC1296Us enumC1296Us) {
        switch (enumC1296Us) {
            case A0A:
                return A04;
            case A06:
                return A03;
            default:
                return A05;
        }
    }

    @Override
    public View getView() {
        return this;
    }

    @Override
    public ArrayList<View> getViewsForInteraction() {
        return this.A02;
    }

    @Override
    public final void unregisterView() {
        this.A00.unregisterView();
    }
}
