package com.google.android.exoplayer2.audio;

import com.cloud.tmc.integration.audio.recording.RecorderConstants;
import com.google.android.exoplayer2.ParserException;

public abstract class a {

    private static final int[] f23904a = {RecorderConstants.RECORD_ENCODING_BITRATE_96000, 88200, RecorderConstants.RECORD_ENCODING_BITRATE_64000, 48000, RecorderConstants.RECORD_SAMPLE_RATE_44100, 32000, 24000, RecorderConstants.RECORD_SAMPLE_RATE_22050, 16000, 12000, RecorderConstants.RECORD_SAMPLE_RATE_11025, 8000, 7350};

    private static final int[] f23905b = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    public static final class b {

        public final int f23906a;

        public final int f23907b;

        public final String f23908c;

        private b(int i10, int i11, String str) {
            this.f23906a = i10;
            this.f23907b = i11;
            this.f23908c = str;
        }
    }

    public static byte[] a(int i10, int i11) {
        int i12 = 0;
        int i13 = -1;
        int i14 = 0;
        while (true) {
            int[] iArr = f23904a;
            if (i14 >= iArr.length) {
                break;
            }
            if (i10 == iArr[i14]) {
                i13 = i14;
            }
            i14++;
        }
        int i15 = -1;
        while (true) {
            int[] iArr2 = f23905b;
            if (i12 >= iArr2.length) {
                break;
            }
            if (i11 == iArr2[i12]) {
                i15 = i12;
            }
            i12++;
        }
        if (i10 != -1 && i15 != -1) {
            return b(2, i13, i15);
        }
        throw new IllegalArgumentException("Invalid sample rate or number of channels: " + i10 + ", " + i11);
    }

    public static byte[] b(int i10, int i11, int i12) {
        return new byte[]{(byte) (((i10 << 3) & 248) | ((i11 >> 1) & 7)), (byte) (((i11 << 7) & 128) | ((i12 << 3) & 120))};
    }

    private static int c(com.google.android.exoplayer2.util.c0 c0Var) {
        int iH = c0Var.h(5);
        return iH == 31 ? c0Var.h(6) + 32 : iH;
    }

    private static int d(com.google.android.exoplayer2.util.c0 c0Var) throws ParserException {
        int iH = c0Var.h(4);
        if (iH == 15) {
            return c0Var.h(24);
        }
        if (iH < 13) {
            return f23904a[iH];
        }
        throw ParserException.createForMalformedContainer(null, null);
    }

    public static b e(com.google.android.exoplayer2.util.c0 c0Var, boolean z10) throws ParserException {
        int iC = c(c0Var);
        int iD = d(c0Var);
        int iH = c0Var.h(4);
        String str = "mp4a.40." + iC;
        if (iC == 5 || iC == 29) {
            iD = d(c0Var);
            iC = c(c0Var);
            if (iC == 22) {
                iH = c0Var.h(4);
            }
        }
        if (z10) {
            if (iC != 1 && iC != 2 && iC != 3 && iC != 4 && iC != 6 && iC != 7 && iC != 17) {
                switch (iC) {
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                        break;
                    default:
                        throw ParserException.createForUnsupportedContainerFeature("Unsupported audio object type: " + iC);
                }
            }
            g(c0Var, iC, iH);
            switch (iC) {
                case 17:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                    int iH2 = c0Var.h(2);
                    if (iH2 == 2 || iH2 == 3) {
                        throw ParserException.createForUnsupportedContainerFeature("Unsupported epConfig: " + iH2);
                    }
                    break;
            }
        }
        int i10 = f23905b[iH];
        if (i10 != -1) {
            return new b(iD, i10, str);
        }
        throw ParserException.createForMalformedContainer(null, null);
    }

    public static b f(byte[] bArr) {
        return e(new com.google.android.exoplayer2.util.c0(bArr), false);
    }

    private static void g(com.google.android.exoplayer2.util.c0 c0Var, int i10, int i11) {
        if (c0Var.g()) {
            com.google.android.exoplayer2.util.s.i("AacUtil", "Unexpected frameLengthFlag = 1");
        }
        if (c0Var.g()) {
            c0Var.r(14);
        }
        boolean zG = c0Var.g();
        if (i11 == 0) {
            throw new UnsupportedOperationException();
        }
        if (i10 == 6 || i10 == 20) {
            c0Var.r(3);
        }
        if (zG) {
            if (i10 == 22) {
                c0Var.r(16);
            }
            if (i10 == 17 || i10 == 19 || i10 == 20 || i10 == 23) {
                c0Var.r(3);
            }
            c0Var.r(1);
        }
    }
}
