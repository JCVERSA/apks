package com.facebook.ads.redexgen.core;

import android.text.TextUtils;
import android.widget.LinearLayout;
import android.widget.TextView;

public final class Mn extends AbstractC1426Zv {
    public final TextView A00;
    public final TextView A01;
    public static final int A02 = (int) (AbstractC1338Wl.A02 * 36.0f);
    public static final int A05 = (int) (AbstractC1338Wl.A02 * 4.0f);
    public static final int A03 = (int) (AbstractC1338Wl.A02 * 8.0f);
    public static final int A04 = (int) (AbstractC1338Wl.A02 * 4.0f);

    public Mn(C1635dL c1635dL, int i, C1098My c1098My, boolean z, String str, US us, InterfaceC1366Xn interfaceC1366Xn, C1708eX c1708eX, XH xh, N3 n3) {
        super(c1635dL, null, i, c1098My, z, str, us, interfaceC1366Xn, c1708eX, xh, n3, false, "");
        setOrientation(0);
        setPadding(A05, A05, A05, A05);
        this.A01 = A01(-16448251, 13, true);
        this.A00 = A01(-10131605, 12, false);
        this.A06.addView(A00(i), new LinearLayout.LayoutParams(-1, -2));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2);
        layoutParams.weight = 1.0f;
        addView(this.A06, layoutParams);
        this.A08.setPadding(A03, 0, A03, 0);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, A02);
        layoutParams2.gravity = 17;
        addView(this.A08, layoutParams2);
    }

    private LinearLayout A00(int i) {
        LinearLayout linearLayout = new LinearLayout(this.A07);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(A04, 0, A04, 0);
        linearLayout.addView(this.A01, AbstractC1426Zv.A0B);
        linearLayout.addView(this.A00, AbstractC1426Zv.A0B);
        LinearLayout linearLayout2 = new LinearLayout(this.A07);
        linearLayout2.setOrientation(0);
        linearLayout2.addView(this.A09, new LinearLayout.LayoutParams(i, i));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 16;
        linearLayout2.addView(linearLayout, layoutParams);
        return linearLayout2;
    }

    private TextView A01(int i, int i2, boolean z) {
        TextView textView = new TextView(this.A07);
        textView.setTextColor(i);
        textView.setSingleLine(true);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        XP.A0W(textView, z, i2);
        return textView;
    }

    @Override
    public final void A0g() {
        super.A0g();
        setOnClickListener(this.A05);
    }

    @Override
    public final void A0h(int i) {
    }

    @Override
    public void setInfo(C1096Mw c1096Mw, C1099Mz c1099Mz, String str, String str2, InterfaceC1348Wv interfaceC1348Wv, InterfaceC1435a4 interfaceC1435a4) {
        super.setInfo(c1096Mw, c1099Mz, str, str2, interfaceC1348Wv, interfaceC1435a4);
        this.A01.setText(c1096Mw.A0F());
        this.A00.setText(c1096Mw.A0E());
        if (TextUtils.isEmpty(c1099Mz.A04())) {
            XP.A0F(this.A08);
        }
    }
}
