package com.facebook.ads.redexgen.core;

import android.graphics.Typeface;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.util.concurrent.atomic.AtomicBoolean;

public final class C06665q extends KL {
    public static String[] A01 = {"jx4KYlgMCzDl9ClzKv", "6Ix4GmMTfvyGvtJf24kawibkIRWRaxha", "zW69YqA5HPweJk44OR41r89kehyD8PUK", "YWeaBtgKCGSZjZhmH64nz1hbm3NBx6WA", "r8zWPPccQcaX84RMJyONYLJrFGke7QKT", "leMtqeNEOkXnn1xJcE4uVuewwh76dLco", "HficAYafh9u7bjEKghLSIT4OmCXpUy86", "1EAnVhI1sEBIq9Q3DhiB3BUE0Cu5Wqiv"};
    public final Runnable A00;

    public C06665q(C1635dL c1635dL, KE ke, int i, boolean z, C1098My c1098My, String str, US us, InterfaceC1366Xn interfaceC1366Xn, C1708eX c1708eX, XH xh, AbstractC1910hy abstractC1910hy, C0838Cw c0838Cw, C1278Ua c1278Ua, boolean z2) {
        super(c1635dL, ke, i, z, c1098My, false, str, us, interfaceC1366Xn, c1708eX, xh, abstractC1910hy, c0838Cw, c1278Ua, z2);
        this.A00 = new RunnableC1433a2(this);
        int i2 = getResources().getConfiguration().orientation;
        A07(i2);
        A0D(i2);
        A03();
        A08(i2);
        A0C(i2);
        A0E(i2);
        A0B(i2);
        A02();
        A01();
        A04();
        A0F(((KL) this).A04);
        A09(i2);
        A0A(i2);
        A05(i2);
        this.A0O.addView(this.A0M);
        addView(this.A0O);
    }

    private void A00() {
        A0r(this.A0M, -1291845632, new float[]{72.0f, 72.0f, 72.0f, 72.0f, 0.0f, 0.0f, 0.0f, 0.0f});
    }

    private void A01() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, KL.A0b);
        layoutParams.addRule(3, this.A0I.getId());
        if (this.A0I.getVisibility() == 0) {
            layoutParams.setMargins(0, KL.A0u, 0, 0);
        } else {
            layoutParams.setMargins(0, KL.A0l, 0, 0);
        }
        layoutParams.addRule(14);
        ((AbstractC1426Zv) this).A08.setLayoutParams(layoutParams);
        A0k();
    }

    private void A02() {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.A0I.getLayoutParams();
        layoutParams.addRule(3, this.A0P.getId());
        if (this.A0I.getVisibility() == 0) {
            layoutParams.setMargins(0, KL.A0l, 0, 0);
        } else {
            layoutParams.setMargins(0, 0, 0, 0);
        }
        this.A0I.setLayoutParams(layoutParams);
    }

    private void A03() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.width = (int) (getResources().getDisplayMetrics().widthPixels * 0.37f);
        layoutParams.addRule(13);
        this.A0N.setLayoutParams(layoutParams);
    }

    private void A04() {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.A0U.getLayoutParams();
        layoutParams.setMargins(0, KL.A0l, 0, 0);
        layoutParams.addRule(3, ((AbstractC1426Zv) this).A08.getId());
        this.A0U.setLayoutParams(layoutParams);
    }

    private void A05(int i) {
        if (i == 1) {
            this.A0M.addView(((AbstractC1426Zv) this).A09);
            this.A0M.addView(this.A0Q);
            this.A0M.addView(this.A0P);
            this.A0M.addView(this.A0I);
            this.A0M.addView(((AbstractC1426Zv) this).A08);
            this.A0M.addView(this.A0U);
            A0u(this.A0M);
            this.A0M.addView(this.A0K);
            this.A0M.addView(this.A0J);
            if (this.A0Y && this.A0W.get()) {
                A0n();
                return;
            }
            return;
        }
        this.A0N.addView(((AbstractC1426Zv) this).A09);
        this.A0N.addView(this.A0Q);
        this.A0N.addView(this.A0P);
        this.A0N.addView(((AbstractC1426Zv) this).A08);
        this.A0N.addView(this.A0U);
        A0u(this.A0N);
        this.A0N.addView(this.A0I);
        this.A0O.addView(this.A0J);
        this.A0O.addView(this.A0N);
        this.A0O.addView(this.A0K);
        if (!this.A0Y) {
            return;
        }
        A0n();
    }

    private void A06(int i) {
        if (i == 2) {
            this.A0F.removeCallbacks(this.A00);
            this.A0M.setLayoutTransition(null);
        }
    }

    private void A07(int i) {
        if (i == 1) {
            ((KL) this).A05 = new CU(this.A0M, 400, 100, 0);
            this.A0W.set(false);
        }
    }

    private void A08(int i) {
        RelativeLayout.LayoutParams layoutParams;
        if (i == 1) {
            layoutParams = new RelativeLayout.LayoutParams(-1, -2);
            this.A0M.setGravity(80);
            layoutParams.setMargins(KL.A0l, 0, KL.A0l, 0);
            this.A0M.setPadding(KL.A0n, 0, KL.A0n, 0);
            A00();
        } else {
            layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            this.A0M.setGravity(1);
            A0r(this.A0M, 0, null);
        }
        this.A0M.setLayoutParams(layoutParams);
    }

    private void A09(int i) {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.A0K.getLayoutParams();
        if (i == 1) {
            layoutParams.removeRule(12);
            layoutParams.removeRule(11);
            layoutParams.setMargins(0, KL.A0m, 0, 0);
            layoutParams.addRule(11);
            layoutParams.addRule(3, this.A0U.getId());
        } else {
            layoutParams.setMargins(0, 0, KL.A0r, 0);
            layoutParams.addRule(12);
            layoutParams.addRule(11);
        }
        this.A0K.setLayoutParams(layoutParams);
        this.A0K.setPadding(KL.A0u, KL.A0u, 0, 0);
    }

    private void A0A(int i) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        if (i == 1) {
            layoutParams.removeRule(12);
            layoutParams.addRule(11);
            layoutParams.addRule(3, this.A0U.getId());
            layoutParams.setMargins(0, KL.A0o, 0, KL.A0l);
            this.A0J.setPadding(0, 0, 0, 0);
        } else {
            layoutParams.removeRule(3);
            layoutParams.setMargins(0, 0, KL.A0l, 0);
            layoutParams.addRule(12);
            layoutParams.addRule(11);
            this.A0J.setPadding(0, 0, 0, KL.A0l);
        }
        this.A0J.setLayoutParams(layoutParams);
    }

    private void A0B(int i) {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.A0P.getLayoutParams();
        layoutParams.addRule(14);
        layoutParams.addRule(3, this.A0Q.getId());
        layoutParams.setMargins(KL.A0u, KL.A0u, KL.A0u, 0);
        this.A0P.setTextSize(18.0f);
        this.A0P.setLayoutParams(layoutParams);
        if (i == 1) {
            boolean z = this.A0W.get();
            if (A01[6].charAt(17) == 'p') {
                throw new RuntimeException();
            }
            A01[2] = "LwMNVJXewPVvHtT8EyPDkqGjMUrnRCOE";
            if (z) {
                this.A0P.setVisibility(8);
                this.A0P.setMaxLines(2);
                return;
            }
            return;
        }
        this.A0P.setVisibility(0);
        this.A0P.setMaxLines(2);
    }

    private void A0C(int i) {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) ((AbstractC1426Zv) this).A09.getLayoutParams();
        if (i == 1) {
            if (this.A0W.get()) {
                ((AbstractC1426Zv) this).A09.setVisibility(8);
            }
            layoutParams.width = KL.A0g;
            layoutParams.height = KL.A0g;
            layoutParams.setMargins(0, (-KL.A0g) / 2, 0, 0);
        } else {
            layoutParams.removeRule(3);
            layoutParams.removeRule(14);
            layoutParams.width = KL.A0h;
            layoutParams.height = KL.A0h;
            layoutParams.setMargins(0, KL.A0l, 0, 0);
            ((AbstractC1426Zv) this).A09.setVisibility(0);
        }
        layoutParams.addRule(14);
        ((AbstractC1426Zv) this).A09.setLayoutParams(layoutParams);
    }

    private void A0D(int i) {
        if (i == 1) {
            this.A0O.setClipChildren(false);
            this.A0O.setClipToPadding(false);
            String[] strArr = A01;
            if (strArr[1].charAt(21) == strArr[3].charAt(21)) {
                throw new RuntimeException();
            }
            A01[5] = "cGbvdTJNONPNbXLhpEbXT6xJPDu44esN";
            this.A0O.setGravity(80);
            return;
        }
        this.A0O.setGravity(8388659);
    }

    private void A0E(int i) {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.A0Q.getLayoutParams();
        layoutParams.addRule(14);
        layoutParams.addRule(3, ((AbstractC1426Zv) this).A09.getId());
        layoutParams.setMargins(0, KL.A0m, 0, 0);
        this.A0Q.setTypeface(Typeface.DEFAULT_BOLD);
        this.A0Q.setTextSize(30.0f);
        this.A0Q.setLayoutParams(layoutParams);
        if (i == 1) {
            AtomicBoolean atomicBoolean = this.A0W;
            String[] strArr = A01;
            if (strArr[7].charAt(14) == strArr[4].charAt(14)) {
                throw new RuntimeException();
            }
            A01[5] = "mUrLjLxX8ps9KyyklEjsMvbvvfmlYgc4";
            if (atomicBoolean.get()) {
                TextView textView = this.A0Q;
                if (A01[6].charAt(17) != 'p') {
                    A01[5] = "Ry88z4pj2pKB6I6ufE2OgGjTn2NC40NW";
                    textView.setVisibility(8);
                    return;
                } else {
                    A01[2] = "gqkT8dK3xSCWX8L5GFvNij0exRjeTiiQ";
                    textView.setVisibility(3);
                    return;
                }
            }
            return;
        }
        this.A0Q.setVisibility(0);
    }

    private void A0F(TextView textView) {
        if (textView != null) {
            int visibility = textView.getVisibility();
            if (A01[6].charAt(17) == 'p') {
                throw new RuntimeException();
            }
            A01[6] = "mNXbhcpsRbbwGhDffCZ213OdU3Broeit";
            if (visibility != 0) {
                return;
            }
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) textView.getLayoutParams();
            layoutParams.addRule(3, this.A0U.getId());
            layoutParams.setMargins(0, KL.A0u, 0, 0);
            textView.setLayoutParams(layoutParams);
        }
    }

    @Override
    public final void A0h(int i) {
        super.A0h(i);
        A06(i);
        XP.A0Z(this.A0N, ((AbstractC1426Zv) this).A09, this.A0Q, ((AbstractC1426Zv) this).A08, this.A0U, ((KL) this).A04, this.A0P, this.A0K, this.A0J, this.A0I);
        A0D(i);
        A08(i);
        A03();
        A0C(i);
        A0F(((KL) this).A04);
        A04();
        A02();
        A01();
        A0E(i);
        A0B(i);
        A09(i);
        A0A(i);
        A05(i);
    }

    @Override
    public final void A0q(int i) {
        if (((KL) this).A05 == null || i == 2) {
            return;
        }
        ((KL) this).A05.A42(true, false);
        this.A0W.set(true);
        this.A0F.postDelayed(this.A00, 5000L);
    }

    @Override
    public final void A0s(ViewGroup viewGroup, RelativeLayout relativeLayout, int i) {
    }

    @Override
    public void setInfo(C1096Mw c1096Mw, C1099Mz c1099Mz, String str, String str2, InterfaceC1348Wv interfaceC1348Wv, InterfaceC1435a4 interfaceC1435a4) {
        super.setInfo(c1096Mw, c1099Mz, str, str2, interfaceC1348Wv, interfaceC1435a4);
    }
}
