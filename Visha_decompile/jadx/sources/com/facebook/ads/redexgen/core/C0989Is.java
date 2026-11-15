package com.facebook.ads.redexgen.core;

import android.R;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.inputmethod.InputMethodManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public final class C0989Is extends AbstractC1469ae {
    public static byte[] A0f;
    public static String[] A0g = {"f8QpfXiibO7PJ4", "00U3", "QiVJCyNgR8A0MkWyBq6Sbwgp9SRG2Fs1", "mRNBH9qX8UoqoKTWOWXmqQrDEDoanN5e", "rH0ZwdBUaXUf9W", "YRkVnZkRMq0VwRkFeWVEZBfHhK", "H8ri0FbqOBWJinUWmvrCS", "7rqKKWYNcxFyr7Opoa7bPZ9HiZbpRRd0"};
    public static final int A0h;
    public int A00;
    public int A01;
    public ImageView A02;
    public LinearLayout A03;
    public RelativeLayout A04;
    public RelativeLayout A05;
    public ZH A06;
    public ZP A07;
    public LJ A08;
    public KE A09;
    public C1447aI A0A;
    public C1485au A0B;
    public boolean A0C;
    public boolean A0D;
    public boolean A0E;
    public boolean A0F;
    public boolean A0G;
    public boolean A0H;
    public boolean A0I;
    public boolean A0J;
    public boolean A0K;
    public boolean A0L;
    public boolean A0M;
    public boolean A0N;
    public boolean A0O;
    public boolean A0P;
    public boolean A0Q;
    public final float A0R;
    public final Handler A0S;
    public final Handler A0T;
    public final View A0U;
    public final View A0V;
    public final InputMethodManager A0W;
    public final MH A0X;
    public final AbstractC1910hy A0Y;
    public final C1278Ua A0Z;
    public final KL A0a;
    public final InterfaceC1435a4 A0b;
    public final C1473ai A0c;
    public final Runnable A0d;
    public final boolean A0e;

    public static String A0J(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0f, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 95);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0W() {
        A0f = new byte[]{35, 44, 41, 35, 43, 31, 51, 47, 53, 50, 35, 37, 24, 31, 1, 4, 5, 46, 28, 20, 5, 25, 30, 21, 75, 77, 91, 76, 93, 82, 87, 93, 85, 97, 88, 87, 82, 74, 91, 76, 91, 90, 40, 49, 54, 0, 40, 58, 61, 0, 54, 49, 44, 43, 62, 51, 51, 0, 61, 42, 43, 43, 48, 49, 22};
    }

    static {
        A0W();
        A0h = (int) (AbstractC1338Wl.A02 * 4.0f);
    }

    public C0989Is(C1473ai c1473ai) {
        super(c1473ai, true);
        this.A0K = false;
        this.A0M = false;
        this.A0N = false;
        this.A0O = false;
        this.A0L = false;
        this.A0P = false;
        this.A0G = false;
        this.A0I = false;
        this.A0H = false;
        this.A0F = false;
        this.A01 = 0;
        this.A00 = 0;
        this.A0J = false;
        this.A0Q = false;
        this.A0E = false;
        this.A0T = new Handler(Looper.getMainLooper());
        this.A0C = true;
        this.A0d = new RunnableC1516bP(this);
        this.A0b = new J2(this);
        this.A0S = new Handler(Looper.getMainLooper());
        this.A0W = (InputMethodManager) c1473ai.A06().getSystemService(A0J(12, 12, 46));
        this.A0c = c1473ai;
        this.A0Y = this.A0c.A05();
        this.A0Z = new C1278Ua(c1473ai.A05().A25(), c1473ai.A07());
        this.A0R = A00(c1473ai);
        this.A0V = this.A0c.A03();
        this.A0X = MI.A01(c1473ai.A06(), c1473ai.A07(), c1473ai.A05().A25(), WQ.A00(c1473ai.A05().A20().A0J().A05()), new HashMap(), false, true, this.A0Y.A21());
        AbstractC1456aR.A00(c1473ai.A06(), this, c1473ai.A05().A20().A0H().A08());
        this.A0D = false;
        this.A0U = this.A0c.A02();
        this.A0a = A0F(this.A0c);
        addView(this.A0a);
        XP.A0I(this.A0a);
        this.A0a.getProgressBarAnimation().setShouldClearAnimationWhenVideoCompleted(false);
        A0R();
        A0Q();
        A0U();
        if (A0t()) {
            this.A0A = A0G((E1) this.A0U);
        }
        this.A0e = c1473ai.A05().A1e();
        getAdContextWrapper().A0F().ABe(this.A0e, true, c1473ai.A05().A2C());
        this.A09 = null;
        if (!(this.A0U instanceof E1)) {
            A0O();
        }
        A0N();
    }

    private float A00(C1473ai c1473ai) {
        if (this.A0c.A02() instanceof E1) {
            double dA0h = c1473ai.A05().A0h();
            String[] strArr = A0g;
            if (strArr[0].length() != strArr[4].length()) {
                throw new RuntimeException();
            }
            A0g[7] = "8ZXxKRs86BLRZmcfqRB4QIE0v7vA7Zkm";
            float mAspectRatio = (float) dA0h;
            return mAspectRatio;
        }
        float mAspectRatio2 = new SF(c1473ai.A06()).A0M(this.A0Y.A20().A0H().A08());
        return mAspectRatio2;
    }

    public static int A02(C0989Is c0989Is) {
        int i = c0989Is.A00;
        c0989Is.A00 = i + 1;
        return i;
    }

    public static int A04(C0989Is c0989Is) {
        int i = c0989Is.A01;
        c0989Is.A01 = i + 1;
        return i;
    }

    private KL A0F(C1473ai c1473ai) {
        KL c06675r;
        if (A0w(this.A0R)) {
            c06675r = new C06665q(c1473ai.A06(), getCtaButton(), AbstractC1019Jw.A0I, true, getColors(), c1473ai.A05().A0r(), c1473ai.A07(), c1473ai.A0D(), c1473ai.A0G(), c1473ai.A0A(), c1473ai.A05(), c1473ai.A0F(), c1473ai.A08(), true);
        } else if (A0x(this.A0R)) {
            c06675r = new C06655p(c1473ai.A06(), getCtaButton(), AbstractC1019Jw.A0I, true, getColors(), c1473ai.A05().A0r(), c1473ai.A07(), c1473ai.A0D(), c1473ai.A0G(), c1473ai.A0A(), c1473ai.A05(), c1473ai.A0F(), c1473ai.A08(), true);
        } else {
            c06675r = new C06675r(c1473ai.A06(), getCtaButton(), AbstractC1019Jw.A0I, true, getColors(), c1473ai.A05().A0r(), c1473ai.A07(), c1473ai.A0D(), c1473ai.A0G(), c1473ai.A0A(), c1473ai.A05(), c1473ai.A0F(), c1473ai.A08(), true);
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(12);
        c06675r.setVisibility(8);
        c06675r.setLayoutParams(layoutParams);
        if (c1473ai.A0H() != null) {
            c06675r.setChainedAdInfo(c1473ai.A0H());
        }
        return c06675r;
    }

    private C1447aI A0G(E1 e1) {
        return new C1447aI(this.A0c, this.A0Y, e1, this.A0c.A0D(), new J4(this), this.A0V, this.A0a, this.A03);
    }

    private void A0K() {
        XJ.A00(new Runnable() {
            @Override
            public final void run() {
                this.A00.A1P();
            }
        });
    }

    public void A0L() {
        if (this.A0Y.A1W() && this.A0E) {
            this.A0E = false;
            A0k(A0J(24, 18, 97));
        }
    }

    private void A0M() {
        if (this.A0Y.A1W() && this.A0E) {
            this.A0E = false;
            Map<String, String> mapA05 = new C1420Zp().A03(null).A02(null).A05();
            mapA05.put(A0J(0, 12, 31), A0J(24, 18, 97));
            getAdEventManager().AAs(this.A0Y.A25(), mapA05);
        }
    }

    private void A0N() {
        if (!A0v()) {
            return;
        }
        this.A02 = new ImageView(this.A0c.A06());
        addView(this.A02);
        this.A02.setVisibility(4);
        new KZ(this.A02, this.A0c.A06()).A04().A06(new J3(this)).A07(this.A0Y.A20().A0H().A08());
    }

    private void A0O() {
        this.A0c.A06().A0F().AJw(AbstractC1329Wa.A00(this.A0R), getResources().getConfiguration().orientation, false, this.A0c.A0H() != null, MH.A0A());
        this.A05 = new RelativeLayout(this.A0c.A06());
        this.A04 = new RelativeLayout(this.A0c.A06());
        XP.A0Z(this.A0U);
        this.A04.addView(this.A0U);
        this.A05.addView(this.A04, new RelativeLayout.LayoutParams(-2, -2));
        XP.A0I(this.A04);
        addView(this.A05, new RelativeLayout.LayoutParams(-1, -1));
        XP.A0I(this.A05);
        A0X(getResources().getConfiguration().orientation);
        this.A0a.setVisibility(0);
        A0q(this.A0D, false);
        this.A0a.A0q(getResources().getConfiguration().orientation);
        this.A0a.bringToFront();
    }

    private void A0P() {
        AbstractC1365Xm abstractC1365XmA0C;
        if (this.A0c.A05().A1n() && (abstractC1365XmA0C = this.A0c.A0C()) != null) {
            abstractC1365XmA0C.setProgressSpinnerInvisible(false);
        }
    }

    private void A0Q() {
        XP.A0H(this.A03);
        this.A03 = new LinearLayout(this.A0c.A06());
        this.A03.setOrientation(1);
        XP.A0I(this.A03);
        A0q(this.A0D, false);
        this.A03.setBackgroundColor(-1);
        addView(this.A03);
    }

    private void A0R() {
        if (this.A0Y.A1W()) {
            this.A0U.setOnClickListener(new ViewOnClickListenerC1518bR(this));
        }
        XP.A0H(this.A0U);
        addView(this.A0U, new RelativeLayout.LayoutParams(-1, -1));
        XP.A0I(this.A0U);
        if (U7.A17(this.A0c.A06())) {
            View.OnClickListener onClickListener = new ViewOnClickListenerC1519bS(this);
            this.A0a.setCTAClickListener(onClickListener);
            if (this.A0c.A0C() != null) {
                View.OnClickListener onClickListener2 = new ViewOnClickListenerC1520bT(this);
                this.A0c.A0C().setCTAClickListener(onClickListener2);
            }
        }
        if (U7.A1K(getAdContextWrapper())) {
            AbstractC1423Zs.A00(this.A0U, U7.A1L(getAdContextWrapper()), new ViewOnClickListenerC1521bU(this));
        } else {
            if (!U7.A1I(getAdContextWrapper())) {
                return;
            }
            AbstractC1423Zs.A00(this.A0U, U7.A1J(getAdContextWrapper()), new ViewOnClickListenerC1522bV(this));
        }
    }

    private void A0S() {
        if (this.A0V != null) {
            XP.A0H(this.A0V);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(AbstractC1469ae.A0J, AbstractC1469ae.A0J);
            layoutParams.setMargins(AbstractC1469ae.A0A, AbstractC1469ae.A0G, AbstractC1469ae.A0A, AbstractC1469ae.A09);
            layoutParams.addRule(9);
            layoutParams.addRule(10);
            addView(this.A0V, layoutParams);
        }
    }

    private void A0T() {
        AbstractC1365Xm abstractC1365XmA0C = this.A0c.A0C();
        if (abstractC1365XmA0C == null) {
            return;
        }
        abstractC1365XmA0C.setPageDetailsVisible((this.A0D || abstractC1365XmA0C.A0B()) ? false : true);
        String[] strArr = A0g;
        if (strArr[2].charAt(22) == strArr[3].charAt(22)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0g;
        strArr2[2] = "1yoT7KI3snCc494ZeQVfvKcwdedzZqUL";
        strArr2[3] = "maitTS2j9i61dN9OwsPG0RZMowmllQ6i";
    }

    private void A0U() {
        if (!this.A0L) {
            A0S();
        }
        A0T();
    }

    private void A0V() {
        int videoDuration;
        C0838Cw c0838CwA0F = this.A0c.A0F();
        if (c0838CwA0F != null && c0838CwA0F.getCustomDuration() > (videoDuration = ((E1) this.A0U).getDuration())) {
            c0838CwA0F.setCustomDuration(videoDuration);
        }
    }

    private void A0X(int i) {
        ViewGroup viewGroup;
        RelativeLayout adjacentView;
        if (this.A0U == null) {
            return;
        }
        if (A0t()) {
            viewGroup = (ViewGroup) this.A0U;
            adjacentView = (RelativeLayout) ((E1) this.A0U).getVideoView();
            ((E1) this.A0U).A0c(i);
        } else {
            A0Y(i);
            viewGroup = this.A05;
            adjacentView = this.A04;
        }
        if (viewGroup != null) {
            A0Z(i, viewGroup, adjacentView);
        }
    }

    private void A0Y(int i) {
        if (this.A0U == null || this.A04 == null) {
            return;
        }
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.A0U.getLayoutParams();
        layoutParams.removeRule(13);
        layoutParams.removeRule(10);
        layoutParams.removeRule(9);
        if (i == 1) {
            layoutParams.width = -1;
            layoutParams.height = -2;
            layoutParams.addRule(10);
        } else {
            layoutParams.width = -2;
            layoutParams.height = -1;
            if (A0x(this.A0R)) {
                layoutParams.addRule(13);
                layoutParams.addRule(14);
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.A04.getLayoutParams();
                layoutParams2.addRule(14);
                RelativeLayout relativeLayout = this.A04;
                if (A0g[6].length() == 10) {
                    throw new RuntimeException();
                }
                String[] strArr = A0g;
                strArr[5] = "iCwgI3rcmLyVygWAbxB5hffDSu";
                strArr[1] = "9hOX";
                relativeLayout.setLayoutParams(layoutParams2);
            } else {
                layoutParams.addRule(9);
            }
        }
        this.A0U.setLayoutParams(layoutParams);
    }

    private final void A0Z(int i, ViewGroup viewGroup, RelativeLayout relativeLayout) {
        if (relativeLayout == null) {
            return;
        }
        XP.A0H(this.A0a);
        if ((this.A0a instanceof C06675r) || (this.A0a instanceof C06665q)) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            if (getResources().getConfiguration().orientation == 2) {
                layoutParams.addRule(1, relativeLayout.getId());
                this.A0a.setLayoutParams(layoutParams);
                viewGroup.addView(this.A0a);
            } else {
                addView(this.A0a, layoutParams);
            }
        } else if (this.A0a instanceof C06655p) {
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams2.addRule(12);
            this.A0a.setLayoutParams(layoutParams2);
            addView(this.A0a, layoutParams2);
        }
        this.A0a.A0h(i);
        this.A0a.A0s(viewGroup, relativeLayout, i);
    }

    private void A0a(ViewGroup viewGroup, View view, int i) {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) viewGroup.getLayoutParams();
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) view.getLayoutParams();
        layoutParams.width = -1;
        layoutParams.height = -1;
        if (i == 1) {
            layoutParams2.width = -1;
            layoutParams2.height = -2;
        } else {
            layoutParams2.width = -2;
            layoutParams2.height = -1;
        }
        layoutParams2.removeRule(14);
        viewGroup.setLayoutParams(layoutParams);
        view.setLayoutParams(layoutParams2);
        A0X(i);
    }

    private void A0b(ViewGroup viewGroup, View view, AbstractC1365Xm abstractC1365Xm, int i) {
        XP.A0Z(this.A03);
        XP.A0H(abstractC1365Xm);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(10);
        layoutParams.setMargins(AbstractC1469ae.A0H, AbstractC1469ae.A0G, 0, 0);
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) viewGroup.getLayoutParams();
        RelativeLayout.LayoutParams toolbarParams = (RelativeLayout.LayoutParams) view.getLayoutParams();
        layoutParams2.width = -1;
        layoutParams2.height = -1;
        if (i == 1) {
            toolbarParams.width = -1;
            toolbarParams.height = -2;
        } else {
            toolbarParams.width = -2;
            toolbarParams.height = -1;
        }
        toolbarParams.removeRule(14);
        viewGroup.setLayoutParams(layoutParams2);
        view.setLayoutParams(toolbarParams);
        this.A0a.A0t(viewGroup, false, false, this.A03.getId());
        A0X(i);
        viewGroup.addView(abstractC1365Xm, layoutParams);
    }

    private void A0c(ViewGroup viewGroup, View view, AbstractC1365Xm abstractC1365Xm, int i) {
        XP.A0H(this.A03);
        XP.A0H(abstractC1365Xm);
        XP.A0H(this.A0a);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(10);
        layoutParams.setMargins(AbstractC1469ae.A0H, AbstractC1469ae.A0G, 0, 0);
        boolean zA0x = A0x(this.A0R);
        boolean z = i == 1;
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) viewGroup.getLayoutParams();
        ViewGroup.LayoutParams layoutParams3 = view.getLayoutParams();
        String[] strArr = A0g;
        if (strArr[0].length() == strArr[4].length()) {
            String[] strArr2 = A0g;
            strArr2[0] = "gMMEXEf83ER27J";
            strArr2[4] = "aGKtDxzcfwUdZH";
            RelativeLayout.LayoutParams toolbarParams = (RelativeLayout.LayoutParams) layoutParams3;
            toolbarParams.removeRule(14);
            toolbarParams.removeRule(9);
            RelativeLayout.LayoutParams layoutParams4 = (RelativeLayout.LayoutParams) this.A03.getLayoutParams();
            layoutParams4.removeRule(3);
            layoutParams4.removeRule(1);
            boolean z2 = z || zA0x;
            if (z2) {
                layoutParams2.height = getHeightPixels() / 4;
                toolbarParams.height = getHeightPixels() / 4;
                toolbarParams.addRule(14);
                layoutParams4.addRule(3, viewGroup.getId());
            } else {
                if (A0t()) {
                    ((E1) this.A0U).A0c(i);
                } else {
                    A0Y(i);
                }
                layoutParams2.height = -1;
                toolbarParams.height = -1;
                toolbarParams.addRule(9);
                layoutParams4.addRule(1, view.getId());
            }
            layoutParams2.addRule(9);
            layoutParams2.addRule(10);
            viewGroup.setLayoutParams(layoutParams2);
            toolbarParams.width = -2;
            view.setLayoutParams(toolbarParams);
            layoutParams4.width = -1;
            layoutParams4.height = -1;
            layoutParams4.setMargins(0, 0, 0, 0);
            this.A03.setLayoutParams(layoutParams4);
            if (z2) {
                addView(this.A03);
                addView(abstractC1365Xm, layoutParams);
            } else {
                viewGroup.addView(this.A03);
                layoutParams.addRule(0, this.A03.getId());
                viewGroup.addView(abstractC1365Xm, layoutParams);
            }
            this.A0a.A0t(viewGroup, true, zA0x, this.A03.getId());
            String[] strArr3 = A0g;
            if (strArr3[5].length() != strArr3[1].length()) {
                String[] strArr4 = A0g;
                strArr4[2] = "CWhY5lESONlEwbbLTXD1P9sq7rTQEAxl";
                strArr4[3] = "9vRVnKcQEtusRhiKpReBzjJJRjYVnCrD";
                return;
            }
        }
        throw new RuntimeException();
    }

    public void A0j(String str) {
        LJ lj;
        XP.A0H(this.A08);
        J8 j8 = new J8(this);
        if (this.A0c.A06().A0E() == null) {
            this.A0c.A06().A0F().A9n();
        }
        if (U8.A02(this.A0c.A06()) || this.A0c.A06().A0E() == null) {
            lj = new LJ(this.A0c.A06(), j8);
        } else {
            lj = new LJ(this.A0c.A06(), this.A0c.A06().A0E(), j8);
        }
        this.A08 = lj;
        if (this.A0Y.A1d()) {
            this.A08.addJavascriptInterface(new C1458aT(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.A00.A1Q(view);
                }
            }, this.A08, new InterfaceC1457aS() {
                @Override
                public final void ACk() {
                    this.A00.A1O();
                }
            }), C1458aT.A01());
        }
        this.A08.setOnTouchListener(new ViewOnTouchListenerC1513bM(this));
        setUpBrowserControls(this.A08);
        this.A03.addView(this.A08, new LinearLayout.LayoutParams(-1, -1));
        this.A08.loadUrl(str);
    }

    private void A0k(String str) {
        Map<String, String> mapA05 = new C1420Zp().A03(null).A02(null).A05();
        mapA05.put(A0J(0, 12, 31), str);
        this.A0Z.A04(UZ.A0J, mapA05);
        this.A0c.A0D().A4b(this.A0Y.A0r());
        getAdEventManager().AB8(this.A0Y.A25(), mapA05);
        if (U7.A2N(this.A0c.A06())) {
            HashMap map = new HashMap();
            map.put(AbstractC1954im.A04, Boolean.TRUE.toString());
            map.put(AbstractC1954im.A05, Boolean.TRUE.toString());
            map.put(AbstractC1954im.A06, Boolean.TRUE.toString());
            getAdEventManager().ABH(this.A0Y.A25(), map);
        }
    }

    public void A0l(String str) {
        if (this.A0Y.A1w() > 0) {
            if (this.A0Y.A2E() && this.A0F) {
                return;
            }
            this.A0F = true;
            A0k(str);
            return;
        }
        if (this.A0Y.A1V()) {
            A0L();
        }
    }

    public void A0m(String str) {
        if (!this.A0D) {
            this.A0a.getCTAButton().A0E(str);
        }
    }

    public void A0n(boolean z) {
        if (!z && A0u()) {
            return;
        }
        this.A0D = z;
        if (z) {
            this.A00 = 0;
            this.A01 = 0;
            this.A0G = false;
            this.A0H = false;
            this.A0I = false;
            this.A0F = false;
            A0p(!A0u(), 0);
            A0P();
        } else {
            this.A0S.removeCallbacksAndMessages(null);
        }
        if (!this.A0J) {
            postDelayed(new J6(this, z), 250L);
        }
        LinearLayout linearLayout = this.A03;
        float y = this.A03.getY();
        float heightPixels = getHeightPixels();
        if (z) {
            if (A0g[7].charAt(21) == '6') {
                throw new RuntimeException();
            }
            String[] strArr = A0g;
            strArr[5] = "hio5BYluDvHiSt1DGRQHr7K5cg";
            strArr[1] = "0MBl";
            heightPixels /= 4.0f;
        }
        float[] fArr = {y, heightPixels};
        String strA0J = A0J(64, 1, 48);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(linearLayout, strA0J, fArr);
        objectAnimatorOfFloat.setDuration(500L);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.A0U, strA0J, this.A0U.getY(), 0.0f);
        objectAnimatorOfFloat2.setDuration(500L);
        int height = this.A0U.getHeight();
        int heightPixels2 = getHeightPixels();
        if (z) {
            heightPixels2 /= 4;
        }
        ValueAnimator duration = ValueAnimator.ofInt(height, heightPixels2).setDuration(500L);
        duration.addUpdateListener(new C1514bN(this));
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setInterpolator(new AccelerateDecelerateInterpolator());
        animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2, duration);
        animatorSet.addListener(new C1515bO(this, z));
        if (this.A0U instanceof E1) {
            ((E1) this.A0U).A0f(animatorSet, z);
        }
        A0q(this.A0D, true);
        if (!z) {
            LJ lj = this.A08;
            if (A0g[7].charAt(21) != '6') {
                String[] strArr2 = A0g;
                strArr2[5] = "z5dmUOvd8popCSTMrgBvM8lyRS";
                strArr2[1] = "CUou";
                if (lj == null) {
                    return;
                }
            } else {
                String[] strArr3 = A0g;
                strArr3[0] = "rFRlHjeSTcy3i9";
                strArr3[4] = "rYziz9k5lFc2SB";
                if (lj == null) {
                    return;
                }
            }
            this.A08.destroy();
        }
    }

    private void A0o(boolean z) {
        this.A0L = true;
        this.A0a.A0j();
        XP.A0Z(this.A0A, this.A06, this.A03, this.A0V, this.A0a, this.A0U, this.A0c.A0F(), this.A05, this.A04, this.A0c.A0C());
        XP.A0R(this);
        if (this.A02 != null) {
            this.A02.setVisibility(0);
        }
        if (Build.VERSION.SDK_INT >= 35) {
            Object parent = getParent();
            if (parent instanceof View) {
                View view = (View) parent;
                view.setFitsSystemWindows(false);
                view.setPadding(0, 0, 0, 0);
            }
        }
        if (A0t()) {
            E1 e1 = (E1) this.A0U;
            Iterator<InterfaceC1652dc> it = e1.getPlugins().iterator();
            while (true) {
                boolean zHasNext = it.hasNext();
                if (A0g[6].length() == 10) {
                    throw new RuntimeException();
                }
                String[] strArr = A0g;
                strArr[5] = "Cvniwq1c5lbs2HOl3mraOy3NaR";
                strArr[1] = "MPMP";
                if (!zHasNext) {
                    break;
                }
                InterfaceC1652dc next = it.next();
                if (next instanceof C2R) {
                    e1.A0j(next);
                    break;
                }
            }
        }
        this.A0B = new C1485au(this.A0c.A06(), this.A0Y, this.A0Z, this.A0T, this.A0c.A0D());
        this.A0B.A0D(z);
        addView(this.A0B.A09(getRegularCtaForEndCard()));
        if (!z) {
            if (this.A0c.A0C() != null) {
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
                layoutParams.addRule(10);
                layoutParams.setMargins(AbstractC1469ae.A0H, AbstractC1469ae.A0G, 0, 0);
                addView(this.A0c.A0C(), layoutParams);
                this.A0c.A0C().bringToFront();
            }
            this.A0C = true;
            InterfaceC1582cT interfaceC1582cTA0E = this.A0c.A0E();
            if (A0g[7].charAt(21) != '6') {
                A0g[6] = "OOVaJo";
                if (interfaceC1582cTA0E == null) {
                    return;
                }
            } else if (interfaceC1582cTA0E == null) {
                return;
            }
            this.A0c.A0E().AFE(true);
            if (this.A0c.A0C() != null && this.A0c.A05().A20().A0K().A00() > 0) {
                this.A0C = false;
                if (this.A0c.A05().A2G()) {
                    this.A0c.A0C().setToolbarActionMode(8);
                } else {
                    this.A0c.A0C().setToolbarActionMode(2);
                }
                new Handler(Looper.getMainLooper()).postDelayed(new RunnableC1517bQ(this), this.A0c.A05().A20().A0K().A00());
            }
        }
    }

    private void A0p(boolean z, int i) {
        if (this.A06 == null || !this.A0e) {
            return;
        }
        this.A06.setCloseButtonVisibility(z ? 0 : 4);
        getAdContextWrapper().A0F().ABc(!z, i);
    }

    public void A0q(boolean z, boolean z2) {
        if (A0s()) {
            return;
        }
        AbstractC1365Xm abstractC1365XmA0C = this.A0c.A0C();
        if (A0g[6].length() == 10) {
            throw new RuntimeException();
        }
        A0g[6] = "gQE173ac";
        if (abstractC1365XmA0C == null) {
            return;
        }
        ViewGroup parentView = getParentView();
        if (A0g[6].length() == 10) {
            throw new RuntimeException();
        }
        String[] strArr = A0g;
        strArr[2] = "HI7slczAopnLrQVo6YkGF0EaDN2P2XJ6";
        strArr[3] = "Ht1OtVWvCs2jCygEm2rJxJr9xXXDE1GX";
        View containerView = getContainerView();
        if (parentView == null || containerView == null) {
            return;
        }
        int i = getResources().getConfiguration().orientation;
        if (z) {
            A0c(parentView, containerView, abstractC1365XmA0C, i);
        } else if (z2) {
            A0b(parentView, containerView, abstractC1365XmA0C, i);
        } else {
            A0a(parentView, containerView, i);
        }
    }

    private boolean A0r() {
        if (this.A0Y.A20().A0H().A0B() && this.A0O) {
            boolean z = this.A0P;
            String[] strArr = A0g;
            if (strArr[5].length() == strArr[1].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0g;
            strArr2[2] = "CULoRpyPQpgDQm7q7yLjDGE92r3i5BFz";
            strArr2[3] = "FD29Dr2zGBD96QEWLn0naQvlBTnIp70Y";
            if (!z && !this.A0M) {
                return true;
            }
        }
        return false;
    }

    private boolean A0s() {
        return this.A0U == null || (A0t() && !this.A0Q);
    }

    private boolean A0t() {
        return this.A0U instanceof E1;
    }

    private boolean A0u() {
        return this.A0e && this.A0N;
    }

    private boolean A0v() {
        return this.A0Y.A20().A0V() && this.A0Y.A20().A0K().A04();
    }

    public static boolean A0w(float f) {
        return f <= 0.7f;
    }

    public static boolean A0x(float f) {
        return f >= 1.2f;
    }

    @Override
    public final ME A1A(String str) {
        ME me2 = ME.A09;
        if (!A1S()) {
            C1485au c1485au = this.A0B;
            String[] strArr = A0g;
            if (strArr[0].length() != strArr[4].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0g;
            strArr2[5] = "mDHIeobZMaiDBC6GT0NjXylYqI";
            strArr2[1] = "9M0w";
            if (c1485au != null) {
                return this.A0B.A0B().A0E(str);
            }
            return getCtaButton().A0E(str);
        }
        return me2;
    }

    @Override
    public final void A1B() {
        A0M();
        this.A0T.removeCallbacksAndMessages(null);
        this.A0a.A0f();
        super.A1B();
    }

    @Override
    public final void A1C() {
        AbstractC1365Xm abstractC1365XmA0C = this.A0c.A0C();
        if (abstractC1365XmA0C != null) {
            abstractC1365XmA0C.setPageDetailsVisible((A1S() || abstractC1365XmA0C.A0B()) ? false : true);
        }
        this.A0O = false;
    }

    @Override
    public final void A1D() {
        if (this.A0c.A0C() != null) {
            this.A0c.A0C().setPageDetailsVisible(false);
        }
        this.A0O = true;
    }

    @Override
    public final void A1E() {
        this.A0M = false;
        this.A0N = false;
        A0p(true, 3);
        this.A0a.A0i();
    }

    @Override
    public final void A1F() {
        this.A0M = this.A0Y.A20().A0H().A04() > 0;
        this.A0N = true;
        A0p(false, 2);
    }

    @Override
    public final void A1G(C1089Mp c1089Mp, String str, double d, Bundle bundle) {
        super.A1G(c1089Mp, str, d, bundle);
        this.A0a.setInfo(c1089Mp.A0I(), c1089Mp.A0J(), str, this.A0Y.A23().A01(), this.A0c.A09(), this.A0b);
        this.A0a.getCTAButton().setIsInAppBrowser(true);
    }

    @Override
    public final void A1H(C06013d c06013d) {
        super.A1H(c06013d);
        if (A0v() && !A1S()) {
            A0o(true);
        }
    }

    @Override
    public final void A1I(DO r8) {
        super.A1I(r8);
        this.A0c.A06().A0F().AJw(AbstractC1329Wa.A00(this.A0R), getResources().getConfiguration().orientation, true, false, MH.A0A());
        this.A0Q = true;
        A0X(getResources().getConfiguration().orientation);
        this.A0a.setVisibility(0);
        A0q(this.A0D, false);
        this.A0a.A0q(getResources().getConfiguration().orientation);
        this.A0a.bringToFront();
        A0V();
    }

    @Override
    public final void A1J(C3Q c3q, int i) {
        super.A1J(c3q, i);
        int duration = ((E1) this.A0U).getDuration() * i;
        int videoDuration = c3q.A00();
        this.A0a.A0o((duration + videoDuration) / 1000);
    }

    @Override
    public final boolean A1K() {
        return A0v();
    }

    @Override
    public final boolean A1L() {
        return !A1S();
    }

    @Override
    public final boolean A1M() {
        return true;
    }

    @Override
    public final boolean A1N(boolean z) {
        if (A0r()) {
            getAdContextWrapper().A0F().ABf();
            if (this.A0A != null) {
                this.A0A.A07(this);
            }
            return true;
        }
        if (A0v()) {
            getAdContextWrapper().A0F().ABg();
            if (this.A0U instanceof E1) {
                E1 simpleVideoView = (E1) this.A0U;
                simpleVideoView.A0k(true);
            }
            A0o(true);
            return true;
        }
        getAdContextWrapper().A0F().ABd();
        return false;
    }

    public final void A1O() {
        this.A0c.A06().A0F().ABi();
    }

    public final void A1P() {
        if (this.A09 != null) {
            this.A0c.A06().A0F().ABl();
            this.A09.A0E(A0J(42, 22, 0));
        }
    }

    public final void A1Q(View view) {
        A0K();
    }

    public final void A1R(boolean z) {
        A0o(z);
    }

    public final boolean A1S() {
        return this.A0D;
    }

    public final boolean A1T() {
        return this.A0L;
    }

    public final boolean A1U() {
        return this.A0C;
    }

    @Override
    public int getCloseButtonStyle() {
        if (this.A0Y.A20().A0H().A02() >= 0 && A1L()) {
            boolean z = this.A0M;
            if (A0g[6].length() == 10) {
                throw new RuntimeException();
            }
            A0g[7] = "Ls3R1IhphSEeti0RclvzrDjIYGWvTtJZ";
            if (z || this.A0O) {
                return 8;
            }
        }
        if (this.A0M) {
            return 2;
        }
        if (this.A0Y.A20().A0H().A0B()) {
            return 1;
        }
        if (this.A0O) {
            return 4;
        }
        if (A0v()) {
            return 1;
        }
        return super.getCloseButtonStyle();
    }

    private View getContainerView() {
        if (A0t()) {
            return ((E1) this.A0U).getVideoView();
        }
        return this.A04;
    }

    private int getHeightPixels() {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        return displayMetrics.heightPixels;
    }

    private ViewGroup getParentView() {
        if (A0t()) {
            return (ViewGroup) this.A0U;
        }
        return this.A05;
    }

    private KE getRegularCtaForEndCard() {
        KE ke = new KE(getAdContextWrapper(), this.A0c.A05().A0r(), this.A0Y.A1z().A01(), getAdEventManager(), this.A0c.A0D(), (C1708eX) null, this.A0c.A0A(), this.A0Y.A21());
        ke.setViewShowsOverMedia(true);
        XP.A0I(ke);
        ke.setText(this.A0Y.A20().A0J().A04());
        XP.A0E(1001, ke);
        ke.setCta(this.A0Y.A20().A0J(), this.A0Y.A25(), new HashMap(), null);
        return ke;
    }

    @Override
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.A0L) {
            if (Build.VERSION.SDK_INT >= 35) {
                Object parent = getParent();
                if (parent instanceof View) {
                    View view = (View) parent;
                    view.setFitsSystemWindows(false);
                    view.setPadding(0, 0, 0, 0);
                    return;
                }
                return;
            }
            return;
        }
        A0q(this.A0D, false);
    }

    @Override
    public void setChainedWatchAndBrowseSkippableStatus(boolean z) {
        this.A0N = !z;
        A0p(z, 4);
    }

    public void setChildChainedAd(boolean z) {
        this.A0J = z;
    }

    private void setUpBrowserControls(LJ lj) {
        XP.A0H(this.A06);
        this.A06 = new ZH(this.A0c.A06(), lj, true);
        if (this.A0e) {
            A0p(false, 1);
        }
        lj.setBrowserNavigationListener(this.A06.getBrowserNavigationListener());
        XP.A0I(this.A06);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.setMargins(AbstractC1469ae.A0I, AbstractC1469ae.A0I, AbstractC1469ae.A0I, AbstractC1469ae.A0I);
        this.A06.setListener(new J1(this));
        this.A03.addView(this.A06, layoutParams);
        XP.A0H(this.A07);
        this.A07 = new ZP(this.A0c.A06(), null, R.attr.progressBarStyleHorizontal);
        this.A03.addView(this.A07, new LinearLayout.LayoutParams(-1, A0h));
    }
}
