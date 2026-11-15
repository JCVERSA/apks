package com.facebook.ads.redexgen.core;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.RelativeLayout;
import java.util.Arrays;
import okio.Utf8;

public final class LZ implements InterfaceC1367Xo {
    public static byte[] A0D;
    public int A00;
    public EG A01;
    public C06063i A02;
    public String A03;
    public final C1635dL A04;
    public final US A05;
    public final InterfaceC1366Xn A06;
    public final YT A07;
    public final E1 A08;
    public final DP A0C = new DP() {
        public static byte[] A01;

        static {
            A01();
        }

        public static String A00(int i, int i2, int i3) {
            byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
            for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
                bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 58);
            }
            return new String(bArrCopyOfRange);
        }

        public static void A01() {
            A01 = new byte[]{115, 108, 97, 96, 106, 76, 107, 113, 96, 119, 118, 113, 108, 113, 100, 105, 64, 115, 96, 107, 113};
        }

        @Override
        public final void A03(DQ dq) {
            this.A00.A06.A4c(A00(0, 21, 63), dq);
        }
    };
    public final DR A0B = new DR() {
        public static byte[] A01;

        static {
            A01();
        }

        public static String A00(int i, int i2, int i3) {
            byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
            for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
                bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 120);
            }
            return new String(bArrCopyOfRange);
        }

        public static void A01() {
            A01 = new byte[]{38, 57, 52, 53, Utf8.REPLACEMENT_BYTE, 25, 62, 36, 53, 34, 35, 36, 57, 36, 49, 60, 21, 38, 53, 62, 36};
        }

        @Override
        public final void A03(C3Y c3y) {
            this.A00.A06.A4c(A00(0, 21, 40), c3y);
        }
    };
    public final DX A09 = new DX() {
        public static byte[] A01;
        public static String[] A02 = {"cVYzzU3WDwilAiB6lBwH", "ltb11yKnDLf", "qD1l7ddw57WScFbFlpW6gLQQ4LJZYMm4", "7tmDLtuP1dSUokfmYRKMMhnjp75BOUEQ", "O1T", "OUAaXGhWo5xW6BfvCbr", "NPW6PnCzVK8iTd9b27h5", "ykk8Miz3Z2gvnB5Rb4Sxgn912BIo"};

        public static String A00(int i, int i2, int i3) {
            byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
            for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
                int i5 = bArrCopyOfRange[i4] ^ i3;
                if (A02[2].charAt(8) != '5') {
                    throw new RuntimeException();
                }
                A02[5] = "7KI0j9KfVtSFY3dF";
                bArrCopyOfRange[i4] = (byte) (i5 ^ 70);
            }
            return new String(bArrCopyOfRange);
        }

        public static void A01() {
            A01 = new byte[]{3, 28, 17, 16, 26, 60, 27, 1, 16, 7, 6, 1, 28, 1, 20, 25, 48, 3, 16, 27, 1};
        }

        static {
            A01();
        }

        @Override
        public final void A03(C06013d c06013d) {
            this.A00.A06.A4c(A00(0, 21, 51), c06013d);
        }
    };
    public final DV A0A = new DV() {
        @Override
        public final void A03(DW dw) {
            this.A00.A07.ADH();
        }
    };

    static {
        A03();
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0D, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 102);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A0D = new byte[]{44, 56, 57, 34, 61, 33, 44, 52, 122, 117, 112, 124, 119, 109, 77, 118, 114, 124, 119, 20, 18, 4, 47, 0, 21, 8, 23, 4, 34, 21, 0, 35, 20, 21, 21, 14, 15, 55, 40, 37, 36, 46, 8, 47, 53, 36, 51, 50, 53, 40, 53, 32, 45, 4, 55, 36, 47, 53, 81, 78, 67, 66, 72, 107, 72, 64, 64, 66, 85, 116, 107, 102, 103, 109, 79, 82, 70, 103, 120, 117, 116, 126, 66, 116, 116, 122, 69, 120, 124, 116, Utf8.REPLACEMENT_BYTE, 32, 45, 44, 38, 28, 27, 5};
    }

    public LZ(C1635dL c1635dL, YT yt, US us, InterfaceC1366Xn interfaceC1366Xn) {
        this.A04 = c1635dL;
        this.A05 = us;
        this.A07 = yt;
        this.A08 = new E1(c1635dL);
        this.A08.A0i(new C3D(c1635dL));
        this.A08.getEventBus().A03(this.A0C, this.A0B, this.A09, this.A0A);
        this.A06 = interfaceC1366Xn;
        this.A08.setIsFullScreen(true);
        this.A08.setVolume(1.0f);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(15);
        interfaceC1366Xn.A3x(this.A08, layoutParams);
        C1374Xv closeButton = new C1374Xv(c1635dL);
        closeButton.setOnClickListener(new YR(this));
        RelativeLayout.LayoutParams params = closeButton.getDefaultLayoutParams();
        interfaceC1366Xn.A3x(closeButton, params);
    }

    public final void A04(int i) {
        this.A08.setVideoProgressReportIntervalMs(i);
    }

    public final void A05(View view) {
        this.A08.setControlsAnchorView(view);
    }

    @Override
    public final void AAl(Intent intent, Bundle bundle, R0 r0) {
        String ctaText = A02(8, 11, 127);
        if (bundle == null) {
            this.A03 = intent.getStringExtra(ctaText);
        } else {
            this.A03 = bundle.getString(ctaText);
        }
        String stringExtra = intent.getStringExtra(A02(19, 18, 7));
        if (stringExtra != null && !stringExtra.isEmpty()) {
            C1600cl c1600cl = new C1600cl(this.A04, stringExtra);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            int i = (int) (16.0f * AbstractC1338Wl.A02);
            layoutParams.setMargins(i, i, i, i);
            layoutParams.addRule(10);
            layoutParams.addRule(9);
            c1600cl.setOnClickListener(new YS(this));
            this.A06.A3x(c1600cl, layoutParams);
        }
        this.A00 = intent.getIntExtra(A02(77, 13, 119), 0);
        this.A02 = new C06063i(this.A04, this.A05, this.A08, this.A03, intent.getBundleExtra(A02(58, 11, 65)), null);
        if (U7.A1v(this.A04)) {
            this.A01 = new EG(this.A04, this.A05, this.A08, this.A03, false, this.A02, null);
        } else {
            this.A01 = null;
        }
        this.A08.setVideoMPD(intent.getStringExtra(A02(69, 8, 100)));
        this.A08.setVideoURI(intent.getStringExtra(A02(90, 8, 47)));
        if (this.A00 > 0) {
            this.A08.A0d(this.A00);
        }
        if (intent.getBooleanExtra(A02(0, 8, 43), false)) {
            this.A08.A0h(EnumC1651db.A04, 17);
        }
    }

    @Override
    public final void AEV(boolean z) {
        this.A06.A4c(A02(37, 21, 39), new DT());
        this.A08.A0a();
    }

    @Override
    public final void AF0(boolean z) {
        this.A06.A4c(A02(37, 21, 39), new DS());
        if (!this.A08.A0r()) {
            this.A08.A0h(EnumC1651db.A04, 18);
        }
    }

    @Override
    public final void AIB(Bundle bundle) {
    }

    @Override
    public final String getCurrentClientToken() {
        return this.A03;
    }

    @Override
    public final boolean onActivityResult(int i, int i2, Intent intent) {
        return false;
    }

    @Override
    public final void onDestroy() {
        this.A06.A4c(A02(37, 21, 39), new DL(this.A00, this.A08.getCurrentPositionInMillis()));
        this.A02.A0j(this.A08.getCurrentPositionInMillis());
        if (this.A01 != null) {
            this.A01.A08();
        }
        this.A08.A0e(1);
        this.A08.A0Z();
    }
}
