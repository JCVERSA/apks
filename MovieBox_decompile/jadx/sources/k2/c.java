package k2;

import androidx.media3.common.DrmInitData;
import androidx.media3.common.ParserException;
import com.cloud.tmc.integration.audio.recording.RecorderConstants;
import com.google.logging.type.LogSeverity;
import java.nio.ByteBuffer;

public abstract class c {

    private static final int[] f63522a = {2002, 2000, 1920, 1601, 1600, 1001, 1000, 960, LogSeverity.EMERGENCY_VALUE, LogSeverity.EMERGENCY_VALUE, 480, 400, 400, 2048};

    private static final class b {

        public boolean f63523a;

        public int f63524b;

        public int f63525c;

        public boolean f63526d;

        public int f63527e;

        public int f63528f;

        private b() {
            this.f63523a = true;
            this.f63524b = -1;
            this.f63525c = -1;
            this.f63526d = true;
            this.f63527e = 2;
            this.f63528f = 0;
        }
    }

    public static final class C0782c {

        public final int f63529a;

        public final int f63530b;

        public final int f63531c;

        public final int f63532d;

        public final int f63533e;

        private C0782c(int i10, int i11, int i12, int i13, int i14) {
            this.f63529a = i10;
            this.f63531c = i11;
            this.f63530b = i12;
            this.f63532d = i13;
            this.f63533e = i14;
        }
    }

    public static void a(int i10, androidx.media3.common.util.j0 j0Var) {
        j0Var.S(7);
        byte[] bArrE = j0Var.e();
        bArrE[0] = -84;
        bArrE[1] = 64;
        bArrE[2] = -1;
        bArrE[3] = -1;
        bArrE[4] = (byte) ((i10 >> 16) & 255);
        bArrE[5] = (byte) ((i10 >> 8) & 255);
        bArrE[6] = (byte) (i10 & 255);
    }

    private static int b(int i10, boolean z10, int i11) {
        int iC = c(i10);
        if (i10 != 11 && i10 != 12 && i10 != 13 && i10 != 14) {
            return iC;
        }
        if (!z10) {
            iC -= 2;
        }
        if (i11 != 0) {
            return i11 != 1 ? iC : iC - 2;
        }
        return iC - 4;
    }

    private static int c(int i10) {
        switch (i10) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 3;
            case 3:
                return 5;
            case 4:
                return 6;
            case 5:
            case 7:
            case 9:
                return 7;
            case 6:
            case 8:
            case 10:
                return 8;
            case 11:
                return 11;
            case 12:
                return 12;
            case 13:
                return 13;
            case 14:
                return 14;
            case 15:
                return 24;
            default:
                return -1;
        }
    }

    public static androidx.media3.common.r d(androidx.media3.common.util.j0 j0Var, String str, String str2, DrmInitData drmInitData) throws ParserException {
        int iB;
        boolean zG;
        int iH;
        int iH2;
        int iH3;
        int iB2;
        boolean z10;
        boolean zG2;
        int i10;
        androidx.media3.common.util.i0 i0Var = new androidx.media3.common.util.i0();
        i0Var.m(j0Var);
        int iB3 = i0Var.b();
        int iH4 = i0Var.h(3);
        if (iH4 > 1) {
            throw ParserException.createForUnsupportedContainerFeature("Unsupported AC-4 DSI version: " + iH4);
        }
        int iH5 = i0Var.h(7);
        int i11 = i0Var.g() ? 48000 : RecorderConstants.RECORD_SAMPLE_RATE_44100;
        i0Var.r(4);
        int iH6 = i0Var.h(9);
        if (iH5 > 1) {
            if (iH4 == 0) {
                throw ParserException.createForUnsupportedContainerFeature("Invalid AC-4 DSI version: " + iH4);
            }
            if (i0Var.g()) {
                i0Var.r(16);
                if (i0Var.g()) {
                    i0Var.r(128);
                }
            }
        }
        if (iH4 == 1) {
            if (!k(i0Var)) {
                throw ParserException.createForUnsupportedContainerFeature("Invalid AC-4 DSI bitrate.");
            }
            i0Var.c();
        }
        b bVar = new b();
        int i12 = 0;
        while (true) {
            if (i12 < iH6) {
                if (iH4 == 0) {
                    zG = i0Var.g();
                    iH = i0Var.h(5);
                    iH2 = i0Var.h(5);
                    iH3 = 0;
                    iB2 = 0;
                    z10 = false;
                } else {
                    int iH7 = i0Var.h(8);
                    iH3 = i0Var.h(8);
                    if (iH3 == 255) {
                        iH3 += i0Var.h(16);
                    }
                    if (iH7 > 2) {
                        i0Var.r(iH3 * 8);
                        i12++;
                    } else {
                        iB2 = (iB3 - i0Var.b()) / 8;
                        int iH8 = i0Var.h(5);
                        z10 = iH8 == 31;
                        iH2 = iH7;
                        iH = iH8;
                        zG = false;
                    }
                }
                if (zG || z10 || iH != 6) {
                    bVar.f63528f = i0Var.h(3);
                    if (i0Var.g()) {
                        i0Var.r(5);
                    }
                    i0Var.r(2);
                    if (iH4 == 1 && (iH2 == 1 || iH2 == 2)) {
                        i0Var.r(2);
                    }
                    i0Var.r(5);
                    i0Var.r(10);
                    if (iH4 == 1) {
                        if (iH2 > 0) {
                            bVar.f63523a = i0Var.g();
                        }
                        if (bVar.f63523a) {
                            if (iH2 == 1 || iH2 == 2) {
                                int iH9 = i0Var.h(5);
                                if (iH9 >= 0 && iH9 <= 15) {
                                    bVar.f63524b = iH9;
                                }
                                if (iH9 >= 11 && iH9 <= 14) {
                                    bVar.f63526d = i0Var.g();
                                    bVar.f63527e = i0Var.h(2);
                                }
                            }
                            i0Var.r(24);
                            i10 = 1;
                        } else {
                            i10 = 1;
                        }
                        if (iH2 == i10 || iH2 == 2) {
                            if (i0Var.g() && i0Var.g()) {
                                i0Var.r(2);
                            }
                            if (i0Var.g()) {
                                i0Var.q();
                                int i13 = 8;
                                int iH10 = i0Var.h(8);
                                int i14 = 0;
                                while (i14 < iH10) {
                                    i0Var.r(i13);
                                    i14++;
                                    i13 = 8;
                                }
                            }
                        }
                    }
                    if (!zG && !z10) {
                        i0Var.q();
                        if (iH == 0 || iH == 1 || iH == 2) {
                            if (iH2 == 0) {
                                for (int i15 = 0; i15 < 2; i15++) {
                                    h(i0Var, bVar);
                                }
                            } else {
                                for (int i16 = 0; i16 < 2; i16++) {
                                    i(i0Var, bVar);
                                }
                            }
                        } else if (iH == 3 || iH == 4) {
                            if (iH2 == 0) {
                                for (int i17 = 0; i17 < 3; i17++) {
                                    h(i0Var, bVar);
                                }
                            } else {
                                int i18 = 0;
                                for (int i19 = 3; i18 < i19; i19 = 3) {
                                    i(i0Var, bVar);
                                    i18++;
                                }
                            }
                        } else if (iH != 5) {
                            int iH11 = i0Var.h(7);
                            for (int i20 = 0; i20 < iH11; i20++) {
                                i0Var.r(8);
                            }
                        } else if (iH2 == 0) {
                            h(i0Var, bVar);
                        } else {
                            int iH12 = i0Var.h(3);
                            for (int i21 = 0; i21 < iH12 + 2; i21++) {
                                i(i0Var, bVar);
                            }
                        }
                    } else if (iH2 == 0) {
                        h(i0Var, bVar);
                    } else {
                        i(i0Var, bVar);
                    }
                    i0Var.q();
                    zG2 = i0Var.g();
                } else {
                    zG2 = true;
                }
                if (zG2) {
                    int iH13 = i0Var.h(7);
                    for (int i22 = 0; i22 < iH13; i22++) {
                        i0Var.r(15);
                    }
                }
                if (iH2 > 0) {
                    if (i0Var.g() && !k(i0Var)) {
                        throw ParserException.createForUnsupportedContainerFeature("Can't parse bitrate DSI.");
                    }
                    if (i0Var.g()) {
                        i0Var.c();
                        i0Var.s(i0Var.h(16));
                        int iH14 = i0Var.h(5);
                        for (int i23 = 0; i23 < iH14; i23++) {
                            i0Var.r(3);
                            i0Var.r(8);
                        }
                    }
                }
                i0Var.c();
                if (iH4 == 1) {
                    int iB4 = ((iB3 - i0Var.b()) / 8) - iB2;
                    if (iH3 < iB4) {
                        throw ParserException.createForUnsupportedContainerFeature("pres_bytes is smaller than presentation bytes read.");
                    }
                    i0Var.s(iH3 - iB4);
                }
                if (bVar.f63523a && bVar.f63524b == -1) {
                    throw ParserException.createForUnsupportedContainerFeature("Can't determine channel mode of presentation " + i12);
                }
            }
            if (bVar.f63523a) {
                iB = b(bVar.f63524b, bVar.f63526d, bVar.f63527e);
            } else {
                iB = bVar.f63525c + 1;
                if (bVar.f63528f == 4 && iB == 17) {
                    iB = 21;
                }
            }
            if (iB > 0) {
                return new androidx.media3.common.r.b().f0(str).u0("audio/ac4").R(iB).v0(i11).Y(drmInitData).j0(str2).N();
            }
            throw ParserException.createForUnsupportedContainerFeature("Can't determine channel count of presentation.");
        }
    }

    public static int e(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[16];
        int iPosition = byteBuffer.position();
        byteBuffer.get(bArr);
        byteBuffer.position(iPosition);
        return f(new androidx.media3.common.util.i0(bArr)).f63533e;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0082  */
    /* JADX WARN: Code duplicated, block: B:44:0x008b  */
    /* JADX WARN: Code duplicated, block: B:47:0x0090  */
    public static C0782c f(androidx.media3.common.util.i0 i0Var) {
        int i10;
        int i11;
        int iH = i0Var.h(16);
        int iH2 = i0Var.h(16);
        if (iH2 == 65535) {
            iH2 = i0Var.h(24);
            i10 = 7;
        } else {
            i10 = 4;
        }
        int i12 = iH2 + i10;
        if (iH == 44097) {
            i12 += 2;
        }
        int i13 = i12;
        int iH3 = i0Var.h(2);
        if (iH3 == 3) {
            iH3 += j(i0Var, 2);
        }
        int i14 = iH3;
        int iH4 = i0Var.h(10);
        if (i0Var.g() && i0Var.h(3) > 0) {
            i0Var.r(2);
        }
        int i15 = i0Var.g() ? 48000 : 44100;
        int iH5 = i0Var.h(4);
        if (i15 == 44100 && iH5 == 13) {
            i11 = f63522a[iH5];
        } else if (i15 == 48000) {
            int[] iArr = f63522a;
            if (iH5 < iArr.length) {
                int i16 = iArr[iH5];
                int i17 = iH4 % 5;
                if (i17 == 1) {
                    if (iH5 != 3 || iH5 == 8) {
                        i16++;
                    }
                } else if (i17 != 2) {
                    if (i17 != 3) {
                        if (i17 == 4 && (iH5 == 3 || iH5 == 8 || iH5 == 11)) {
                            i16++;
                        }
                    } else if (iH5 != 3) {
                        i16++;
                    } else {
                        i16++;
                    }
                } else if (iH5 == 8 || iH5 == 11) {
                    i16++;
                }
                i11 = i16;
            } else {
                i11 = 0;
            }
        } else {
            i11 = 0;
        }
        return new C0782c(i14, 2, i15, i13, i11);
    }

    public static int g(byte[] bArr, int i10) {
        int i11 = 7;
        if (bArr.length < 7) {
            return -1;
        }
        int i12 = ((bArr[2] & 255) << 8) | (bArr[3] & 255);
        if (i12 == 65535) {
            i12 = ((bArr[4] & 255) << 16) | ((bArr[5] & 255) << 8) | (bArr[6] & 255);
        } else {
            i11 = 4;
        }
        if (i10 == 44097) {
            i11 += 2;
        }
        return i12 + i11;
    }

    private static void h(androidx.media3.common.util.i0 i0Var, b bVar) throws ParserException {
        int iH = i0Var.h(5);
        i0Var.r(2);
        if (i0Var.g()) {
            i0Var.r(5);
        }
        if (iH >= 7 && iH <= 10) {
            i0Var.q();
        }
        if (i0Var.g()) {
            int iH2 = i0Var.h(3);
            if (bVar.f63524b == -1 && iH >= 0 && iH <= 15 && (iH2 == 0 || iH2 == 1)) {
                bVar.f63524b = iH;
            }
            if (i0Var.g()) {
                l(i0Var);
            }
        }
    }

    private static void i(androidx.media3.common.util.i0 i0Var, b bVar) throws ParserException {
        i0Var.r(2);
        boolean zG = i0Var.g();
        int iH = i0Var.h(8);
        for (int i10 = 0; i10 < iH; i10++) {
            i0Var.r(2);
            if (i0Var.g()) {
                i0Var.r(5);
            }
            if (zG) {
                i0Var.r(24);
            } else {
                if (i0Var.g()) {
                    if (!i0Var.g()) {
                        i0Var.r(4);
                    }
                    bVar.f63525c = i0Var.h(6) + 1;
                }
                i0Var.r(4);
            }
        }
        if (i0Var.g()) {
            i0Var.r(3);
            if (i0Var.g()) {
                l(i0Var);
            }
        }
    }

    private static int j(androidx.media3.common.util.i0 i0Var, int i10) {
        int i11 = 0;
        while (true) {
            int iH = i11 + i0Var.h(i10);
            if (!i0Var.g()) {
                return iH;
            }
            i11 = (iH + 1) << i10;
        }
    }

    private static boolean k(androidx.media3.common.util.i0 i0Var) {
        if (i0Var.b() < 66) {
            return false;
        }
        i0Var.r(66);
        return true;
    }

    private static void l(androidx.media3.common.util.i0 i0Var) throws ParserException {
        int iH = i0Var.h(6);
        if (iH < 2 || iH > 42) {
            throw ParserException.createForUnsupportedContainerFeature(String.format("Invalid language tag bytes number: %d. Must be between 2 and 42.", Integer.valueOf(iH)));
        }
        i0Var.r(iH * 8);
    }
}
