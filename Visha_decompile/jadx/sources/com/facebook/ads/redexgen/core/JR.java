package com.facebook.ads.redexgen.core;

import android.content.res.Configuration;
import android.graphics.Typeface;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.media3.common.PlaybackException;
import java.util.Arrays;
import java.util.Locale;

public final class JR extends AbstractC1469ae {
    public static byte[] A0V;
    public static String[] A0W = {"UQ7TFs74lcUdZuEisIQQex1S2hJkyBQJ", "myvpLMPCiy1Db21mRiA", "GFipZK8NVLufipAPgP", "AfraUSEhnPTRS4j1c1sVruXnc5XHPJ9d", "a5o2PCnXzYQrRDOC9DPzRLQmHH", "zC9Q5dVrf3DuizGN", "cBKGhAcqgckkizLMVTE8MrLSp3snJrYL", "vsEAc6f0BLlcSapFKHSSbJlGpIzpiVSU"};
    public static final int A0X;
    public static final int A0Y;
    public static final int A0Z;
    public static final int A0a;
    public static final int A0b;
    public static final int A0c;
    public int A00;
    public int A01;
    public ImageView A02;
    public ImageView A03;
    public ImageView A04;
    public LinearLayout A05;
    public O2 A06;
    public InterfaceC1593ce A07;
    public EG A08;
    public C06063i A09;
    public final Handler A0A;
    public final ImageView A0B;
    public final RelativeLayout A0C;
    public final RelativeLayout A0D;
    public final RelativeLayout A0E;
    public final RelativeLayout A0F;
    public final RelativeLayout A0G;
    public final TextView A0H;
    public final TextView A0I;
    public final TextView A0J;
    public final TextView A0K;
    public final TextView A0L;
    public final C1635dL A0M;
    public final C1278Ua A0N;
    public final C1449aK A0O;
    public final C1451aM A0P;
    public final C1473ai A0Q;
    public final E1 A0R;
    public final DX A0S;
    public final DP A0T;
    public final Runnable A0U;

    public static String A0J(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0V, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) + PlaybackException.ERROR_CODE_PARENTAL_CONTROL_RESTRICTED);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0Q() {
        A0V = new byte[]{-24, 26, 41, 60, 49, 54, 47, -77, -68, -65, -12};
    }

    static {
        A0Q();
        A0X = (int) (AbstractC1338Wl.A02 * 32.0f);
        A0Y = (int) (AbstractC1338Wl.A02 * 38.0f);
        A0Z = (int) (AbstractC1338Wl.A02 * 40.0f);
        A0a = (int) (AbstractC1338Wl.A02 * 44.0f);
        A0b = (int) (AbstractC1338Wl.A02 * 48.0f);
        A0c = (int) (AbstractC1338Wl.A02 * 16.0f);
    }

    public JR(C1473ai c1473ai) {
        super(c1473ai, false);
        this.A0A = new Handler(Looper.getMainLooper());
        this.A0T = new DP() {
            public static String[] A01 = {"1XAudPm5bNoLpQjIPSZWPFOeb", "KPQovwGp6PfJEyzo2xgnSN1gmGV3wBfO", "MSOuoVglH1pxZtUt86IkEaCPI", "Ahn71CuWf", "XCR0a8v2bJ8TOqmTegoErV6kR", "kQ55lQ8tRAtObxY9GvDk6DQ4l", "65Z7gaQiVm7Q6XjyGmw2uvR6b", "4ArQv5JqOif9H4kcX07xj56lI8DuBc1Y"};

            @Override
            public final void A03(DQ dq) {
                if (this.A00.A07 != null) {
                    JR jr = this.A00;
                    if (A01[3].length() != 9) {
                        throw new RuntimeException();
                    }
                    A01[3] = "L2P2qOlVB";
                    jr.A07.AJT();
                }
            }
        };
        this.A0S = new DX() {
            @Override
            public final void A03(C06013d c06013d) {
                this.A00.A0R.A0h(EnumC1651db.A02, 20);
            }
        };
        this.A0U = new RunnableC1504bD(this);
        this.A0M = c1473ai.A06();
        this.A0Q = c1473ai;
        this.A0N = new C1278Ua(this.A0Q.A05().A25(), getAdEventManager());
        this.A0N.A04(UZ.A0f, null);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.A00 = displayMetrics.heightPixels;
        this.A01 = displayMetrics.widthPixels;
        this.A0R = A0G();
        XP.A0I(this.A0R);
        this.A0R.setVideoURI(this.A0Q.A05().A20().A0H().A09());
        this.A0R.A0h(EnumC1651db.A02, 20);
        this.A0R.getEventBus().A03(this.A0T, this.A0S);
        this.A0F = A06();
        XP.A0I(this.A0F);
        A0L();
        this.A0O = A0D();
        XP.A0I(this.A0O);
        this.A0K = A0B();
        XP.A0I(this.A0K);
        this.A0P = A0E();
        XP.A0I(this.A0P);
        this.A0I = A09();
        XP.A0I(this.A0I);
        this.A0B = A01();
        XP.A0I(this.A0B);
        this.A0H = A08();
        XP.A0I(this.A0H);
        this.A0D = A05();
        XP.A0I(this.A0D);
        this.A0C = A04();
        XP.A0I(this.A0C);
        this.A0J = A0A();
        XP.A0I(this.A0J);
        this.A0L = A0C();
        XP.A0I(this.A0L);
        this.A0G = A07(getWatchAdCtaText(), 654311423);
        XP.A0I(this.A0G);
        this.A0E = A07(this.A0Q.A05().A14(), -16226561);
        XP.A0I(this.A0E);
        AbstractC1456aR.A00(this.A0Q.A06(), this, this.A0Q.A05().A20().A0H().A08());
        int i = getResources().getConfiguration().orientation;
        A0f(i);
        addView(this.A0R);
        A0R(i);
        A0K();
    }

    private ImageView A01() {
        ImageView imageView = new ImageView(this.A0M);
        imageView.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
        imageView.setImageBitmap(XY.A01(XX.DOWNLOAD_ICON));
        return imageView;
    }

    private LinearLayout A03() {
        this.A02 = new ImageView(this.A0M);
        this.A03 = new ImageView(this.A0M);
        LinearLayout linearLayout = new LinearLayout(this.A0M);
        this.A02.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        this.A02.setImageBitmap(XY.A01(XX.AD_CHOICE_V2_COLLAPSE));
        linearLayout.addView(this.A02);
        this.A03.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        this.A03.setImageBitmap(XY.A01(XX.AD_CHOICE_V2_EXPAND));
        linearLayout.addView(this.A03);
        RelativeLayout.LayoutParams adReportingLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
        adReportingLayoutParams.addRule(12);
        adReportingLayoutParams.addRule(11);
        linearLayout.setLayoutParams(adReportingLayoutParams);
        return linearLayout;
    }

    private RelativeLayout A04() {
        RelativeLayout relativeLayout = new RelativeLayout(this.A0M);
        relativeLayout.addView(this.A0K);
        if (this.A0Q.A05().A1g()) {
            relativeLayout.addView(this.A0P);
            relativeLayout.addView(this.A0I);
        } else {
            RelativeLayout relativeLayout2 = this.A0D;
            String[] strArr = A0W;
            if (strArr[2].length() == strArr[4].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0W;
            strArr2[2] = "DGMgcqNKmRBhEzUZj1";
            strArr2[4] = "QbI2wW46F5loixSEU5hnRqKbb5";
            relativeLayout.addView(relativeLayout2);
        }
        return relativeLayout;
    }

    private RelativeLayout A05() {
        RelativeLayout relativeLayout = new RelativeLayout(this.A0M.A02());
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
        relativeLayout.addView(this.A0B);
        relativeLayout.addView(this.A0H);
        return relativeLayout;
    }

    private RelativeLayout A06() {
        RelativeLayout relativeLayout = new RelativeLayout(this.A0M.A02());
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-2, -1));
        return relativeLayout;
    }

    private RelativeLayout A07(String str, int i) {
        RelativeLayout relativeLayout = new RelativeLayout(this.A0M);
        relativeLayout.setPadding(AbstractC1469ae.A0A, AbstractC1469ae.A0A, AbstractC1469ae.A0A, AbstractC1469ae.A0A);
        XP.A0Q(relativeLayout, XP.A06(i, 30));
        relativeLayout.setGravity(16);
        TextView textView = new TextView(this.A0M);
        RelativeLayout.LayoutParams contentTextViewParams = new RelativeLayout.LayoutParams(-2, -2);
        contentTextViewParams.addRule(14);
        textView.setText(str);
        textView.setTextColor(-1);
        XP.A0W(textView, true, 14);
        textView.setLayoutParams(contentTextViewParams);
        relativeLayout.addView(textView);
        return relativeLayout;
    }

    private TextView A08() {
        TextView textView = new TextView(this.A0M);
        textView.setText(this.A0Q.A05().A20().A0I().A01());
        textView.setTextColor(-2130706433);
        textView.setMaxLines(1);
        textView.setTypeface(Typeface.DEFAULT);
        textView.setTextSize(12.0f);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        return textView;
    }

    private TextView A09() {
        TextView textView = new TextView(this.A0M);
        textView.setText(getRatingText());
        textView.setTextColor(-2130706433);
        textView.setMaxLines(1);
        textView.setTypeface(Typeface.DEFAULT);
        textView.setTextSize(12.0f);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setTextAlignment(4);
        return textView;
    }

    private TextView A0A() {
        TextView textView = new TextView(this.A0M);
        textView.setText(String.format(Locale.US, this.A0Q.A05().A15(), this.A0Q.A05().A20().A0I().A0F()));
        textView.setTextColor(-1);
        textView.setMaxLines(3);
        textView.setTypeface(Typeface.DEFAULT_BOLD);
        textView.setTextSize(24.0f);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setTextAlignment(4);
        return textView;
    }

    private TextView A0B() {
        TextView textView = new TextView(this.A0M);
        textView.setText(this.A0Q.A05().A20().A0I().A0F());
        textView.setTextColor(-1);
        textView.setMaxLines(2);
        textView.setTypeface(Typeface.DEFAULT_BOLD);
        textView.setTextSize(18.0f);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        return textView;
    }

    private TextView A0C() {
        TextView textView = new TextView(this.A0M);
        textView.setText(getWatchAdCtaText());
        textView.setTextColor(-1);
        textView.setMaxLines(1);
        textView.setTypeface(Typeface.DEFAULT_BOLD);
        textView.setTextSize(14.0f);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setTextAlignment(4);
        return textView;
    }

    private C1449aK A0D() {
        C1449aK c1449aK = new C1449aK(this.A0M);
        XP.A0K(c1449aK, 0);
        int i = (int) (this.A00 * 0.13f);
        new KZ(c1449aK, this.A0M).A05(i, i).A07(this.A0Q.A05().A23().A01());
        return c1449aK;
    }

    private C1451aM A0E() {
        C1451aM c1451aM = new C1451aM(this.A0M, A0c, 5, 0, -1);
        c1451aM.setRating(getRating());
        return c1451aM;
    }

    private E1 A0G() {
        E1 e1 = new E1(this.A0Q.A06());
        this.A09 = new C06063i(this.A0M, getAdEventManager(), e1, this.A0Q.A05().A25(), 0, 0, true, null, null);
        if (U7.A1v(this.A0M)) {
            this.A08 = new EG(this.A0M, getAdEventManager(), e1, this.A0Q.A05().A25(), false, this.A09, null);
        } else {
            String[] strArr = A0W;
            if (strArr[2].length() == strArr[4].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0W;
            strArr2[2] = "hx8qxgvoIW6xceGAWf";
            strArr2[4] = "wYZsMrXjcXuhFUuKsEl8E0dQOo";
            this.A08 = null;
        }
        e1.setRoundedCornerVideoView(44.0f);
        return e1;
    }

    private void A0K() {
        this.A0E.setOnClickListener(new ViewOnClickListenerC1506bF(this));
        if (this.A0Q.A05().A1g()) {
            this.A0L.setOnClickListener(new ViewOnClickListenerC1507bG(this));
        } else {
            this.A0G.setOnClickListener(new ViewOnClickListenerC1508bH(this));
        }
    }

    private void A0L() {
        if (this.A0Q.A05().A2H()) {
            this.A04 = A00(this.A0M, this.A0Q.A05(), this.A0N, Z5.A04, this.A0Q.A0D(), this.A0A);
            XP.A0I(this.A04);
        } else {
            if (!this.A0Q.A05().A1g()) {
                return;
            }
            this.A06 = O3.A00(this.A0M.A02());
            this.A05 = A03();
            XP.A0I(this.A05);
            A0N();
        }
    }

    private void A0M() {
        if (this.A0Q.A05().A1g() && getRating() == 0.0f) {
            this.A0C.setVisibility(8);
            this.A0I.setVisibility(8);
            this.A0P.setVisibility(8);
        }
        if (this.A0Q.A05().A1h() && TextUtils.isEmpty(this.A0Q.A05().A20().A0I().A01())) {
            this.A0C.setVisibility(8);
            this.A0D.setVisibility(8);
        }
        this.A0C.setVisibility(0);
    }

    private void A0N() {
        if (this.A05 != null) {
            this.A05.setOnClickListener(new ViewOnClickListenerC1505bE(this));
        }
        A0S(8);
    }

    public void A0O() {
        this.A0N.A04(UZ.A0A, null);
        N9 n9A23 = this.A0Q.A05().A23();
        if (this.A06 != null && this.A06.A0O(this.A0M.A02(), true)) {
            this.A0Q.A0D().AAf(this.A0Q.A05().A25(), n9A23);
        } else {
            if (TextUtils.isEmpty(n9A23.A00())) {
                return;
            }
            WN.A0O(new WN(), this.A0M, WQ.A00(n9A23.A00()), this.A0Q.A05().A25());
        }
    }

    private void A0P() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(1, this.A0B.getId());
        layoutParams.setMargins(AbstractC1469ae.A0B, 0, 0, 0);
        layoutParams.addRule(15);
        this.A0H.setLayoutParams(layoutParams);
    }

    private void A0R(int i) {
        if (i == 1) {
            addView(this.A0O);
            addView(this.A0C);
            addView(this.A0J);
            addView(this.A0E);
            if (this.A0Q.A05().A1g()) {
                addView(this.A0L);
                if (this.A05 != null) {
                    addView(this.A05);
                }
            } else {
                addView(this.A0G);
            }
        } else {
            this.A0F.addView(this.A0O);
            this.A0F.addView(this.A0C);
            this.A0F.addView(this.A0J);
            this.A0F.addView(this.A0E);
            if (this.A0Q.A05().A1g()) {
                this.A0F.addView(this.A0L);
                if (this.A05 != null) {
                    addView(this.A05);
                }
            } else {
                this.A0F.addView(this.A0G);
            }
            addView(this.A0F);
        }
        if (this.A04 != null && this.A0Q.A05().A2H()) {
            addView(this.A04);
            String[] strArr = A0W;
            if (strArr[6].charAt(9) != strArr[0].charAt(9)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0W;
            strArr2[6] = "keLlcznYvctfEvjur1LzpEy2BPaBqrBv";
            strArr2[0] = "SZjrRhAKecjSc6vp3MPbWHckPYKJoG5j";
            if (this.A05 != null) {
                this.A05.setVisibility(8);
            }
        }
    }

    public void A0S(int i) {
        if (this.A03 == null || this.A02 == null) {
            return;
        }
        if (i == 0) {
            this.A03.setVisibility(i);
            this.A02.setVisibility(8);
        } else {
            this.A03.setVisibility(i);
            this.A02.setVisibility(0);
        }
    }

    private void A0T(int i) {
        int rightMargin;
        if (this.A05 == null) {
            return;
        }
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.A05.getLayoutParams();
        if (i == 1) {
            rightMargin = A0Y;
        } else {
            rightMargin = (int) (this.A01 * 0.1f);
        }
        layoutParams.setMargins(0, 0, rightMargin, 0);
        this.A05.setLayoutParams(layoutParams);
    }

    private void A0U(int i) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        if (i == 1) {
            if (this.A0Q.A05().A1g()) {
                layoutParams.addRule(3, this.A0O.getId());
            } else {
                layoutParams.addRule(3, this.A0R.getId());
            }
            layoutParams.setMargins(0, AbstractC1469ae.A0A, 0, 0);
            layoutParams.addRule(14);
        } else {
            layoutParams.addRule(1, this.A0O.getId());
            layoutParams.setMargins(AbstractC1469ae.A0A, 0, 0, 0);
        }
        this.A0C.setLayoutParams(layoutParams);
        A0M();
    }

    private void A0V(int i) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(3, this.A0K.getId());
        layoutParams.setMargins(0, AbstractC1469ae.A0E, 0, 0);
        if (i == 1) {
            layoutParams.addRule(14);
        }
        this.A0D.setLayoutParams(layoutParams);
    }

    private void A0W(int i) {
        if (this.A04 == null) {
            return;
        }
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.A04.getLayoutParams();
        int i2 = AbstractC1469ae.A0A;
        if (i == 1) {
            i2 = A0Y;
        }
        int leftMargin = AbstractC1469ae.A0A;
        layoutParams.setMargins(i2, 0, 0, leftMargin);
        layoutParams.addRule(12);
        layoutParams.addRule(9);
        this.A04.setLayoutParams(layoutParams);
    }

    private void A0X(int i) {
        int i2;
        if (i == 1) {
            i2 = (int) (this.A00 * 0.13f);
            if (this.A0Q.A05().A1h()) {
                C1449aK c1449aK = this.A0O;
                String[] strArr = A0W;
                if (strArr[5].length() == strArr[1].length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0W;
                strArr2[6] = "T7WF8ct6Ecp3fFl6k8FlzT3xp8EZwOPe";
                strArr2[0] = "49nlYj8CnceEqKl67yYD9azFmPqqLBPu";
                c1449aK.setVisibility(8);
            } else {
                this.A0O.setRadius(30);
            }
        } else {
            i2 = (int) (this.A01 * 0.08f);
            this.A0O.setRadius(18);
            this.A0O.setVisibility(0);
        }
        int i3 = 0;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i2, i2);
        if (i == 1) {
            i3 = (-i2) / 2;
            layoutParams.addRule(14);
            layoutParams.addRule(3, this.A0R.getId());
        }
        layoutParams.setMargins(0, i3, 0, 0);
        this.A0O.setLayoutParams(layoutParams);
    }

    private void A0Y(int i) {
        int topMargin;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(3, this.A0K.getId());
        if (i == 1) {
            topMargin = AbstractC1469ae.A0I;
            layoutParams.addRule(14);
        } else {
            topMargin = AbstractC1469ae.A0E;
        }
        layoutParams.setMargins(0, topMargin, 0, 0);
        this.A0P.setLayoutParams(layoutParams);
        this.A0P.setItemSpacing(AbstractC1469ae.A0I);
    }

    private void A0Z(int i) {
        int i2;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(3, this.A0P.getId());
        if (i == 1) {
            i2 = AbstractC1469ae.A0I;
        } else {
            i2 = AbstractC1469ae.A0E;
        }
        layoutParams.setMargins(0, i2, 0, 0);
        if (i == 1) {
            layoutParams.addRule(14);
        }
        this.A0I.setLayoutParams(layoutParams);
    }

    private void A0a(int i) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(14);
        if (i == 1) {
            layoutParams.addRule(3, this.A0C.getId());
            layoutParams.setMargins(A0a, AbstractC1469ae.A0A, A0a, 0);
        } else {
            layoutParams.addRule(3, this.A0O.getId());
            layoutParams.setMargins(0, AbstractC1469ae.A0C, 0, 0);
        }
        this.A0J.setLayoutParams(layoutParams);
    }

    private void A0b(int i) {
        if (i == 2) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -1);
            layoutParams.addRule(15);
            if (!E1.A0V((float) this.A0Q.A05().A0h())) {
                layoutParams.addRule(6, this.A0R.getId());
            } else {
                this.A0F.setGravity(17);
            }
            layoutParams.setMargins(0, 0, (int) (this.A01 * 0.1f), 0);
            layoutParams.addRule(13);
            layoutParams.addRule(1, this.A0R.getId());
            this.A0F.setLayoutParams(layoutParams);
        }
    }

    private void A0c(int i) {
        View view;
        int i2;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        if (i == 1) {
            if (this.A0Q.A05().A1g()) {
                view = this.A0L;
                i2 = AbstractC1469ae.A0C;
            } else {
                view = this.A0G;
                i2 = AbstractC1469ae.A0I;
            }
            layoutParams.setMargins(A0Y, 0, A0Y, i2);
            layoutParams.addRule(2, view.getId());
        } else {
            int topMargin = A0X;
            if (this.A0Q.A05().A2H()) {
                topMargin = AbstractC1469ae.A0D;
            }
            layoutParams.setMargins(0, topMargin, 0, 0);
            int topMargin2 = this.A0J.getId();
            layoutParams.addRule(3, topMargin2);
        }
        this.A0E.setLayoutParams(layoutParams);
    }

    private void A0d(int i) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        if (i == 1) {
            this.A0K.setTextAlignment(4);
            layoutParams.setMargins(A0Z, 0, A0Z, 0);
        } else {
            this.A0K.setTextAlignment(5);
        }
        this.A0K.setLayoutParams(layoutParams);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:28:0x00d2  */
    private void A0e(int i) {
        int i2;
        RelativeLayout.LayoutParams layoutParams;
        int rightMargin;
        double dA0h = this.A0Q.A05().A0h();
        int i3 = 0;
        int topMargin = 0;
        int i4 = 0;
        if (i == 1) {
            if (E1.A0V((float) dA0h)) {
                rightMargin = (int) (this.A00 * 0.2f);
                String[] strArr = A0W;
                if (strArr[6].charAt(9) == strArr[0].charAt(9)) {
                    String[] strArr2 = A0W;
                    strArr2[2] = "r4F6E4irn5aDyLCCoL";
                    strArr2[4] = "HLlNT1vJDSE83AAt2A8wGZErAg";
                    i4 = rightMargin;
                }
                throw new RuntimeException();
            }
            if (E1.A0U((float) dA0h)) {
                i4 = (int) (this.A00 * 0.1f);
                rightMargin = (int) (this.A00 * 0.3f);
            } else {
                i4 = (int) (this.A00 * 0.1f);
                float f = this.A00;
                String[] strArr3 = A0W;
                if (strArr3[6].charAt(9) != strArr3[0].charAt(9)) {
                    String[] strArr4 = A0W;
                    strArr4[7] = "VrmCvLPumx9qmsQ5AqX8D26sv2xEwmDs";
                    strArr4[3] = "M5pl3CqSLX5dAxkk9LSq9NmEjnkhG5Xr";
                    rightMargin = (int) (f * 0.4f);
                } else {
                    String[] strArr5 = A0W;
                    strArr5[5] = "itXi3sFkhsJNNNlf";
                    strArr5[1] = "UwAjH2H8fcKmgRPVcHr";
                    rightMargin = (int) (f * 0.4f);
                }
            }
            layoutParams = new RelativeLayout.LayoutParams(-2, rightMargin);
            layoutParams.setMargins(i3, i4, topMargin, 0);
            if (i == 2) {
                layoutParams.addRule(15);
            } else {
                layoutParams.addRule(14);
            }
            this.A0R.setLayoutParams(layoutParams);
        }
        if (E1.A0T((float) dA0h)) {
            i3 = (int) (this.A01 * 0.2f);
            topMargin = (int) (this.A01 * 0.1f);
            i2 = (int) (this.A01 * 0.15f);
        } else {
            boolean zA0V = E1.A0V((float) dA0h);
            String[] strArr6 = A0W;
            if (strArr6[7].charAt(31) != strArr6[3].charAt(31)) {
                String[] strArr7 = A0W;
                strArr7[7] = "ZplkNnpiZffIY1LttQt1XVs2T7MKHARy";
                strArr7[3] = "uFxfhHDbtwTjfaa8IDnniTCsCIFPOnZP";
                if (zA0V) {
                    topMargin = (int) (this.A01 * 0.1f);
                    i3 = topMargin;
                    i2 = (int) (this.A01 * 0.32f);
                } else if (E1.A0U((float) dA0h)) {
                    i3 = (int) (this.A01 * 0.15f);
                    topMargin = (int) (this.A01 * 0.1f);
                    i2 = (int) (this.A01 * 0.27f);
                } else {
                    i3 = (int) (this.A01 * 0.15f);
                    topMargin = (int) (this.A01 * 0.1f);
                    i2 = (int) (this.A01 * 0.215f);
                }
            }
            throw new RuntimeException();
        }
        layoutParams = new RelativeLayout.LayoutParams(i2, -2);
        layoutParams.setMargins(i3, i4, topMargin, 0);
        if (i == 2) {
            layoutParams.addRule(15);
        } else {
            layoutParams.addRule(14);
        }
        this.A0R.setLayoutParams(layoutParams);
    }

    private void A0f(int i) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.A00 = displayMetrics.heightPixels;
        this.A01 = displayMetrics.widthPixels;
        A0b(i);
        A0e(i);
        A0X(i);
        A0d(i);
        A0Z(i);
        A0P();
        A0V(i);
        A0Y(i);
        A0U(i);
        A0a(i);
        if (this.A0Q.A05().A1g()) {
            A0h(i);
            String[] strArr = A0W;
            if (strArr[5].length() == strArr[1].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0W;
            strArr2[7] = "aYm4mmhUzY2q09M7FsCiyOSpkxFbKaZW";
            strArr2[3] = "02gWjTBSQrtOfJ7daRHeBoWCiPeJp89r";
            A0T(i);
        } else {
            A0g(i);
        }
        A0W(i);
        String[] strArr3 = A0W;
        if (strArr3[5].length() != strArr3[1].length()) {
            String[] strArr4 = A0W;
            strArr4[2] = "tL7wIN5OEPzS4IRzlt";
            strArr4[4] = "pnOaA9DlQTYkC3KVcwnBrIvrHl";
            A0c(i);
            return;
        }
        String[] strArr5 = A0W;
        strArr5[6] = "MDf5St22kcgabUjosByBKwB24Lkknw12";
        strArr5[0] = "UByTvfFM4cGo3K13JgxsnaHo1RTqGnlv";
        A0c(i);
    }

    private void A0g(int i) {
        int i2;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        if (i == 1) {
            if (this.A0Q.A05().A2H() && this.A04 != null) {
                layoutParams.addRule(2, this.A04.getId());
                i2 = AbstractC1469ae.A0A;
            } else {
                layoutParams.addRule(12);
                i2 = A0a;
            }
            int bottomMargin = A0Y;
            layoutParams.setMargins(bottomMargin, 0, A0Y, i2);
        } else {
            layoutParams.addRule(3, this.A0E.getId());
            int i3 = AbstractC1469ae.A0I;
            String[] strArr = A0W;
            if (strArr[2].length() == strArr[4].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0W;
            strArr2[2] = "xJXeUykDDwk7QxqpMI";
            strArr2[4] = "KNHMaHGzFmfIejDiEBJDCMbgtc";
            layoutParams.setMargins(0, i3, 0, 0);
        }
        this.A0G.setLayoutParams(layoutParams);
    }

    private void A0h(int i) {
        int i2;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        if (i == 1) {
            if (this.A0Q.A05().A2H() && this.A04 != null) {
                layoutParams.addRule(2, this.A04.getId());
                i2 = AbstractC1469ae.A0D;
            } else {
                layoutParams.addRule(12);
                i2 = A0a;
            }
            layoutParams.setMargins(0, 0, 0, i2);
            layoutParams.addRule(14);
        } else {
            layoutParams.setMargins(0, AbstractC1469ae.A0A, 0, 0);
            layoutParams.addRule(3, this.A0E.getId());
            layoutParams.addRule(14);
        }
        this.A0L.setLayoutParams(layoutParams);
    }

    @Override
    public final ME A1A(String str) {
        return ME.A09;
    }

    @Override
    public final void A1B() {
        super.A1B();
        if (this.A08 != null) {
            this.A08.A07();
        }
        C06063i c06063i = this.A09;
        String[] strArr = A0W;
        if (strArr[2].length() == strArr[4].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0W;
        strArr2[6] = "tdEFFGfq1cVEZpxqy9rgZPT1BZ8plSyJ";
        strArr2[0] = "YynlqIxuvciXAw4AWnNfF7pWFOOJrehC";
        if (c06063i != null) {
            this.A09.A0p();
        }
        this.A0A.removeCallbacksAndMessages(null);
        this.A0R.getEventBus().A04(this.A0T, this.A0S);
        this.A07 = null;
    }

    @Override
    public final boolean A1M() {
        return true;
    }

    public final void A1O(C06063i c06063i) {
        if (this.A09 != null) {
            this.A09.A0o(c06063i);
        }
    }

    private float getRating() {
        try {
            float rating = Float.parseFloat(this.A0Q.A05().A20().A0I().A0B());
            return rating;
        } catch (NumberFormatException unused) {
            return 0.0f;
        }
    }

    private String getRatingText() {
        StringBuilder sbAppend = new StringBuilder().append(String.format(Locale.US, A0J(7, 4, 37), Float.valueOf(getRating())));
        String ratingText = A0J(0, 7, 95);
        return sbAppend.append(ratingText).toString();
    }

    private String getWatchAdCtaText() {
        return String.format(Locale.US, this.A0Q.A05().A16(), Integer.valueOf(this.A0Q.A05().A20().A0H().A03()));
    }

    @Override
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        XP.A0Z(this.A0O, this.A0C, this.A0J, this.A0E, this.A0G, this.A0L, this.A05, this.A04, this.A0F);
        A0f(configuration.orientation);
        A0R(configuration.orientation);
    }

    public void setVideoAdViewListener(InterfaceC1593ce interfaceC1593ce) {
        this.A07 = interfaceC1593ce;
    }
}
