package com.facebook.ads.redexgen.core;

import android.view.View;
import android.view.ViewGroup;
import com.facebook.ads.NativeAdLayout;
import com.facebook.ads.internal.api.AdComponentViewApi;
import com.facebook.ads.internal.api.NativeAdLayoutApi;

public class C1778fg extends R8 implements NativeAdLayoutApi {
    public View A02;
    public NativeAdLayout A03;
    public int A01 = 0;
    public int A00 = 0;
    public boolean A05 = false;
    public boolean A04 = false;

    public final void A02() {
        XP.A0R(this.A03);
        this.A03.removeView(this.A02);
        this.A02 = null;
    }

    public final void A03(AbstractC1382Yd abstractC1382Yd) {
        this.A02 = abstractC1382Yd;
        abstractC1382Yd.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        XP.A0R(this.A03);
        this.A03.addView(this.A02);
    }

    public final boolean A04() {
        return this.A04;
    }

    public final boolean A05() {
        return this.A05;
    }

    @Override
    public final AdComponentViewApi getAdComponentViewApi() {
        return this;
    }

    @Override
    public final void initialize(NativeAdLayout nativeAdLayout) {
        this.A03 = nativeAdLayout;
    }

    @Override
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.A00 > 0 && this.A03.getMeasuredWidth() > this.A00) {
            setMeasuredDimension(this.A00, this.A03.getMeasuredHeight());
        } else {
            if (this.A03.getMeasuredWidth() >= this.A01) {
                return;
            }
            setMeasuredDimension(this.A01, this.A03.getMeasuredHeight());
        }
    }

    @Override
    public final void setMaxWidth(int i) {
        this.A00 = i;
        this.A04 = true;
    }

    @Override
    public final void setMinWidth(int i) {
        this.A01 = i;
        this.A05 = true;
    }
}
