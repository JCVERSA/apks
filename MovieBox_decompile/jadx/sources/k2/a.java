package k2;

import androidx.media3.common.ParserException;
import com.cloud.tmc.integration.audio.recording.RecorderConstants;

public abstract class a {

    private static final int[] f63488a = {RecorderConstants.RECORD_ENCODING_BITRATE_96000, 88200, RecorderConstants.RECORD_ENCODING_BITRATE_64000, 48000, RecorderConstants.RECORD_SAMPLE_RATE_44100, 32000, 24000, RecorderConstants.RECORD_SAMPLE_RATE_22050, 16000, 12000, RecorderConstants.RECORD_SAMPLE_RATE_11025, 8000, 7350};

    private static final int[] f63489b = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    public static final class b {

        public final int f63490a;

        public final int f63491b;

        public final String f63492c;

        private b(int i10, int i11, String str) {
            this.f63490a = i10;
            this.f63491b = i11;
            this.f63492c = str;
        }
    }

    public static byte[] a(int i10, int i11, int i12) {
        return new byte[]{(byte) (((i10 << 3) & 248) | ((i11 >> 1) & 7)), (byte) (((i11 << 7) & 128) | ((i12 << 3) & 120))};
    }

    private static int b(androidx.media3.common.util.i0 i0Var) {
        int iH = i0Var.h(5);
        return iH == 31 ? i0Var.h(6) + 32 : iH;
    }

    private static int c(androidx.media3.common.util.i0 i0Var) throws ParserException {
        int iH = i0Var.h(4);
        if (iH == 15) {
            if (i0Var.b() >= 24) {
                return i0Var.h(24);
            }
            throw ParserException.createForMalformedContainer("AAC header insufficient data", null);
        }
        if (iH < 13) {
            return f63488a[iH];
        }
        throw ParserException.createForMalformedContainer("AAC header wrong Sampling Frequency Index", null);
    }

    public static b d(androidx.media3.common.util.i0 i0Var, boolean z10) throws ParserException {
        int iB = b(i0Var);
        int iC = c(i0Var);
        int iH = i0Var.h(4);
        String str = "mp4a.40." + iB;
        if (iB == 5 || iB == 29) {
            iC = c(i0Var);
            iB = b(i0Var);
            if (iB == 22) {
                iH = i0Var.h(4);
            }
        }
        if (z10) {
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
            f(i0Var, iB, iH);
            switch (iB) {
                case 17:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                    int iH2 = i0Var.h(2);
                    if (iH2 == 2 || iH2 == 3) {
                        throw ParserException.createForUnsupportedContainerFeature("Unsupported epConfig: " + iH2);
                    }
                    break;
            }
        }
        int i10 = f63489b[iH];
        if (i10 != -1) {
            return new b(iC, i10, str);
        }
        throw ParserException.createForMalformedContainer(null, null);
    }

    public static b e(byte[] bArr) {
        return d(new androidx.media3.common.util.i0(bArr), false);
    }

    private static void f(androidx.media3.common.util.i0 i0Var, int i10, int i11) {
        if (i0Var.g()) {
            androidx.media3.common.util.u.h("AacUtil", "Unexpected frameLengthFlag = 1");
        }
        if (i0Var.g()) {
            i0Var.r(14);
        }
        boolean zG = i0Var.g();
        if (i11 == 0) {
            throw new UnsupportedOperationException();
        }
        if (i10 == 6 || i10 == 20) {
            i0Var.r(3);
        }
        if (zG) {
            if (i10 == 22) {
                i0Var.r(16);
            }
            if (i10 == 17 || i10 == 19 || i10 == 20 || i10 == 23) {
                i0Var.r(3);
            }
            i0Var.r(1);
        }
    }
}
