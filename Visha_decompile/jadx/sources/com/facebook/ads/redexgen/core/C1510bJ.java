package com.facebook.ads.redexgen.core;

import android.graphics.Typeface;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import java.util.HashMap;
import java.util.Locale;

public final class C1510bJ extends FrameLayout {
    public final int A00;
    public final RelativeLayout A01;
    public final KE A02;
    public static final int A05 = (int) (AbstractC1338Wl.A02 * 36.0f);
    public static final int A06 = (int) (AbstractC1338Wl.A02 * 36.0f);
    public static final int A03 = (int) (AbstractC1338Wl.A02 * 23.0f);
    public static final int A04 = (int) (AbstractC1338Wl.A02 * 3.0f);
    public static final int A07 = (int) (AbstractC1338Wl.A02 * 4.0f);

    public C1510bJ(C1635dL c1635dL, KE ke, AbstractC1910hy abstractC1910hy, US us, InterfaceC1366Xn interfaceC1366Xn, C1708eX c1708eX, XH xh, C1098My c1098My, InterfaceC1435a4 interfaceC1435a4) {
        super(c1635dL);
        this.A00 = c1098My.A09(true);
        this.A01 = new RelativeLayout(c1635dL);
        addView(this.A01, new FrameLayout.LayoutParams(-1, -1));
        this.A01.setClickable(false);
        A01(c1635dL, abstractC1910hy.A20().A0J().A04());
        if (ke == null) {
            this.A02 = new KE(c1635dL, abstractC1910hy.A0r(), (C1098My) null, us, interfaceC1366Xn, c1708eX, xh, abstractC1910hy.A21());
        } else {
            this.A02 = ke;
        }
        A03();
        this.A02.setCta(abstractC1910hy.A20().A0J(), abstractC1910hy.A25(), new HashMap(), interfaceC1435a4);
        this.A02.setIsInAppBrowser(true);
        FrameLayout.LayoutParams ctaButtonParams = new FrameLayout.LayoutParams(-1, -1);
        addView(this.A02, ctaButtonParams);
    }

    private void A00(C1635dL c1635dL, View view) {
        ImageView imageView = new ImageView(c1635dL);
        imageView.setImageBitmap(XY.A01(XX.MINIMIZE_ARROW));
        imageView.setRotation(180.0f);
        imageView.setClickable(false);
        imageView.setColorFilter(this.A00);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(A03, A03);
        imageView.setPadding(A04, A04, A04, A04);
        layoutParams.addRule(2, view.getId());
        layoutParams.addRule(14);
        this.A01.addView(imageView, layoutParams);
    }

    private void A01(C1635dL c1635dL, String str) {
        Button button = new Button(c1635dL);
        XP.A0I(button);
        button.setPadding(A06, 0, A06, 0);
        button.setText(str.toUpperCase(Locale.getDefault()));
        button.setTextSize(14.0f);
        button.setTypeface(Typeface.defaultFromStyle(1));
        XP.A0M(button, this.A00, A07);
        button.setTextColor(-16777216);
        RelativeLayout.LayoutParams ctaParams = new RelativeLayout.LayoutParams(-2, A05);
        ctaParams.addRule(12);
        ctaParams.addRule(14);
        this.A01.addView(button, ctaParams);
        A00(c1635dL, button);
    }

    public final ME A02(String str) {
        return this.A02.A0E(str);
    }

    public final void A03() {
        this.A02.setBackgroundColor(0);
        this.A02.setTextColor(0);
    }

    @Override
    public final boolean performClick() {
        return this.A02.performClick();
    }

    public void setAutoClickTime(AbstractC1910hy abstractC1910hy, AbstractC1365Xm abstractC1365Xm) {
        this.A02.A0F(abstractC1910hy, abstractC1365Xm);
    }

    public void setCta(C1099Mz c1099Mz, String str, HashMap<String, String> extras, InterfaceC1435a4 interfaceC1435a4) {
        this.A02.setCta(c1099Mz, str, extras, interfaceC1435a4);
    }
}
