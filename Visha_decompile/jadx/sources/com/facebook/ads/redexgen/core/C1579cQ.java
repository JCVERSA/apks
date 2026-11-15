package com.facebook.ads.redexgen.core;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;

public final class C1579cQ extends RelativeLayout {
    public KE A00;
    public final View.OnClickListener A01;
    public final C1096Mw A02;
    public final N9 A03;
    public final C1635dL A04;
    public final C1449aK A05;
    public final C1455aQ A06;
    public final String A07;
    public static final int A0B = (int) (AbstractC1338Wl.A02 * 2.0f);
    public static final int A0F = (int) (AbstractC1338Wl.A02 * 16.0f);
    public static final int A0D = (int) (AbstractC1338Wl.A02 * 20.0f);
    public static final int A0E = (int) (AbstractC1338Wl.A02 * 13.0f);
    public static final int A08 = (int) (AbstractC1338Wl.A02 * 72.0f);
    public static final int A0C = (int) (AbstractC1338Wl.A02 * 8.0f);
    public static final int A0A = (int) (AbstractC1338Wl.A02 * 24.0f);
    public static final int A09 = (int) (AbstractC1338Wl.A02 * 16.0f);

    public C1579cQ(C1635dL c1635dL, N9 n9, C1096Mw c1096Mw, KE ke, String str, View.OnClickListener onClickListener) {
        super(c1635dL);
        this.A04 = c1635dL;
        this.A03 = n9;
        this.A02 = c1096Mw;
        this.A00 = ke;
        this.A07 = str;
        this.A01 = onClickListener;
        this.A05 = new C1449aK(this.A04);
        this.A06 = new C1455aQ(this.A04, C1098My.A01(null), true, false, true);
        A00();
    }

    private void A00() {
        AbstractC1456aR.A00(this.A04, this, this.A03.A01());
        ImageView imageView = new ImageView(this.A04);
        imageView.setImageBitmap(XY.A01(XX.REDESIGN_CLOSE_ICON));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(A0A, A0A);
        imageView.setColorFilter(-1);
        layoutParams.addRule(11);
        layoutParams.setMargins(A09, A09, A09, A09);
        imageView.setLayoutParams(layoutParams);
        addView(imageView);
        imageView.setOnClickListener(this.A01);
        LinearLayout layout = new LinearLayout(this.A04);
        layout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        layout.setGravity(17);
        layout.setOrientation(1);
        ImageView closeImageView = this.A05;
        XP.A0K(closeImageView, 0);
        this.A05.setRadius(A0B);
        new KZ(this.A05, this.A04).A04().A07(this.A03.A01());
        this.A06.A04(this.A02.A0F(), this.A03.A03(), null, false, true);
        this.A06.setAlignment(17);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.setMargins(0, A0F, 0, A0F);
        this.A06.getDescriptionTextView().setText(this.A07);
        layout.addView(this.A05, new LinearLayout.LayoutParams(A08, A08));
        layout.addView(this.A06, layoutParams2);
        if (this.A00 != null) {
            LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
            this.A00.setPadding(A0D, A0E, A0D, A0E);
            this.A00.setLayoutParams(layoutParams3);
            XP.A0Q(this.A00, XP.A06(-16738826, A0C));
            this.A00.setStateListAnimator(null);
            XP.A0V(this.A00);
            layout.addView(this.A00);
        }
        addView(layout);
    }
}
