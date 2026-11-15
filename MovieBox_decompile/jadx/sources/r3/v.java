package r3;

import androidx.media3.common.ParserException;
import com.cloud.tmc.integration.audio.recording.RecorderConstants;

abstract class v {

    public static class b {

        public int f70789a;

        public long f70790b;

        public int f70791c;
    }

    public static class c {

        public final int f70792a;

        public final int f70793b;

        public final int f70794c;

        public final byte[] f70795d;

        private c(int i10, int i11, int i12, byte[] bArr) {
            this.f70792a = i10;
            this.f70793b = i11;
            this.f70794c = i12;
            this.f70795d = bArr;
        }
    }

    private static int a(int i10) throws ParserException {
        if (i10 == 0) {
            return 768;
        }
        if (i10 == 1) {
            return 1024;
        }
        if (i10 == 2 || i10 == 3) {
            return 2048;
        }
        if (i10 == 4) {
            return 4096;
        }
        throw ParserException.createForUnsupportedContainerFeature("Unsupported coreSbrFrameLengthIndex " + i10);
    }

    private static double b(int i10) throws ParserException {
        switch (i10) {
            case 14700:
            case 16000:
                return 3.0d;
            case RecorderConstants.RECORD_SAMPLE_RATE_22050:
            case 24000:
                return 2.0d;
            case 29400:
            case 32000:
            case 58800:
            case RecorderConstants.RECORD_ENCODING_BITRATE_64000:
                return 1.5d;
            case RecorderConstants.RECORD_SAMPLE_RATE_44100:
            case 48000:
            case 88200:
            case RecorderConstants.RECORD_ENCODING_BITRATE_96000:
                return 1.0d;
            default:
                throw ParserException.createForUnsupportedContainerFeature("Unsupported sampling rate " + i10);
        }
    }

    private static int c(int i10) throws ParserException {
        switch (i10) {
            case 0:
                return RecorderConstants.RECORD_ENCODING_BITRATE_96000;
            case 1:
                return 88200;
            case 2:
                return RecorderConstants.RECORD_ENCODING_BITRATE_64000;
            case 3:
                return 48000;
            case 4:
                return RecorderConstants.RECORD_SAMPLE_RATE_44100;
            case 5:
                return 32000;
            case 6:
                return 24000;
            case 7:
                return RecorderConstants.RECORD_SAMPLE_RATE_22050;
            case 8:
                return 16000;
            case 9:
                return 12000;
            case 10:
                return RecorderConstants.RECORD_SAMPLE_RATE_11025;
            case 11:
                return 8000;
            case 12:
                return 7350;
            case 13:
            case 14:
            default:
                throw ParserException.createForUnsupportedContainerFeature("Unsupported sampling rate index " + i10);
            case 15:
                return 57600;
            case 16:
                return com.transsnet.downloader.core.thread.b.SPEED_THRESHOLD;
            case 17:
                return 40000;
            case 18:
                return 38400;
            case 19:
                return 34150;
            case 20:
                return 28800;
            case 21:
                return 25600;
            case 22:
                return 20000;
            case 23:
                return 19200;
            case 24:
                return 17075;
            case 25:
                return 14400;
            case 26:
                return 12800;
            case 27:
                return 9600;
        }
    }

    private static int d(int i10) throws ParserException {
        if (i10 == 0 || i10 == 1) {
            return 0;
        }
        int i11 = 2;
        if (i10 != 2) {
            i11 = 3;
            if (i10 != 3) {
                if (i10 == 4) {
                    return 1;
                }
                throw ParserException.createForUnsupportedContainerFeature("Unsupported coreSbrFrameLengthIndex " + i10);
            }
        }
        return i11;
    }

    public static boolean e(int i10) {
        return (i10 & 16777215) == 12583333;
    }

    public static int f(androidx.media3.common.util.i0 i0Var) {
        if (!i0Var.g()) {
            return 0;
        }
        i0Var.r(2);
        return i0Var.h(13);
    }

    public static boolean g(androidx.media3.common.util.i0 i0Var, b bVar) throws ParserException {
        i0Var.d();
        int iK = k(i0Var, 3, 8, 8);
        bVar.f70789a = iK;
        if (iK == -1) {
            return false;
        }
        long jL = l(i0Var, 2, 8, 32);
        bVar.f70790b = jL;
        if (jL == -1) {
            return false;
        }
        if (jL > 16) {
            throw ParserException.createForUnsupportedContainerFeature("Contains sub-stream with an invalid packet label " + bVar.f70790b);
        }
        if (jL == 0) {
            int i10 = bVar.f70789a;
            if (i10 == 1) {
                throw ParserException.createForMalformedContainer("Mpegh3daConfig packet with invalid packet label 0", null);
            }
            if (i10 == 2) {
                throw ParserException.createForMalformedContainer("Mpegh3daFrame packet with invalid packet label 0", null);
            }
            if (i10 == 17) {
                throw ParserException.createForMalformedContainer("AudioTruncation packet with invalid packet label 0", null);
            }
        }
        int iK2 = k(i0Var, 11, 24, 24);
        bVar.f70791c = iK2;
        return iK2 != -1;
    }

    public static c h(androidx.media3.common.util.i0 i0Var) throws ParserException {
        int iH = i0Var.h(8);
        int iH2 = i0Var.h(5);
        int iH3 = iH2 == 31 ? i0Var.h(24) : c(iH2);
        int iH4 = i0Var.h(3);
        int iA = a(iH4);
        int iD = d(iH4);
        i0Var.r(2);
        p(i0Var);
        m(i0Var, j(i0Var), iD);
        byte[] bArr = null;
        if (i0Var.g()) {
            int iK = k(i0Var, 2, 4, 8) + 1;
            for (int i10 = 0; i10 < iK; i10++) {
                int iK2 = k(i0Var, 4, 8, 16);
                int iK3 = k(i0Var, 4, 8, 16);
                if (iK2 == 7) {
                    int iH5 = i0Var.h(4) + 1;
                    i0Var.r(4);
                    byte[] bArr2 = new byte[iH5];
                    for (int i11 = 0; i11 < iH5; i11++) {
                        bArr2[i11] = (byte) i0Var.h(8);
                    }
                    bArr = bArr2;
                } else {
                    i0Var.r(iK3 * 8);
                }
            }
        }
        byte[] bArr3 = bArr;
        double dB = b(iH3);
        return new c(iH, (int) (((double) iH3) * dB), (int) (((double) iA) * dB), bArr3);
    }

    private static boolean i(androidx.media3.common.util.i0 i0Var) {
        i0Var.r(3);
        boolean zG = i0Var.g();
        if (zG) {
            i0Var.r(13);
        }
        return zG;
    }

    private static int j(androidx.media3.common.util.i0 i0Var) {
        int iH = i0Var.h(5);
        int iK = 0;
        for (int i10 = 0; i10 < iH + 1; i10++) {
            int iH2 = i0Var.h(3);
            iK += k(i0Var, 5, 8, 16) + 1;
            if ((iH2 == 0 || iH2 == 2) && i0Var.g()) {
                p(i0Var);
            }
        }
        return iK;
    }

    private static int k(androidx.media3.common.util.i0 i0Var, int i10, int i11, int i12) {
        androidx.media3.common.util.a.a(Math.max(Math.max(i10, i11), i12) <= 31);
        int i13 = (1 << i10) - 1;
        int i14 = (1 << i11) - 1;
        com.google.common.math.d.a(com.google.common.math.d.a(i13, i14), 1 << i12);
        if (i0Var.b() < i10) {
            return -1;
        }
        int iH = i0Var.h(i10);
        if (iH != i13) {
            return iH;
        }
        if (i0Var.b() < i11) {
            return -1;
        }
        int iH2 = i0Var.h(i11);
        int i15 = iH + iH2;
        if (iH2 != i14) {
            return i15;
        }
        if (i0Var.b() < i12) {
            return -1;
        }
        return i15 + i0Var.h(i12);
    }

    private static long l(androidx.media3.common.util.i0 i0Var, int i10, int i11, int i12) {
        androidx.media3.common.util.a.a(Math.max(Math.max(i10, i11), i12) <= 63);
        long j10 = (1 << i10) - 1;
        long j11 = (1 << i11) - 1;
        com.google.common.math.f.a(com.google.common.math.f.a(j10, j11), 1 << i12);
        if (i0Var.b() < i10) {
            return -1L;
        }
        long j12 = i0Var.j(i10);
        if (j12 != j10) {
            return j12;
        }
        if (i0Var.b() < i11) {
            return -1L;
        }
        long j13 = i0Var.j(i11);
        long j14 = j12 + j13;
        if (j13 != j11) {
            return j14;
        }
        if (i0Var.b() < i12) {
            return -1L;
        }
        return j14 + i0Var.j(i12);
    }

    private static void m(androidx.media3.common.util.i0 i0Var, int i10, int i11) {
        int iH;
        int iK = k(i0Var, 4, 8, 16) + 1;
        i0Var.q();
        for (int i12 = 0; i12 < iK; i12++) {
            int iH2 = i0Var.h(2);
            if (iH2 == 0) {
                i(i0Var);
                if (i11 > 0) {
                    o(i0Var);
                }
            } else if (iH2 == 1) {
                if (i(i0Var)) {
                    i0Var.q();
                }
                if (i11 > 0) {
                    o(i0Var);
                    iH = i0Var.h(2);
                } else {
                    iH = 0;
                }
                if (iH > 0) {
                    i0Var.r(6);
                    int iH3 = i0Var.h(2);
                    i0Var.r(4);
                    if (i0Var.g()) {
                        i0Var.r(5);
                    }
                    if (iH == 2 || iH == 3) {
                        i0Var.r(6);
                    }
                    if (iH3 == 2) {
                        i0Var.q();
                    }
                }
                int iFloor = ((int) Math.floor(Math.log(i10 - 1) / Math.log(2.0d))) + 1;
                int iH4 = i0Var.h(2);
                if (iH4 > 0 && i0Var.g()) {
                    i0Var.r(iFloor);
                }
                if (i0Var.g()) {
                    i0Var.r(iFloor);
                }
                if (i11 == 0 && iH4 == 0) {
                    i0Var.q();
                }
            } else if (iH2 == 3) {
                k(i0Var, 4, 8, 16);
                int iK2 = k(i0Var, 4, 8, 16);
                if (i0Var.g()) {
                    k(i0Var, 8, 16, 0);
                }
                i0Var.q();
                if (iK2 > 0) {
                    i0Var.r(iK2 * 8);
                }
            }
        }
    }

    private static void n(androidx.media3.common.util.i0 i0Var, int i10) {
        int iH;
        boolean zG = i0Var.g();
        int i11 = zG ? 1 : 5;
        int i12 = zG ? 7 : 5;
        int i13 = zG ? 8 : 6;
        int i14 = 0;
        while (i14 < i10) {
            if (i0Var.g()) {
                i0Var.r(7);
                iH = 0;
            } else {
                if (i0Var.h(2) == 3 && i0Var.h(i12) * i11 != 0) {
                    i0Var.q();
                }
                iH = i0Var.h(i13) * i11;
                if (iH != 0 && iH != 180) {
                    i0Var.q();
                }
                i0Var.q();
            }
            if (iH != 0 && iH != 180 && i0Var.g()) {
                i14++;
            }
            i14++;
        }
    }

    private static void o(androidx.media3.common.util.i0 i0Var) {
        i0Var.r(3);
        i0Var.r(8);
        boolean zG = i0Var.g();
        boolean zG2 = i0Var.g();
        if (zG) {
            i0Var.r(5);
        }
        if (zG2) {
            i0Var.r(6);
        }
    }

    private static void p(androidx.media3.common.util.i0 i0Var) {
        int iH = i0Var.h(2);
        if (iH == 0) {
            i0Var.r(6);
            return;
        }
        int iK = k(i0Var, 5, 8, 16) + 1;
        if (iH == 1) {
            i0Var.r(iK * 7);
        } else if (iH == 2) {
            n(i0Var, iK);
        }
    }
}
