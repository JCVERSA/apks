package com.facebook.ads.redexgen.core;

import android.view.View;
import android.widget.LinearLayout;
import java.util.Arrays;

public final class C1117Nr extends AbstractC1365Xm {
    public static byte[] A03;
    public C1635dL A00;
    public InterfaceC1364Xl A01;
    public final YQ A02;

    static {
        A05();
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 75);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A05() {
        A03 = new byte[]{-75, -34, -31, -27, -41, -110, -77, -42};
    }

    public C1117Nr(C1635dL c1635dL, InterfaceC1366Xn interfaceC1366Xn, C1278Ua c1278Ua, int i) {
        super(c1635dL);
        this.A00 = c1635dL;
        setGravity(16);
        A04();
        this.A02 = new YQ(this.A00, i);
        A03();
    }

    private void A03() {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        this.A02.setContentDescription(A02(0, 8, 39));
        this.A02.setActionClickListener(new ViewOnClickListenerC1376Xx(this));
        addView(this.A02, layoutParams);
    }

    private void A04() {
        View view = new View(this.A00);
        view.setLayoutParams(new LinearLayout.LayoutParams(0, 0, 1.0f));
        addView(view);
    }

    @Override
    public final void A06() {
    }

    @Override
    public final void A07() {
    }

    @Override
    public final void A08() {
    }

    @Override
    public final void A09(float f, int i) {
    }

    @Override
    public final void A0A(C1098My c1098My, boolean z) {
    }

    @Override
    public final boolean A0B() {
        return false;
    }

    @Override
    public int getToolbarActionMode() {
        return this.A02.getToolbarActionMode();
    }

    @Override
    public int getToolbarHeight() {
        return AbstractC1365Xm.A01;
    }

    @Override
    public InterfaceC1364Xl getToolbarListener() {
        return null;
    }

    @Override
    public void setAdReportingVisible(boolean z) {
    }

    @Override
    public void setCTAClickListener(View.OnClickListener onClickListener) {
    }

    @Override
    public void setCTAClickListener(KE ke) {
    }

    @Override
    public void setFullscreen(boolean z) {
    }

    public void setInitialUnskippableSeconds(int i) {
        this.A02.setInitialUnskippableSeconds(i);
    }

    @Override
    public void setPageDetails(N9 n9, String str, int i, NF nf) {
        this.A02.setInitialUnskippableSeconds(i);
    }

    @Override
    public void setPageDetailsVisible(boolean z) {
    }

    @Override
    public void setProgress(float f) {
    }

    @Override
    public void setProgressClickListener(View.OnClickListener onClickListener) {
    }

    @Override
    public void setProgressImage(XX xx) {
    }

    @Override
    public void setProgressImmediate(float f) {
    }

    @Override
    public void setProgressSpinnerInvisible(boolean z) {
    }

    @Override
    public void setToolbarActionMessage(String str) {
    }

    @Override
    public void setToolbarActionMode(int i) {
        this.A02.setToolbarActionMode(i);
    }

    @Override
    public void setToolbarListener(InterfaceC1364Xl interfaceC1364Xl) {
        this.A01 = interfaceC1364Xl;
    }
}
