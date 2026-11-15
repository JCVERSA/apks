package com.facebook.ads.redexgen.core;

import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.view.View;
import android.widget.TextView;
import java.util.Arrays;

public final class CY implements InterfaceC1677e2 {
    public static byte[] A06;
    public ValueAnimator A00;
    public EnumC1676e1 A01 = EnumC1676e1.A04;
    public final int A02;
    public final int A03;
    public final int A04;
    public final View A05;

    static {
        A05();
    }

    public static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 16);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A05() {
        A06 = new byte[]{49, 32, 61, 49, 6, 42, 41, 42, 55};
    }

    public CY(View view, int i, int i2, int i3) {
        this.A02 = i;
        this.A05 = view;
        this.A04 = i2;
        this.A03 = i3;
    }

    private void A06(int i, int i2) {
        this.A01 = i == this.A04 ? EnumC1676e1.A03 : EnumC1676e1.A05;
        this.A00 = ObjectAnimator.ofInt((TextView) this.A05, A04(0, 9, 85), i, i2);
        this.A00.setEvaluator(new ArgbEvaluator());
        this.A00.setDuration(this.A02);
        this.A00.addListener(new C1683e8(this, i, i2));
        this.A00.start();
    }

    public void A07(int i, int i2, boolean z) {
        if (z) {
            A06(i, i2);
        } else {
            ((TextView) this.A05).setTextColor(i2);
            this.A01 = i2 == this.A03 ? EnumC1676e1.A02 : EnumC1676e1.A04;
        }
    }

    @Override
    public final void A42(boolean z, boolean z2) {
        int endColor = z2 ? this.A03 : this.A04;
        int startColor = z2 ? this.A04 : this.A03;
        A07(endColor, startColor, z);
    }

    @Override
    public final EnumC1676e1 A93() {
        return this.A01;
    }

    @Override
    public final void cancel() {
        if (this.A00 != null) {
            this.A00.cancel();
        }
    }
}
