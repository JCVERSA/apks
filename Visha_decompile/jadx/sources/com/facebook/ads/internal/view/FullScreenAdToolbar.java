package com.facebook.ads.internal.view;

import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.facebook.ads.redexgen.core.AbstractC1338Wl;
import com.facebook.ads.redexgen.core.AbstractC1365Xm;
import com.facebook.ads.redexgen.core.AbstractC1460aV;
import com.facebook.ads.redexgen.core.C1098My;
import com.facebook.ads.redexgen.core.C1278Ua;
import com.facebook.ads.redexgen.core.C1363Xk;
import com.facebook.ads.redexgen.core.C1601cm;
import com.facebook.ads.redexgen.core.C1635dL;
import com.facebook.ads.redexgen.core.InterfaceC1364Xl;
import com.facebook.ads.redexgen.core.InterfaceC1366Xn;
import com.facebook.ads.redexgen.core.KE;
import com.facebook.ads.redexgen.core.N9;
import com.facebook.ads.redexgen.core.NF;
import com.facebook.ads.redexgen.core.ViewOnClickListenerC1375Xw;
import com.facebook.ads.redexgen.core.XP;
import com.facebook.ads.redexgen.core.XX;
import com.facebook.ads.redexgen.core.YG;
import com.facebook.ads.redexgen.core.YO;
import com.transsion.socket.pkgdata.SocketData;
import java.util.Arrays;

public final class FullScreenAdToolbar extends AbstractC1365Xm {
    public static byte[] A0B;
    public static String[] A0C = {"bFTGQZCDUsZohbmTeIVqSIHEteTzH9ln", "yXw5A2C", "1AgOSkHO0Pb00RrFT9UOiqy", "TxDFqDHdXRoHKl2DTNxbpTLqI26RISWJ", "CWbWmw8OaNX6ff1fhEYiHQW6wjCjGro9", "znIzyGoGhCcdAsXYdQkLlPNG9alZ5sNL", "lf2qO9K", "XEgUxEHpppw1PxIgjlcxmDWHelwWu1Ow"};
    public static final int A0D;
    public static final int A0E;
    public static final int A0F;
    public static final int A0G;
    public static final int A0H;
    public C1363Xk A00;
    public InterfaceC1364Xl A01;
    public InterfaceC1364Xl A02;
    public YG A03;
    public boolean A04;
    public boolean A05;
    public final RelativeLayout A06;
    public final C1278Ua A07;
    public final InterfaceC1366Xn A08;
    public final YO A09;
    public final C1601cm A0A;

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0B, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 22);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        byte[] bArr = {113, -102, -99, -95, -109, 78, 111, -110, -100, -81, -70, -71, -68, -66, 106, SocketData.CLAZZ_TYPE_STRING, -82, -71, -76, -76, -79, -89, -90, -73};
        if (A0C[5].charAt(20) != 'l') {
            throw new RuntimeException();
        }
        A0C[2] = "ATFpsL3dKIxr1CEZIKZeGPZ";
        A0B = bArr;
    }

    static {
        A03();
        A0D = (int) (AbstractC1338Wl.A02 * 10.0f);
        A0H = (int) (AbstractC1338Wl.A02 * 16.0f);
        A0F = A0H - A0D;
        A0G = (A0H * 2) - A0D;
        A0E = (int) (AbstractC1338Wl.A02 * 4.0f);
    }

    public FullScreenAdToolbar(C1635dL c1635dL, InterfaceC1366Xn interfaceC1366Xn, C1278Ua c1278Ua, int i, int i2, boolean z) {
        super(c1635dL);
        this.A01 = null;
        this.A04 = true;
        this.A05 = z;
        this.A08 = interfaceC1366Xn;
        this.A07 = c1278Ua;
        setGravity(16);
        this.A09 = new YO(c1635dL, i, z);
        this.A09.setContentDescription(A02(0, 8, 24));
        this.A09.setActionClickListener(new ViewOnClickListenerC1375Xw(this));
        if (!this.A05) {
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.setMargins(A0F, A0F, A0G, A0F);
            addView(this.A09, layoutParams);
            this.A06 = new RelativeLayout(c1635dL);
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, -2);
            layoutParams2.weight = 1.0f;
            this.A0A = new C1601cm(c1635dL);
            XP.A0E(1006, this.A0A);
            LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
            layoutParams3.gravity = 17;
            this.A0A.setLayoutParams(layoutParams3);
            this.A06.addView(this.A0A);
            addView(this.A06, layoutParams2);
            if (i2 != -1) {
                A0D(c1635dL, i2);
                return;
            }
            return;
        }
        if (i2 != -1) {
            A0D(c1635dL, i2);
        }
        this.A06 = new RelativeLayout(c1635dL);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(0, -2);
        layoutParams4.weight = 1.0f;
        this.A0A = new C1601cm(c1635dL);
        XP.A0E(1006, this.A0A);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams5.gravity = 17;
        this.A0A.setLayoutParams(layoutParams5);
        this.A06.addView(this.A0A);
        addView(this.A06, layoutParams4);
        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams6.setMargins(0, A0H / 2, A0H / 2, A0H / 2);
        addView(this.A09, layoutParams6);
    }

    private void A04(View view, boolean z) {
        if (view == null) {
            return;
        }
        view.setVisibility(z ? 0 : 8);
    }

    @Override
    public final void A06() {
        this.A09.A02();
    }

    @Override
    public final void A07() {
        if (this.A01 != null) {
            this.A02 = this.A01;
        }
    }

    @Override
    public final void A08() {
        this.A01 = getToolbarListener();
    }

    @Override
    public final void A09(float f, int i) {
        this.A09.A03(f, i);
    }

    @Override
    public final void A0A(C1098My c1098My, boolean z) {
        boolean z2 = this.A04;
        int iA05 = c1098My.A05(z2);
        this.A0A.A02(c1098My.A0B(z2), iA05);
        boolean z3 = this.A05;
        String strA02 = A02(8, 9, 52);
        if (!z3) {
            if (this.A00 != null) {
                this.A00.setIconColors(iA05);
                this.A00.setContentDescription(strA02);
            }
        } else if (this.A03 != null) {
            this.A03.setIconColors(iA05);
            this.A03.setContentDescription(strA02);
        }
        this.A09.A04(c1098My, z2, z);
        if (z2) {
            GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{-1778384896, 0});
            gradientDrawable.setCornerRadius(0.0f);
            XP.A0Q(this, gradientDrawable);
            boolean fullScreenEnabled = this.A05;
            setReportingViewColor(!fullScreenEnabled ? this.A00 : this.A03);
            return;
        }
        XP.A0K(this, 0);
    }

    @Override
    public final boolean A0B() {
        return this.A09.A05();
    }

    public final void A0C(N9 n9, String str, int i) {
        this.A09.setInitialUnskippableSeconds(i);
        if (this.A05) {
            if (this.A03 != null) {
                this.A03.setAdDetails(n9, str, this.A07, this.A08);
            }
        } else {
            if (this.A00 == null) {
                return;
            }
            this.A00.setAdDetails(n9, str, this.A07, this.A08);
        }
    }

    public final void A0D(C1635dL c1635dL, int i) {
        if (this.A00 != null) {
            XP.A0H(this.A00);
            this.A00.removeAllViews();
        }
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
        if (!this.A05) {
            this.A00 = new C1363Xk(c1635dL, i);
            layoutParams.setMargins(0, A0H / 2, A0H / 2, A0H / 2);
            addView(this.A00, layoutParams);
        } else {
            this.A03 = new YG(c1635dL);
            layoutParams.setMargins(A0F, A0F, A0G, A0F);
            addView(this.A03, layoutParams);
        }
    }

    @Override
    public int getToolbarActionMode() {
        return this.A09.getToolbarActionMode();
    }

    @Override
    public int getToolbarHeight() {
        return AbstractC1365Xm.A00;
    }

    @Override
    public InterfaceC1364Xl getToolbarListener() {
        return this.A02;
    }

    @Override
    public void setAdReportingVisible(boolean z) {
        A04(!this.A05 ? this.A00 : this.A03, z);
    }

    @Override
    public void setCTAClickListener(View.OnClickListener onClickListener) {
        this.A0A.setOnClickListener(onClickListener);
    }

    @Override
    public void setCTAClickListener(KE ke) {
        this.A0A.setOnClickListener(AbstractC1460aV.A03(ke, A02(17, 7, 47)));
    }

    @Override
    public void setFullscreen(boolean z) {
        this.A04 = z;
    }

    public void setOnlyPageDetails(N9 n9) {
        if (n9 != null) {
            this.A0A.setPageDetails(n9);
        } else {
            this.A0A.A01();
        }
    }

    @Override
    public void setPageDetails(N9 n9, String str, int i, NF nf) {
        this.A09.setInitialUnskippableSeconds(i);
        this.A0A.setPageDetails(n9);
        if (this.A05) {
            if (this.A03 != null) {
                this.A03.setAdDetails(n9, str, this.A07, this.A08);
            }
        } else {
            if (this.A00 == null) {
                return;
            }
            this.A00.setAdDetails(n9, str, this.A07, this.A08);
        }
    }

    @Override
    public void setPageDetailsVisible(boolean z) {
        this.A06.removeAllViews();
        if (z) {
            this.A06.addView(this.A0A);
        }
        this.A09.setToolbarMessageEnabled(!z);
    }

    @Override
    public void setProgress(float f) {
        this.A09.setProgress(f);
    }

    @Override
    public void setProgressClickListener(View.OnClickListener onClickListener) {
        this.A09.setProgressClickListener(onClickListener);
    }

    @Override
    public void setProgressImage(XX xx) {
        this.A09.setProgressImage(xx);
    }

    @Override
    public void setProgressImmediate(float f) {
        this.A09.setProgressImmediate(f);
    }

    @Override
    public void setProgressSpinnerInvisible(boolean z) {
        this.A09.setProgressSpinnerInvisible(z);
    }

    private void setReportingViewColor(View view) {
        if (view != null) {
            XP.A0O(view, 0, -16777216, A0E);
        }
    }

    @Override
    public void setToolbarActionMessage(String str) {
        this.A09.setToolbarMessage(str);
    }

    @Override
    public void setToolbarActionMode(int i) {
        this.A09.setToolbarActionMode(i);
    }

    @Override
    public void setToolbarListener(InterfaceC1364Xl interfaceC1364Xl) {
        this.A02 = interfaceC1364Xl;
    }
}
