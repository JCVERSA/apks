package com.facebook.ads.redexgen.core;

import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

public final class C1400Yv extends LinearLayout {
    public static final int A03 = (int) (AbstractC1338Wl.A02 * 40.0f);
    public static final int A04 = (int) (AbstractC1338Wl.A02 * 20.0f);
    public static final int A05 = (int) (AbstractC1338Wl.A02 * 10.0f);
    public final O6 A00;
    public final C1635dL A01;
    public final InterfaceC1384Yf A02;

    public C1400Yv(C1635dL c1635dL, O6 o6, InterfaceC1384Yf interfaceC1384Yf, XX xx) {
        this(c1635dL, o6, interfaceC1384Yf, null, xx);
    }

    public C1400Yv(C1635dL c1635dL, O6 o6, InterfaceC1384Yf interfaceC1384Yf, String str, XX xx) {
        super(c1635dL);
        this.A01 = c1635dL;
        this.A00 = o6;
        this.A02 = interfaceC1384Yf;
        setOrientation(1);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        if (!TextUtils.isEmpty(str)) {
            View headerView = A01(str);
            headerView.setPadding(0, 0, 0, 0);
            View view = new View(getContext());
            view.setLayoutParams(new LinearLayout.LayoutParams(-1, 1));
            XP.A0K(view, -10459280);
            addView(headerView, layoutParams);
            addView(view);
        }
        if (!TextUtils.isEmpty(this.A00.A03())) {
            View viewA00 = A00(xx, this.A00.A03());
            viewA00.setPadding(0, A05, 0, A05);
            addView(viewA00, layoutParams);
        }
        Z1 z1A03 = A03();
        z1A03.setPadding(0, A05, 0, 0);
        addView(z1A03, layoutParams);
    }

    private View A00(XX xx, String str) {
        ImageView imageView = new ImageView(getContext());
        imageView.setColorFilter(-10459280);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(A04, A04);
        layoutParams.gravity = 16;
        imageView.setImageBitmap(XY.A01(xx));
        TextView textView = new TextView(getContext());
        XP.A0W(textView, true, 14);
        textView.setTextColor(-10459280);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        textView.setText(str);
        textView.setPadding(A05, 0, 0, 0);
        textView.setFocusable(true);
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        linearLayout.addView(imageView, layoutParams);
        linearLayout.addView(textView, layoutParams2);
        return linearLayout;
    }

    private View A01(String str) {
        ImageView imageView = new ImageView(getContext());
        imageView.setColorFilter(-10459280);
        imageView.setImageBitmap(XY.A01(XX.BACK_ARROW));
        imageView.setPadding(0, A05, A05 * 2, A05);
        LinearLayout.LayoutParams titleParams = new LinearLayout.LayoutParams(A03, A03);
        imageView.setOnClickListener(new ViewOnClickListenerC1398Yt(this));
        TextView textView = new TextView(getContext());
        textView.setGravity(17);
        textView.setText(str);
        XP.A0W(textView, true, 16);
        textView.setTextColor(-14934495);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.setMargins(0, 0, A03, 0);
        layoutParams.gravity = 17;
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        linearLayout.addView(imageView, titleParams);
        linearLayout.addView(textView, layoutParams);
        return linearLayout;
    }

    private Z1 A03() {
        Z1 z1 = new Z1(this.A01);
        for (O6 o6 : this.A00.A05()) {
            C1386Yh c1386Yh = new C1386Yh(this.A01);
            c1386Yh.setData(o6.A04(), null);
            c1386Yh.setOnClickListener(new ViewOnClickListenerC1399Yu(this, c1386Yh, o6));
            z1.addView(c1386Yh);
        }
        return z1;
    }
}
