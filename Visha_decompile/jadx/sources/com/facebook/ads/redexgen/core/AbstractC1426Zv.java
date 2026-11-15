package com.facebook.ads.redexgen.core;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.util.Arrays;
import java.util.HashMap;

public abstract class AbstractC1426Zv extends LinearLayout {
    public static byte[] A0A;
    public static final LinearLayout.LayoutParams A0B;
    public LinearLayout A00;
    public TextView A01;
    public String A02;
    public boolean A03;
    public final int A04;
    public final View.OnClickListener A05;
    public final RelativeLayout A06;
    public final C1635dL A07;
    public final KE A08;
    public final C1449aK A09;

    public static String A0d(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0A, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 11);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0e() {
        A0A = new byte[]{-96, -93, -93, -92, -77, -96, -88, -85, -78};
    }

    public abstract void A0h(int i);

    static {
        A0e();
        A0B = new LinearLayout.LayoutParams(-2, -2);
    }

    public AbstractC1426Zv(C1635dL c1635dL, KE ke, int i, C1098My c1098My, boolean z, String str, US us, InterfaceC1366Xn interfaceC1366Xn, C1708eX c1708eX, XH xh, N3 n3, boolean z2, String str2) {
        super(c1635dL);
        this.A02 = A0d(0, 0, 37);
        XP.A0I(this);
        this.A07 = c1635dL;
        this.A04 = i;
        this.A03 = z2;
        this.A02 = str2;
        this.A09 = new C1449aK(c1635dL);
        XP.A0K(this.A09, 0);
        XP.A0I(this.A09);
        if (z2) {
            this.A00 = new LinearLayout(c1635dL);
            this.A01 = new TextView(c1635dL);
            XP.A0I(this.A01);
        }
        if (ke == null) {
            this.A08 = new KE(c1635dL, str, c1098My, z, us, interfaceC1366Xn, c1708eX, xh, n3);
        } else {
            this.A08 = ke;
        }
        XP.A0E(1001, this.A08);
        this.A05 = AbstractC1460aV.A03(this.A08, A0d(0, 9, 52));
        this.A06 = new RelativeLayout(c1635dL);
        this.A06.setLayoutParams(A0B);
        XP.A0I(this.A06);
    }

    public void A0f() {
    }

    public void A0g() {
        this.A09.setOnClickListener(this.A05);
    }

    public final KE getCTAButton() {
        return this.A08;
    }

    public View getExpandableLayout() {
        return null;
    }

    public final ImageView getIconView() {
        return this.A09;
    }

    public void setInfo(C1096Mw c1096Mw, C1099Mz c1099Mz, String str, String str2, InterfaceC1348Wv interfaceC1348Wv, InterfaceC1435a4 interfaceC1435a4) {
        this.A08.setCta(c1099Mz, str, new HashMap(), interfaceC1348Wv, interfaceC1435a4);
        new KZ(this.A09, this.A07).A05(this.A04, this.A04).A07(str2);
    }

    public void setTitleMaxLines(int i) {
    }
}
