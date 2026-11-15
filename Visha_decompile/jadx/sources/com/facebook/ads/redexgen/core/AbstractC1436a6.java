package com.facebook.ads.redexgen.core;

import android.widget.RelativeLayout;
import androidx.exifinterface.media.ExifInterface;
import java.util.HashMap;

public abstract class AbstractC1436a6 {
    /* JADX WARN: Type inference failed for: r0v0, types: [com.facebook.ads.redexgen.X.0g] */
    public static C05280g A00(final C1473ai c1473ai, final C1178Qc c1178Qc, final String str, final C06685s c06685s) {
        final boolean z = true;
        return new C06575h(c1473ai, c1178Qc, z, str, c06685s) {
            public KE A00;
            public C1602cn A01;
            public final US A02 = this.A0I.A06().A02().A0A();
            public final C1178Qc A03;
            public final C06685s A04;
            public final String A05;
            public static String[] A06 = {"q", "A73Xi2G3GXsP7eqOYxzIEC2a49UqAHwv", "tzkKnItTrh", "5yGem34VUXIU78ICazF0QaKYuuceWMlm", "d26mhKEOwDnFCjn", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "vFFUszWLQFPwstqQ2PhnuKwIvdRc", "cQLhl1S6XoLnT945hQssVDVRJiee0FVC"};
            public static final int A08 = (int) (AbstractC1338Wl.A02 * (-4.0f));
            public static final int A07 = (int) (AbstractC1338Wl.A02 * 6.0f);

            {
                this.A03 = c1178Qc;
                this.A05 = str;
                this.A04 = c06685s;
                this.A03.A1L(this);
            }

            @Override
            public void setupNativeCtaExtension(C1602cn c1602cn) {
                N3 n3A21;
                this.A01 = c1602cn;
                int iA0Q = U7.A0Q(this.A0I.A06());
                C1098My c1098MyA01 = this.A03.A10().A1z().A01();
                C1635dL c1635dLA06 = this.A0I.A06();
                String strA0r = this.A03.A10().A0r();
                US us = this.A02;
                InterfaceC1366Xn dummyListener = C1407Zc.getDummyListener();
                C1708eX c1708eXA0b = this.A04.A0b();
                XH xhA1A = this.A03.A1A();
                if (this.A03.A10() == null) {
                    n3A21 = null;
                } else {
                    n3A21 = this.A03.A10().A21();
                }
                this.A00 = new KE(c1635dLA06, strA0r, c1098MyA01, us, dummyListener, c1708eXA0b, xhA1A, n3A21);
                this.A00.setCta(c1602cn.A03().A0J(), this.A05, new HashMap());
                this.A03.A1L(this.A00);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
                if (iA0Q == 1) {
                    layoutParams.addRule(12);
                    String[] strArr = A06;
                    String str2 = strArr[5];
                    String str3 = strArr[0];
                    int length = str2.length();
                    int extensionVariant = str3.length();
                    if (length != extensionVariant) {
                        throw new RuntimeException();
                    }
                    A06[4] = "cEnNLXyXCc05OsZ";
                    XP.A0N(this.A00, A07, 5, c1098MyA01.A0A(false));
                    ((C06575h) this).A06.addView(this.A00, layoutParams);
                    return;
                }
                if (iA0Q == 2) {
                    layoutParams.addRule(3, ((C06575h) this).A06.getId());
                    int extensionVariant2 = A08;
                    layoutParams.setMargins(0, extensionVariant2, 0, 0);
                    addView(this.A00, 0, layoutParams);
                    ((C06575h) this).A06.bringToFront();
                }
            }
        };
    }
}
