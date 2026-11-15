package k2;

import androidx.media3.common.DrmInitData;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.a1;
import com.cloud.tmc.integration.audio.recording.RecorderConstants;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;
import okhttp3.internal.http2.Settings;

public abstract class p {

    private static final int[] f63669a = {1, 2, 2, 2, 2, 3, 3, 4, 4, 5, 6, 6, 6, 7, 8, 8};

    private static final int[] f63670b = {-1, 8000, 16000, 32000, -1, -1, RecorderConstants.RECORD_SAMPLE_RATE_11025, RecorderConstants.RECORD_SAMPLE_RATE_22050, RecorderConstants.RECORD_SAMPLE_RATE_44100, -1, -1, 12000, 24000, 48000, -1, -1};

    private static final int[] f63671c = {64, 112, 128, PsExtractor.AUDIO_STREAM, 224, 256, 384, 448, 512, 640, 768, 896, 1024, 1152, 1280, 1536, 1920, 2048, 2304, 2560, 2688, 2816, 2823, 2944, 3072, 3840, 4096, 6144, 7680};

    private static final int[] f63672d = {8000, 16000, 32000, RecorderConstants.RECORD_ENCODING_BITRATE_64000, RecorderConstants.RECORD_ENCODING_BITRATE_128000, RecorderConstants.RECORD_SAMPLE_RATE_22050, RecorderConstants.RECORD_SAMPLE_RATE_44100, 88200, 176400, 352800, 12000, 24000, 48000, RecorderConstants.RECORD_ENCODING_BITRATE_96000, RecorderConstants.RECORD_ENCODING_BITRATE_192000, 384000};

    private static final int[] f63673e = {5, 8, 10, 12};

    private static final int[] f63674f = {6, 9, 12, 15};

    private static final int[] f63675g = {2, 4, 6, 8};

    private static final int[] f63676h = {9, 11, 13, 16};

    private static final int[] f63677i = {5, 8, 10, 12};

    public static final class b {

        public final String f63678a;

        public final int f63679b;

        public final int f63680c;

        public final int f63681d;

        public final long f63682e;

        public final int f63683f;

        private b(String str, int i10, int i11, int i12, long j10, int i13) {
            this.f63678a = str;
            this.f63680c = i10;
            this.f63679b = i11;
            this.f63681d = i12;
            this.f63682e = j10;
            this.f63683f = i13;
        }
    }

    private static void a(byte[] bArr, int i10) throws ParserException {
        int i11 = i10 - 2;
        if (((bArr[i10 - 1] & 255) | ((bArr[i11] << 8) & Settings.DEFAULT_INITIAL_WINDOW_SIZE)) != a1.v(bArr, 0, i11, Settings.DEFAULT_INITIAL_WINDOW_SIZE)) {
            throw ParserException.createForMalformedContainer("CRC check failed", null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0060  */
    /* JADX WARN: Code duplicated, block: B:17:? A[RETURN, SYNTHETIC] */
    public static int b(byte[] bArr) {
        int i10;
        byte b10;
        int i11;
        int i12;
        byte b11;
        boolean z10 = false;
        byte b12 = bArr[0];
        if (b12 != -2) {
            if (b12 == -1) {
                i12 = ((bArr[7] & 3) << 12) | ((bArr[6] & 255) << 4);
                b11 = bArr[9];
            } else if (b12 != 31) {
                i10 = ((bArr[5] & 3) << 12) | ((bArr[6] & 255) << 4);
                b10 = bArr[7];
            } else {
                i12 = ((bArr[6] & 3) << 12) | ((bArr[7] & 255) << 4);
                b11 = bArr[8];
            }
            i11 = (((b11 & 60) >> 2) | i12) + 1;
            z10 = true;
            if (z10) {
                return (i11 * 16) / 14;
            }
            return i11;
        }
        i10 = ((bArr[4] & 3) << 12) | ((bArr[7] & 255) << 4);
        b10 = bArr[6];
        i11 = (((b10 & 240) >> 4) | i10) + 1;
        if (z10) {
            return (i11 * 16) / 14;
        }
        return i11;
    }

    public static int c(int i10) {
        if (i10 == 2147385345 || i10 == -25230976 || i10 == 536864768 || i10 == -14745368) {
            return 1;
        }
        if (i10 == 1683496997 || i10 == 622876772) {
            return 2;
        }
        if (i10 == 1078008818 || i10 == -233094848) {
            return 3;
        }
        return (i10 == 1908687592 || i10 == -398277519) ? 4 : 0;
    }

    private static androidx.media3.common.util.i0 d(byte[] bArr) {
        byte b10 = bArr[0];
        if (b10 == 127 || b10 == 100 || b10 == 64 || b10 == 113) {
            return new androidx.media3.common.util.i0(bArr);
        }
        byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
        if (e(bArrCopyOf)) {
            for (int i10 = 0; i10 < bArrCopyOf.length - 1; i10 += 2) {
                byte b11 = bArrCopyOf[i10];
                int i11 = i10 + 1;
                bArrCopyOf[i10] = bArrCopyOf[i11];
                bArrCopyOf[i11] = b11;
            }
        }
        androidx.media3.common.util.i0 i0Var = new androidx.media3.common.util.i0(bArrCopyOf);
        if (bArrCopyOf[0] == 31) {
            androidx.media3.common.util.i0 i0Var2 = new androidx.media3.common.util.i0(bArrCopyOf);
            while (i0Var2.b() >= 16) {
                i0Var2.r(2);
                i0Var.f(i0Var2.h(14), 14);
            }
        }
        i0Var.n(bArrCopyOf);
        return i0Var;
    }

    private static boolean e(byte[] bArr) {
        byte b10 = bArr[0];
        return b10 == -2 || b10 == -1 || b10 == 37 || b10 == -14 || b10 == -24;
    }

    public static int f(ByteBuffer byteBuffer) {
        int i10;
        byte b10;
        int i11;
        byte b11;
        if (byteBuffer.getInt(0) == -233094848 || byteBuffer.getInt(0) == -398277519) {
            return 1024;
        }
        if (byteBuffer.getInt(0) == 622876772) {
            return 4096;
        }
        int iPosition = byteBuffer.position();
        byte b12 = byteBuffer.get(iPosition);
        if (b12 != -2) {
            if (b12 == -1) {
                i10 = (byteBuffer.get(iPosition + 4) & 7) << 4;
                b11 = byteBuffer.get(iPosition + 7);
            } else if (b12 != 31) {
                i10 = (byteBuffer.get(iPosition + 4) & 1) << 6;
                b10 = byteBuffer.get(iPosition + 5);
            } else {
                i10 = (byteBuffer.get(iPosition + 5) & 7) << 4;
                b11 = byteBuffer.get(iPosition + 6);
            }
            i11 = b11 & 60;
            return (((i11 >> 2) | i10) + 1) * 32;
        }
        i10 = (byteBuffer.get(iPosition + 5) & 1) << 6;
        b10 = byteBuffer.get(iPosition + 4);
        i11 = b10 & 252;
        return (((i11 >> 2) | i10) + 1) * 32;
    }

    public static int g(byte[] bArr) {
        int i10;
        byte b10;
        int i11;
        byte b11;
        byte b12 = bArr[0];
        if (b12 != -2) {
            if (b12 == -1) {
                i10 = (bArr[4] & 7) << 4;
                b11 = bArr[7];
            } else if (b12 != 31) {
                i10 = (bArr[4] & 1) << 6;
                b10 = bArr[5];
            } else {
                i10 = (bArr[5] & 7) << 4;
                b11 = bArr[6];
            }
            i11 = b11 & 60;
            return (((i11 >> 2) | i10) + 1) * 32;
        }
        i10 = (bArr[5] & 1) << 6;
        b10 = bArr[4];
        i11 = b10 & 252;
        return (((i11 >> 2) | i10) + 1) * 32;
    }

    public static androidx.media3.common.r h(byte[] bArr, String str, String str2, int i10, String str3, DrmInitData drmInitData) {
        androidx.media3.common.util.i0 i0VarD = d(bArr);
        i0VarD.r(60);
        int i11 = f63669a[i0VarD.h(6)];
        int i12 = f63670b[i0VarD.h(4)];
        int iH = i0VarD.h(5);
        int[] iArr = f63671c;
        int i13 = iH >= iArr.length ? -1 : (iArr[iH] * 1000) / 2;
        i0VarD.r(10);
        return new androidx.media3.common.r.b().f0(str).U(str3).u0(MimeTypes.AUDIO_DTS).Q(i13).R(i11 + (i0VarD.h(2) > 0 ? 1 : 0)).v0(i12).Y(drmInitData).j0(str2).s0(i10).N();
    }

    public static b i(byte[] bArr) throws ParserException {
        int i10;
        int i11;
        int iH;
        int i12;
        int iH2;
        long jE1;
        int i13;
        androidx.media3.common.util.i0 i0VarD = d(bArr);
        i0VarD.r(40);
        int iH3 = i0VarD.h(2);
        if (i0VarD.g()) {
            i10 = 20;
            i11 = 12;
        } else {
            i10 = 16;
            i11 = 8;
        }
        i0VarD.r(i11);
        int iH4 = i0VarD.h(i10) + 1;
        boolean zG = i0VarD.g();
        int i14 = 0;
        if (zG) {
            iH = i0VarD.h(2);
            int iH5 = (i0VarD.h(3) + 1) * 512;
            if (i0VarD.g()) {
                i0VarD.r(36);
            }
            int iH6 = i0VarD.h(3) + 1;
            int iH7 = i0VarD.h(3) + 1;
            if (iH6 != 1 || iH7 != 1) {
                throw ParserException.createForUnsupportedContainerFeature("Multiple audio presentations or assets not supported");
            }
            int i15 = iH3 + 1;
            int iH8 = i0VarD.h(i15);
            for (int i16 = 0; i16 < i15; i16++) {
                if (((iH8 >> i16) & 1) == 1) {
                    i0VarD.r(8);
                }
            }
            if (i0VarD.g()) {
                i0VarD.r(2);
                int iH9 = (i0VarD.h(2) + 1) << 2;
                int iH10 = i0VarD.h(2) + 1;
                while (i14 < iH10) {
                    i0VarD.r(iH9);
                    i14++;
                }
            }
            i14 = iH5;
        } else {
            iH = -1;
        }
        i0VarD.r(i10);
        i0VarD.r(12);
        if (zG) {
            if (i0VarD.g()) {
                i0VarD.r(4);
            }
            if (i0VarD.g()) {
                i0VarD.r(24);
            }
            if (i0VarD.g()) {
                i0VarD.s(i0VarD.h(10) + 1);
            }
            i0VarD.r(5);
            int i17 = f63672d[i0VarD.h(4)];
            iH2 = i0VarD.h(8) + 1;
            i12 = i17;
        } else {
            i12 = -2147483647;
            iH2 = -1;
        }
        if (zG) {
            if (iH == 0) {
                i13 = 32000;
            } else if (iH == 1) {
                i13 = RecorderConstants.RECORD_SAMPLE_RATE_44100;
            } else {
                if (iH != 2) {
                    throw ParserException.createForMalformedContainer("Unsupported reference clock code in DTS HD header: " + iH, null);
                }
                i13 = 48000;
            }
            jE1 = a1.e1(i14, 1000000L, i13);
        } else {
            jE1 = C.TIME_UNSET;
        }
        return new b(MimeTypes.AUDIO_DTS_EXPRESS, iH2, i12, iH4, jE1, 0);
    }

    public static int j(byte[] bArr) {
        androidx.media3.common.util.i0 i0VarD = d(bArr);
        i0VarD.r(42);
        return i0VarD.h(i0VarD.g() ? 12 : 8) + 1;
    }

    public static b k(byte[] bArr, AtomicInteger atomicInteger) throws ParserException {
        int iH;
        long jE1;
        int i10;
        int i11;
        androidx.media3.common.util.i0 i0VarD = d(bArr);
        int i12 = i0VarD.h(32) == 1078008818 ? 1 : 0;
        int iM = m(i0VarD, f63673e, true) + 1;
        if (i12 == 0) {
            iH = -2147483647;
            jE1 = C.TIME_UNSET;
        } else {
            if (!i0VarD.g()) {
                throw ParserException.createForUnsupportedContainerFeature("Only supports full channel mask-based audio presentation");
            }
            a(bArr, iM);
            int iH2 = i0VarD.h(2);
            if (iH2 == 0) {
                i10 = 512;
            } else if (iH2 == 1) {
                i10 = 480;
            } else {
                if (iH2 != 2) {
                    throw ParserException.createForMalformedContainer("Unsupported base duration index in DTS UHD header: " + iH2, null);
                }
                i10 = 384;
            }
            int iH3 = i10 * (i0VarD.h(3) + 1);
            int iH4 = i0VarD.h(2);
            if (iH4 == 0) {
                i11 = 32000;
            } else if (iH4 == 1) {
                i11 = RecorderConstants.RECORD_SAMPLE_RATE_44100;
            } else {
                if (iH4 != 2) {
                    throw ParserException.createForMalformedContainer("Unsupported clock rate index in DTS UHD header: " + iH4, null);
                }
                i11 = 48000;
            }
            if (i0VarD.g()) {
                i0VarD.r(36);
            }
            iH = (1 << i0VarD.h(2)) * i11;
            jE1 = a1.e1(iH3, 1000000L, i11);
        }
        int i13 = iH;
        long j10 = jE1;
        int iM2 = 0;
        for (int i14 = 0; i14 < i12; i14++) {
            iM2 += m(i0VarD, f63674f, true);
        }
        if (i12 != 0) {
            atomicInteger.set(m(i0VarD, f63675g, true));
        }
        return new b("audio/vnd.dts.uhd;profile=p2", 2, i13, iM + iM2 + (atomicInteger.get() != 0 ? m(i0VarD, f63676h, true) : 0), j10, 0);
    }

    public static int l(byte[] bArr) {
        androidx.media3.common.util.i0 i0VarD = d(bArr);
        i0VarD.r(32);
        return m(i0VarD, f63677i, true) + 1;
    }

    private static int m(androidx.media3.common.util.i0 i0Var, int[] iArr, boolean z10) {
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < 3 && i0Var.g(); i12++) {
            i11++;
        }
        if (z10) {
            int i13 = 0;
            while (i10 < i11) {
                i13 += 1 << iArr[i10];
                i10++;
            }
            i10 = i13;
        }
        return i10 + i0Var.h(iArr[i11]);
    }
}
