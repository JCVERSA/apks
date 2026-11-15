package com.yandex.mobile.ads.impl;

import androidx.media3.extractor.AacUtil;
import androidx.media3.extractor.OpusUtil;

public final class e {
    private static final int[] a = {96000, 88200, 64000, OpusUtil.SAMPLE_RATE, 44100, 32000, 24000, 22050, AacUtil.AAC_HE_V1_MAX_RATE_BYTES_PER_SECOND, 12000, 11025, 8000, 7350};
    private static final int[] b = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    public static final class a {
        public final int a;
        public final int b;
        public final String c;

        private a(int i, int i2, String str) {
            this.a = i;
            this.b = i2;
            this.c = str;
        }
    }

    public static a a(zf1 zf1Var, boolean z) throws eg1 {
        int iB;
        int iB2;
        int iB3 = zf1Var.b(5);
        if (iB3 == 31) {
            iB3 = zf1Var.b(6) + 32;
        }
        int iB4 = zf1Var.b(4);
        if (iB4 == 15) {
            iB = zf1Var.b(24);
        } else {
            if (iB4 >= 13) {
                throw eg1.a((String) null, (Exception) null);
            }
            iB = a[iB4];
        }
        int iB5 = zf1Var.b(4);
        String strA = oe.a("mp4a.40.", iB3);
        if (iB3 == 5 || iB3 == 29) {
            int iB6 = zf1Var.b(4);
            if (iB6 == 15) {
                iB2 = zf1Var.b(24);
            } else {
                if (iB6 >= 13) {
                    throw eg1.a((String) null, (Exception) null);
                }
                iB2 = a[iB6];
            }
            iB = iB2;
            int iB7 = zf1Var.b(5);
            if (iB7 == 31) {
                iB7 = zf1Var.b(6) + 32;
            }
            iB3 = iB7;
            if (iB3 == 22) {
                iB5 = zf1Var.b(4);
            }
        }
        if (z) {
            if (iB3 != 6 && iB3 != 7 && iB3 != 17 && iB3 != 1 && iB3 != 2 && iB3 != 3 && iB3 != 4) {
                switch (iB3) {
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                        break;
                    default:
                        throw eg1.a("Unsupported audio object type: " + iB3);
                }
            }
            if (zf1Var.f()) {
                et0.d("AacUtil", "Unexpected frameLengthFlag = 1");
            }
            if (zf1Var.f()) {
                zf1Var.d(14);
            }
            boolean zF = zf1Var.f();
            if (iB5 == 0) {
                throw new UnsupportedOperationException();
            }
            if (iB3 == 6 || iB3 == 20) {
                zf1Var.d(3);
            }
            if (zF) {
                if (iB3 == 22) {
                    zf1Var.d(16);
                }
                if (iB3 == 17 || iB3 == 19 || iB3 == 20 || iB3 == 23) {
                    zf1Var.d(3);
                }
                zf1Var.d(1);
            }
            switch (iB3) {
                case 17:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                    int iB8 = zf1Var.b(2);
                    if (iB8 == 2 || iB8 == 3) {
                        throw eg1.a("Unsupported epConfig: " + iB8);
                    }
                    break;
            }
        }
        int i = b[iB5];
        if (i != -1) {
            return new a(iB, i, strA);
        }
        throw eg1.a((String) null, (Exception) null);
    }
}
