package com.facebook.ads.redexgen.core;

import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import java.util.Arrays;
import javax.annotation.Nullable;

public abstract class AbstractViewOnTouchListenerC05250d extends C06826g implements View.OnTouchListener {
    public static byte[] A07;
    public static String[] A08 = {"ySOBxSJ7y2GELC2cR9WRTK6hAhZYocJS", "8dRmuXbfMCidMDGiSpjEcbCkPgx3mm8G", "li61zS9WhZTBvI47lvKtLPcqAcNkij1S", "lH5BfkXLxOyhi", "q0Ccq4Fbg7VKO8sxkIKNcZgKtjQ1fZ14", "ep7ggC7RKpg7Ol5cXUmXF8JhcfOkgUip", "fpgtpMAGWAVh3a0xLZP1kWTjCGk3An57", "s5"};
    public int A00;

    @Nullable
    public C1815gI A01;
    public InterfaceC1599ck A02;
    public boolean A03;
    public boolean A04;
    public int A05;
    public final int A06;

    public static String A09(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 110);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0A() {
        A07 = new byte[]{-4, 23, 10, 25, -5, 14, 12, 34, 12, 21, 14, 27, -1, 18, 14, 32, -55, 24, 23, 21, 34, -55, 28, 30, 25, 25, 24, 27, 29, 28, -55, -11, 18, 23, 14, 10, 27, -11, 10, 34, 24, 30, 29, -10, 10, 23, 10, 16, 14, 27};
    }

    static {
        A0A();
    }

    public AbstractViewOnTouchListenerC05250d(C1635dL c1635dL) {
        super(c1635dL);
        this.A05 = 0;
        this.A00 = 0;
        this.A03 = true;
        this.A04 = false;
        this.A06 = A05();
        setOnTouchListener(this);
    }

    public AbstractViewOnTouchListenerC05250d(C1635dL c1635dL, AttributeSet attributeSet) {
        super(c1635dL, attributeSet);
        this.A05 = 0;
        this.A00 = 0;
        this.A03 = true;
        this.A04 = false;
        this.A06 = A05();
        setOnTouchListener(this);
    }

    public AbstractViewOnTouchListenerC05250d(C1635dL c1635dL, AttributeSet attributeSet, int i) {
        super(c1635dL, attributeSet, i);
        this.A05 = 0;
        this.A00 = 0;
        this.A03 = true;
        this.A04 = false;
        this.A06 = A05();
        setOnTouchListener(this);
    }

    private int A05() {
        return ((int) getContext().getResources().getDisplayMetrics().density) * 10;
    }

    private int A06(int i) {
        int delta = this.A00 - i;
        int iA8g = this.A02.A8g(delta);
        int scrollX = this.A06;
        if (delta > scrollX) {
            int scrollX2 = this.A05;
            return A08(scrollX2, iA8g);
        }
        int scrollX3 = this.A06;
        if (delta < (-scrollX3)) {
            int i2 = this.A05;
            if (A08[6].charAt(24) != 67) {
                throw new RuntimeException();
            }
            A08[7] = "Vh4";
            int scrollX4 = A07(i2, iA8g);
            return scrollX4;
        }
        int scrollX5 = this.A05;
        return scrollX5;
    }

    private int A07(int i, int i2) {
        return Math.max(i - i2, 0);
    }

    private int A08(int i, int i2) {
        return Math.min(i + i2, getItemCount() - 1);
    }

    public void A20(int i, boolean z) {
        if (getAdapter() == null) {
            return;
        }
        this.A05 = i;
        if (z) {
            A1Y(i);
        } else {
            A1X(i);
        }
    }

    public int getCurrentPosition() {
        return this.A05;
    }

    private int getItemCount() {
        if (getAdapter() == null) {
            return 0;
        }
        return getAdapter().A0B();
    }

    @Override
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        int rawX = (int) motionEvent.getRawX();
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 1 && actionMasked != 6 && actionMasked != 3) {
            int action = A08[7].length();
            if (action == 18) {
                throw new RuntimeException();
            }
            A08[4] = "tIjSEqZVzrzr7cEE0p57iZetopRejSVd";
            if (actionMasked != 4) {
                if (actionMasked == 0 || actionMasked == 5 || (this.A03 && actionMasked == 2)) {
                    this.A00 = rawX;
                    if (this.A03) {
                        this.A03 = false;
                    }
                    this.A04 = true;
                }
                return false;
            }
        }
        if (this.A04) {
            int rawX2 = A06(rawX);
            A20(rawX2, true);
        }
        this.A03 = true;
        this.A04 = false;
        return true;
    }

    @Override
    public void setLayoutManager(QO qo) {
        if (qo instanceof C1815gI) {
            super.setLayoutManager(qo);
            this.A01 = (C1815gI) qo;
            return;
        }
        throw new IllegalArgumentException(A09(0, 50, 59));
    }

    public void setSnapDelegate(InterfaceC1599ck interfaceC1599ck) {
        this.A02 = interfaceC1599ck;
    }
}
