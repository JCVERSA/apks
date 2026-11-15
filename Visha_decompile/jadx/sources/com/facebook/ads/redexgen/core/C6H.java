package com.facebook.ads.redexgen.core;

import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.TranslateAnimation;
import android.view.inputmethod.InputMethodManager;
import android.widget.RelativeLayout;
import androidx.media3.common.C;
import com.facebook.ads.internal.protocol.AdPlacementType;
import com.just.agentweb.WebIndicator;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

public final class C6H extends OD implements View.OnClickListener, View.OnTouchListener {
    public static int A09;
    public static int A0A;
    public static int A0B;
    public static int A0C;
    public static int A0D;
    public static byte[] A0E;
    public static String[] A0F = {"KCgVVt0Ap7UjFwdZVPwtujaSBd4wOGh", "pwlBzpehZvT0dx09nfsqJf3x9Ohs0th5", "vfZ4vr2K2y2ARDvqPAWs6IAB7KSzcYkK", "bFCbuQIkoS9nYpv83ewRiG67IWanvmGf", "GLbAB0S4L", "VAKU94yPMVJGstkAs9GlkzAfXtUrDcQU", "ELeO8zIeBErz", "BBoYkiBeDILGrcaYIrD29JxsdoJmJVn4"};
    public int A00;
    public int A01;
    public C1278Ua A02;
    public boolean A03;
    public final int A04;
    public final Handler A05;
    public final InputMethodManager A06;
    public final Runnable A07;
    public final String A08;

    public static String A05(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0E, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A0F[6].length() != 12) {
                throw new RuntimeException();
            }
            A0F[6] = "rGUQ6sPwqM0P";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 26);
            i4++;
        }
    }

    public static void A09() {
        A0E = new byte[]{94, 81, 84, 94, 86, 98, 78, 82, 72, 79, 94, 88, 36, 40, 42, 105, 33, 38, 36, 34, 37, 40, 40, 44, 105, 38, 35, 52, 105, 37, 38, 41, 41, 34, 53, 105, 36, 43, 46, 36, 44, 34, 35, 118, 122, 120, 59, 115, 116, 118, 112, 119, 122, 122, 126, 59, 116, 113, 102, 59, 124, 123, 97, 112, 103, 102, 97, 124, 97, 124, 116, 121, 59, 118, 121, 124, 118, 126, 112, 113, 2, 14, 12, 79, 7, 0, 2, 4, 3, 14, 14, 10, 79, 0, 5, 18, 79, 15, 0, 21, 8, 23, 4, 79, 0, 5, 62, 2, 13, 8, 2, 10, 53, 50, 44, 41, 40, 3, 49, 57, 40, 52, 51, 56, 30, 24, 14, 25, 52, 9, 30, 13, 13, 14, 25, 14, 15, 52, 8, 7, 2, 8, 0, 52, 2, 10, 9, 52, 8, 7, 2, 8, 0, 24, 81, 87, 65, 86, 123, 70, 81, 66, 66, 65, 86, 65, 64, 123, 71, 72, 77, 71, 79, 123, 77, 69, 70, 123, 80, 93, 84, 77, 74, 67};
    }

    static {
        A09();
        A0B = WebIndicator.MAX_DECELERATE_SPEED_DURATION;
        A09 = 500;
        A0A = 50;
        A0D = WebIndicator.MAX_DECELERATE_SPEED_DURATION;
        A0C = 150;
    }

    public C6H(R0 r0, C1635dL c1635dL, US us, InterfaceC1366Xn interfaceC1366Xn, String str, int i) {
        super(r0, c1635dL, us, interfaceC1366Xn);
        this.A00 = 0;
        this.A01 = 0;
        this.A03 = false;
        this.A07 = new RunnableC1369Xq(this);
        this.A08 = str;
        this.A05 = new Handler(Looper.getMainLooper());
        this.A06 = (InputMethodManager) c1635dL.getSystemService(A05(112, 12, 70));
        this.A04 = i;
    }

    public static int A02(C6H c6h) {
        int i = c6h.A00;
        c6h.A00 = i + 1;
        return i;
    }

    public void A06() {
        XP.A0K(this, C.ENCODING_PCM_32BIT_BIG_ENDIAN);
    }

    private void A07() {
        if (this.A08 == null) {
            return;
        }
        if (AdPlacementType.BANNER.name().equals(this.A08)) {
            super.A07.A0E(A05(12, 31, 93), null);
            return;
        }
        if (AdPlacementType.NATIVE.name().equals(this.A08)) {
            super.A07.A0E(A05(80, 32, 123), null);
        } else if (AdPlacementType.INTERSTITIAL.name().equals(this.A08)) {
            super.A07.A0E(A05(43, 37, 15), null);
        } else {
            if (!AdPlacementType.REWARDED_VIDEO.name().equals(this.A08)) {
                return;
            }
            super.A07.A0E(EnumC1657dh.A04.A03(), null);
        }
    }

    private void A08() {
        XP.A0K(this, 0);
    }

    public static boolean A0B(View view, MotionEvent motionEvent) {
        return true;
    }

    @Override
    public final ZY A0E() {
        return new C1134Ok(this);
    }

    @Override
    public final void A0F() {
        XP.A0K(this, C.ENCODING_PCM_32BIT_BIG_ENDIAN);
        setPadding(getResources().getConfiguration().orientation);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadii(new float[]{A0A, A0A, A0A, A0A, 0.0f, 0.0f, 0.0f, 0.0f});
        gradientDrawable.setColor(-1);
        this.A0B.setBackground(gradientDrawable);
        this.A0B.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return C6H.A0B(view, motionEvent);
            }
        });
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(10);
        addView(this.A0B, layoutParams);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.addRule(3, this.A0B.getId());
        layoutParams2.addRule(12);
        this.A0E.setBackgroundColor(-1);
        addView(this.A0E, layoutParams2);
        this.A0E.setOnTouchListener(this);
        setOnClickListener(this);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, (int) (AbstractC1338Wl.A02 * 2.0f));
        layoutParams3.addRule(3, this.A0B.getId());
        this.A0C.setProgress(0);
        addView(this.A0C, layoutParams3);
        A06();
        this.A0A.A3x(this, new RelativeLayout.LayoutParams(-1, -1));
    }

    @Override
    public final void A0G() {
        A08();
        super.A07.A05().overridePendingTransition(0, 0);
        TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, 0.0f, Resources.getSystem().getDisplayMetrics().heightPixels);
        translateAnimation.setDuration(A09);
        translateAnimation.setFillAfter(true);
        translateAnimation.setAnimationListener(new AnimationAnimationListenerC1371Xs(this));
        startAnimation(translateAnimation);
    }

    @Override
    public final void A0H(String str) {
        if (this.A04 > 0 && !this.A03) {
            this.A03 = true;
            this.A05.removeCallbacksAndMessages(null);
            Map<String, String> mapA05 = new C1420Zp().A03(null).A02(null).A05();
            mapA05.put(A05(0, 12, 39), str);
            if (this.A02 != null) {
                this.A02.A04(UZ.A0J, mapA05);
            }
            A07();
            this.A09.AB8(super.A04, mapA05);
            if (U7.A2N(super.A08)) {
                HashMap map = new HashMap();
                map.put(AbstractC1954im.A04, Boolean.TRUE.toString());
                map.put(AbstractC1954im.A05, Boolean.TRUE.toString());
                map.put(AbstractC1954im.A06, Boolean.TRUE.toString());
                this.A09.ABH(super.A04, map);
            }
        }
    }

    @Override
    public final void AAl(Intent intent, Bundle bundle, R0 r0) {
        super.AAl(intent, bundle, r0);
        this.A02 = new C1278Ua(super.A04, this.A09);
    }

    @Override
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        A08();
        TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, Resources.getSystem().getDisplayMetrics().heightPixels, 0.0f);
        translateAnimation.setDuration(A0B);
        translateAnimation.setFillAfter(true);
        translateAnimation.setAnimationListener(new AnimationAnimationListenerC1370Xr(this));
        startAnimation(translateAnimation);
    }

    @Override
    public final void onClick(View view) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            A0G();
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }

    @Override
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        setPadding(configuration.orientation);
    }

    @Override
    public final void onDestroy() {
        super.onDestroy();
        this.A05.removeCallbacksAndMessages(null);
    }

    @Override
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        switch (motionEvent.getActionMasked()) {
            case 0:
                if (this.A06 == null) {
                    return false;
                }
                InputMethodManager inputMethodManager = this.A06;
                if (A0F[1].charAt(4) != 'z') {
                    throw new RuntimeException();
                }
                A0F[6] = "wSSlTu5XSXtb";
                if (!inputMethodManager.isAcceptingText()) {
                    return false;
                }
                A0H(A05(154, 30, 62));
                return false;
            case 1:
                this.A01++;
                if (this.A01 < 5) {
                    return false;
                }
                A0H(A05(124, 30, 113));
                return false;
            default:
                return false;
        }
    }

    private void setPadding(int i) {
        if (i == 2) {
            setPadding(0, A0C, 0, 0);
        } else {
            setPadding(0, A0D, 0, 0);
        }
    }
}
