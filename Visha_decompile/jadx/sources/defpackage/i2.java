package defpackage;

import androidx.media3.extractor.AacUtil;
import androidx.media3.extractor.OpusUtil;
import com.google.android.exoplayer2.ParserException;

public abstract class i2 {
    public static final int[] a = {96000, 88200, 64000, OpusUtil.SAMPLE_RATE, 44100, 32000, 24000, 22050, AacUtil.AAC_HE_V1_MAX_RATE_BYTES_PER_SECOND, 12000, 11025, 8000, 7350};
    public static final int[] b = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    public static final class b {
        public final int a;
        public final int b;
        public final String c;

        public b(int i, int i2, String str) {
            this.a = i;
            this.b = i2;
            this.c = str;
        }
    }

    public static byte[] a(int i, int i2, int i3) {
        return new byte[]{(byte) (((i << 3) & 248) | ((i2 >> 1) & 7)), (byte) (((i2 << 7) & 128) | ((i3 << 3) & 120))};
    }

    public static int b(pw7 pw7Var) {
        int iH = pw7Var.h(5);
        return iH == 31 ? pw7Var.h(6) + 32 : iH;
    }

    public static int c(pw7 pw7Var) throws ParserException {
        int iH = pw7Var.h(4);
        if (iH == 15) {
            return pw7Var.h(24);
        }
        if (iH < 13) {
            return a[iH];
        }
        throw ParserException.createForMalformedContainer(null, null);
    }

    public static b d(pw7 pw7Var, boolean z) throws ParserException {
        int iB = b(pw7Var);
        int iC = c(pw7Var);
        int iH = pw7Var.h(4);
        String str = "mp4a.40." + iB;
        if (iB == 5 || iB == 29) {
            iC = c(pw7Var);
            iB = b(pw7Var);
            if (iB == 22) {
                iH = pw7Var.h(4);
            }
        }
        if (z) {
            if (iB != 1 && iB != 2 && iB != 3 && iB != 4 && iB != 6 && iB != 7 && iB != 17) {
                switch (iB) {
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                        break;
                    default:
                        throw ParserException.createForUnsupportedContainerFeature("Unsupported audio object type: " + iB);
                }
            }
            f(pw7Var, iB, iH);
            switch (iB) {
                case 17:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                    int iH2 = pw7Var.h(2);
                    if (iH2 == 2 || iH2 == 3) {
                        throw ParserException.createForUnsupportedContainerFeature("Unsupported epConfig: " + iH2);
                    }
                    break;
            }
        }
        int i = b[iH];
        if (i != -1) {
            return new b(iC, i, str);
        }
        throw ParserException.createForMalformedContainer(null, null);
    }

    public static b e(byte[] bArr) {
        return d(new pw7(bArr), false);
    }

    public static void f(pw7 pw7Var, int i, int i2) {
        if (pw7Var.g()) {
            op5.i("AacUtil", "Unexpected frameLengthFlag = 1");
        }
        if (pw7Var.g()) {
            pw7Var.r(14);
        }
        boolean zG = pw7Var.g();
        if (i2 == 0) {
            throw new UnsupportedOperationException();
        }
        if (i == 6 || i == 20) {
            pw7Var.r(3);
        }
        if (zG) {
            if (i == 22) {
                pw7Var.r(16);
            }
            if (i == 17 || i == 19 || i == 20 || i == 23) {
                pw7Var.r(3);
            }
            pw7Var.r(1);
        }
    }
}
