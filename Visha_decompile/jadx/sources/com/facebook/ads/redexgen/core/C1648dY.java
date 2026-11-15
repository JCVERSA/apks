package com.facebook.ads.redexgen.core;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.RelativeLayout;
import java.lang.ref.WeakReference;

public final class C1648dY extends RelativeLayout {
    public static String[] A04 = {"Ym3c0mHmt8I3OfABPCOx9UJ2Q16UuduY", "K4DkQJV", "KARr27mhou56jkSxhuic5Eo8", "doL6IsbVcBXoE3lEPdAb4lspmNlkYQBg", "ZiamaIcezCYLNnFM0CzM2w39hefukKsr", "QAAEQWAERntefxGdirzkY0W9ygCVb18Z", "ecvamyNjiJSZyZ2FY2suHBqgS12IICXX", "BDk4Rb0w5P1ojifCZQT7pVNvZTakDsaU"};
    public static final int A05 = (int) (AbstractC1338Wl.A02 * 4.0f);
    public int A00;
    public C05872p A01;
    public WeakReference<InterfaceC1647dX> A02;
    public final InterfaceC1703eS A03;

    public C1648dY(C1635dL c1635dL, InterfaceC1703eS interfaceC1703eS) {
        super(c1635dL);
        this.A00 = 0;
        this.A03 = interfaceC1703eS;
        XP.A0H((View) this.A03);
        addView(this.A03.getView(), new RelativeLayout.LayoutParams(-1, -1));
    }

    private void A00(AnimatorSet animatorSet, final int i, final boolean z) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.A01.A04(z, i, valueAnimator);
            }
        });
        animatorSet.playTogether(valueAnimatorOfFloat);
    }

    public final void A01(AnimatorSet animatorSet, boolean z) {
        if (z) {
            this.A03.getView().setClipToOutline(true);
            C1645dV c1645dV = new C1645dV(this);
            this.A03.getView().setOutlineProvider(c1645dV);
            if (this.A01 != null) {
                this.A01.setClipToOutline(true);
                this.A01.setOutlineProvider(c1645dV);
            }
            A00(animatorSet, A05, true);
            return;
        }
        this.A03.getView().setClipToOutline(false);
        this.A03.getView().setOutlineProvider(ViewOutlineProvider.BACKGROUND);
        if (this.A01 != null) {
            this.A01.setClipToOutline(false);
            this.A01.setOutlineProvider(ViewOutlineProvider.BACKGROUND);
        }
        A00(animatorSet, this.A00, false);
    }

    public final void A02(AbstractC0842Da abstractC0842Da) {
        addView(abstractC0842Da, new RelativeLayout.LayoutParams(-1, -1));
        this.A01 = (C05872p) abstractC0842Da;
    }

    public final void A03(AbstractC0842Da abstractC0842Da) {
        XP.A0H(abstractC0842Da);
        this.A01 = null;
    }

    public final void A04(boolean z, int i, ValueAnimator valueAnimator) {
        float curInterpolatedTime = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        if (!z) {
            curInterpolatedTime = 1.0f - curInterpolatedTime;
        }
        float interpolatedTime = i;
        this.A00 = (int) (interpolatedTime * curInterpolatedTime);
        requestLayout();
    }

    public final boolean A05() {
        return this.A03.A9j();
    }

    public int getCurrentPosition() {
        return this.A03.getCurrentPosition();
    }

    @Override
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        ((View) this.A03).layout(this.A00, this.A00, getWidth() - this.A00, getHeight() - this.A00);
        if (this.A01 != null) {
            this.A01.layout(this.A00, this.A00, getWidth() - this.A00, getHeight() - this.A00);
        }
    }

    @Override
    public final void onMeasure(int i, int i2) {
        boolean z = false;
        int heightSpecSize = this.A03.getVideoWidth() + (this.A00 * 2);
        int widthSpecMode = this.A03.getVideoHeight() + (this.A00 * 2);
        int width = getDefaultSize(heightSpecSize, i);
        int height = getDefaultSize(widthSpecMode, i2);
        if (heightSpecSize > 0 && widthSpecMode > 0) {
            z = true;
            int mode = View.MeasureSpec.getMode(i);
            int heightSpecMode = View.MeasureSpec.getSize(i);
            int widthSpecSize = View.MeasureSpec.getMode(i2);
            int mVideoHeight = View.MeasureSpec.getSize(i2);
            if (mode != 1073741824 || widthSpecSize != 1073741824) {
                if (mode == 1073741824) {
                    width = heightSpecMode;
                    height = (width * widthSpecMode) / heightSpecSize;
                    if (widthSpecSize == Integer.MIN_VALUE && height > mVideoHeight) {
                        height = mVideoHeight;
                    }
                } else if (widthSpecSize == 1073741824) {
                    height = mVideoHeight;
                    width = (height * heightSpecSize) / widthSpecMode;
                    if (mode == Integer.MIN_VALUE && width > heightSpecMode) {
                        width = heightSpecMode;
                    }
                } else {
                    width = heightSpecSize;
                    height = widthSpecMode;
                    if (widthSpecSize == Integer.MIN_VALUE && height > mVideoHeight) {
                        height = mVideoHeight;
                        width = (height * heightSpecSize) / widthSpecMode;
                    }
                    if (mode == Integer.MIN_VALUE && width > heightSpecMode) {
                        width = heightSpecMode;
                        height = (width * widthSpecMode) / heightSpecSize;
                    }
                }
            } else {
                width = heightSpecMode;
                height = mVideoHeight;
                int mVideoWidth = heightSpecSize * height;
                if (mVideoWidth < width * widthSpecMode) {
                    int width2 = height * heightSpecSize;
                    String[] strArr = A04;
                    String str = strArr[2];
                    String str2 = strArr[1];
                    int mVideoWidth2 = str.length();
                    if (mVideoWidth2 == str2.length()) {
                        throw new RuntimeException();
                    }
                    String[] strArr2 = A04;
                    strArr2[5] = "U4zbj2Wm0uAraatZAyMG0dkAaN2sbGyV";
                    strArr2[7] = "NaQeXa1xIolrwrGsNa3PifVvRhjqFXGF";
                    width = width2 / widthSpecMode;
                } else {
                    int mVideoWidth3 = heightSpecSize * height;
                    if (mVideoWidth3 > width * widthSpecMode) {
                        height = (width * widthSpecMode) / heightSpecSize;
                    }
                }
            }
        }
        setMeasuredDimension(width, height);
        if (!z || this.A02 == null) {
            return;
        }
        WeakReference<InterfaceC1647dX> weakReference = this.A02;
        int mVideoWidth4 = A04[6].charAt(8);
        if (mVideoWidth4 != 105) {
            throw new RuntimeException();
        }
        A04[3] = "u6I59svdNPk3v5MrivI4HijRJO25VXOb";
        if (weakReference.get() != null) {
            this.A02.get().AFj();
        }
    }

    public void setRoundedCornersVideoStyle(float f) {
        this.A03.getView().setClipToOutline(true);
        this.A03.getView().setOutlineProvider(new C1646dW(this, f));
    }

    public void setViewImplInflationListener(InterfaceC1647dX interfaceC1647dX) {
        this.A02 = new WeakReference<>(interfaceC1647dX);
    }
}
