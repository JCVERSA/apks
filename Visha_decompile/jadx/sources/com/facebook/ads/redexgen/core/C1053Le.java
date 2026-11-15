package com.facebook.ads.redexgen.core;

import java.util.Arrays;

public class C1053Le implements InterfaceC1331Wc {
    public static byte[] A01;
    public static String[] A02 = {"RKj", "", "UN15gotjq8", "ajoBiEUEQKFJNLqm", "ifgUnXqkKiJSPGKzKRtyUVwCV1ynqJ", "MgNPOwYKG3krpOkrgoqalUsb7GIlLECG", "4d5pH5OlBXd1RidH0kkNXmSukCNaNWUQ", "ZdfTYbLhRFsUmKvgir0oysIbzYx0fUOP"};
    public final C1051Lc A00;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 17);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-31, -7, -21, -23, -7, -29};
    }

    static {
        A01();
    }

    public C1053Le(C1051Lc c1051Lc) {
        this.A00 = c1051Lc;
    }

    public C1053Le(C1051Lc c1051Lc, C1069Lu c1069Lu) {
        this(c1051Lc);
    }

    @Override
    public final void ACp() {
        this.A00.A0a.setToolbarActionMessage(A00(0, 0, 19));
        this.A00.A0I();
        if (this.A00.A0X) {
            boolean zA0V = this.A00.A0V();
            String[] strArr = A02;
            if (strArr[5].charAt(0) == strArr[7].charAt(0)) {
                throw new RuntimeException();
            }
            A02[4] = "QDC88FCswtzFK8CArK72WEL9jXMBl5";
            if (zA0V) {
                this.A00.A0a.setToolbarActionMode(1);
                return;
            }
        }
        this.A00.A0a.setToolbarActionMode(0);
    }

    @Override
    public final void AEn(float f) {
        float fA04;
        this.A00.A0O((int) f);
        if (this.A00.A0Y) {
            if (this.A00.A0E) {
                AbstractC1910hy abstractC1910hy = this.A00.A0I;
                if (A02[6].charAt(27) != 'a') {
                    throw new RuntimeException();
                }
                A02[4] = "3MuDy2E798EtOoHK0e0a3SiH1QgAy5";
                fA04 = 1.0f - (f / abstractC1910hy.A20().A0H().A03());
                if (this.A00.A0H || fA04 < 1.0f) {
                    this.A00.A0H = false;
                    this.A00.A0a.setToolbarActionMessage(this.A00.A0I.A24().A02().replace(A00(0, 6, 117), String.valueOf((int) f)));
                } else {
                    this.A00.A0H = true;
                    AbstractC1365Xm abstractC1365Xm = this.A00.A0a;
                    String strA00 = A00(0, 0, 19);
                    if (A02[3].length() != 16) {
                        abstractC1365Xm.setToolbarActionMessage(strA00);
                    } else {
                        String[] strArr = A02;
                        strArr[5] = "wpbUz5ctYXHuYyRf6fVCU3uRzsMt7dE8";
                        strArr[7] = "BBfRd69Z77LUH69GeqVAIKhho7h2fuMA";
                        abstractC1365Xm.setToolbarActionMessage(strA00);
                    }
                }
            } else {
                fA04 = 1.0f - (f / this.A00.A0I.A20().A0H().A04());
            }
            this.A00.A0a.setProgress(100.0f * fA04);
            float fA03 = this.A00.A0I.A20().A0H().A03() - f;
            float percentageOfReward = this.A00.A0I.A20().A0H().A04();
            boolean z = fA03 >= percentageOfReward;
            if (!this.A00.A0H && z) {
                this.A00.A0a.setToolbarActionMode(1);
                return;
            }
            return;
        }
        this.A00.A0a.setProgress(100.0f * (1.0f - (f / this.A00.A0J.A07())));
    }
}
