package com.facebook.ads.redexgen.core;

import android.text.TextUtils;
import android.widget.Button;
import java.util.Arrays;
import java.util.Locale;

public abstract class AbstractC1440aB extends Button {
    public static byte[] A0B;
    public static String[] A0C = {"AuzWZ8osEfq4z249PYqxDxnd", "GmaNjpajnwuNMOpMTnafkSdm", "IXSwi1vel7aGkSvKIjHlp", "5xYCukR2VNv2y0", "9gt7y21mjsR", "XkvVk", "YCgMHGcNxR5BY", "3lMWF0VDfBsAiU48Gpk3b"};
    public static final int A0D;
    public static final int A0E;
    public int A00;
    public int A01;
    public int A02;
    public C1098My A03;
    public boolean A04;
    public boolean A05;
    public boolean A06;
    public final float A07;
    public final int A08;
    public final Runnable A09;
    public final Runnable A0A;

    public static String A09(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0B, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 86);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0C() {
        A0B = new byte[]{125, -35, -12, -84};
    }

    static {
        A0C();
        A0D = (int) (AbstractC1338Wl.A02 * 16.0f);
        A0E = (int) (AbstractC1338Wl.A02 * 4.0f);
    }

    public AbstractC1440aB(C1635dL c1635dL, C1098My c1098My) {
        super(c1635dL);
        this.A04 = false;
        this.A02 = 0;
        this.A00 = 0;
        this.A01 = A0E;
        this.A05 = true;
        this.A06 = false;
        this.A09 = new K9(this);
        this.A0A = new K1(this);
        this.A03 = c1098My;
        this.A08 = U7.A05(c1635dL);
        this.A07 = U7.A00(c1635dL);
        XP.A0W(this, false, 16);
        setGravity(17);
        A0A();
    }

    private void A0A() {
        if (this.A03 != null) {
            this.A00 = this.A03.A09(this.A06);
            this.A02 = this.A03.A0A(this.A06);
        }
        XP.A0M(this, this.A00, this.A05 ? this.A01 : 0);
        setTextColor(this.A02);
    }

    private void A0B() {
        if (this.A08 < 0 || this.A04) {
            return;
        }
        this.A04 = true;
        String[] strArr = A0C;
        if (strArr[1].length() != strArr[0].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0C;
        strArr2[1] = "QVGWsKZ9hUXhPHMuZeCIqAcU";
        strArr2[0] = "lfolaSZCl8ASaScD6QDCGzAz";
        if (U7.A2b(getContext())) {
            postDelayed(this.A09, this.A08);
        }
    }

    public final void A0D() {
        String string = getText().toString();
        if (TextUtils.isEmpty(string)) {
            return;
        }
        String text = A09(1, 3, 43);
        String[] strArrSplit = string.split(text);
        for (int i = 0; i < strArrSplit.length; i++) {
            StringBuilder sb = new StringBuilder();
            String text2 = strArrSplit[i].substring(0, 1).toUpperCase(Locale.getDefault());
            StringBuilder sbAppend = sb.append(text2);
            String text3 = strArrSplit[i];
            strArrSplit[i] = sbAppend.append(text3.substring(1).toLowerCase(Locale.getDefault())).toString();
        }
        String text4 = A09(0, 1, 7);
        super.setText((CharSequence) AbstractC1439aA.A01(text4, strArrSplit));
    }

    public C1098My getColorInfo() {
        return this.A03;
    }

    @Override
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        A0B();
    }

    public void setCornerRadiusPx(int i) {
        this.A01 = i;
    }

    public void setRoundedCornersEnabled(boolean z) {
        this.A05 = z;
        A0A();
    }

    public void setText(String str) {
        super.setText((CharSequence) str.toUpperCase(Locale.US));
    }

    public void setUpButtonColors(C1098My c1098My) {
        this.A03 = c1098My;
        A0A();
    }

    public void setViewShowsOverMedia(boolean z) {
        this.A06 = z;
        A0A();
    }
}
