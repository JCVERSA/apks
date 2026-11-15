package com.google.android.exoplayer2.audio;

import com.cloud.tmc.integration.audio.recording.RecorderConstants;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.p1;
import com.google.logging.type.LogSeverity;
import java.nio.ByteBuffer;

public abstract class c {

    private static final int[] f23936a = {2002, 2000, 1920, 1601, 1600, 1001, 1000, 960, LogSeverity.EMERGENCY_VALUE, LogSeverity.EMERGENCY_VALUE, 480, 400, 400, 2048};

    public static final class b {

        public final int f23937a;

        public final int f23938b;

        public final int f23939c;

        public final int f23940d;

        public final int f23941e;

        private b(int i10, int i11, int i12, int i13, int i14) {
            this.f23937a = i10;
            this.f23939c = i11;
            this.f23938b = i12;
            this.f23940d = i13;
            this.f23941e = i14;
        }
    }

    public static void a(int i10, com.google.android.exoplayer2.util.d0 d0Var) {
        d0Var.L(7);
        byte[] bArrD = d0Var.d();
        bArrD[0] = -84;
        bArrD[1] = 64;
        bArrD[2] = -1;
        bArrD[3] = -1;
        bArrD[4] = (byte) ((i10 >> 16) & 255);
        bArrD[5] = (byte) ((i10 >> 8) & 255);
        bArrD[6] = (byte) (i10 & 255);
    }

    public static p1 b(com.google.android.exoplayer2.util.d0 d0Var, String str, String str2, DrmInitData drmInitData) {
        d0Var.Q(1);
        return new p1.b().S(str).e0("audio/ac4").H(2).f0(((d0Var.D() & 32) >> 5) == 1 ? 48000 : RecorderConstants.RECORD_SAMPLE_RATE_44100).M(drmInitData).V(str2).E();
    }

    public static int c(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[16];
        int iPosition = byteBuffer.position();
        byteBuffer.get(bArr);
        byteBuffer.position(iPosition);
        return d(new com.google.android.exoplayer2.util.c0(bArr)).f23941e;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0082  */
    /* JADX WARN: Code duplicated, block: B:44:0x008b  */
    /* JADX WARN: Code duplicated, block: B:47:0x0090  */
    public static b d(com.google.android.exoplayer2.util.c0 c0Var) {
        int i10;
        int i11;
        int iH = c0Var.h(16);
        int iH2 = c0Var.h(16);
        if (iH2 == 65535) {
            iH2 = c0Var.h(24);
            i10 = 7;
        } else {
            i10 = 4;
        }
        int i12 = iH2 + i10;
        if (iH == 44097) {
            i12 += 2;
        }
        int i13 = i12;
        int iH3 = c0Var.h(2);
        if (iH3 == 3) {
            iH3 += f(c0Var, 2);
        }
        int i14 = iH3;
        int iH4 = c0Var.h(10);
        if (c0Var.g() && c0Var.h(3) > 0) {
            c0Var.r(2);
        }
        int i15 = c0Var.g() ? 48000 : 44100;
        int iH5 = c0Var.h(4);
        if (i15 == 44100 && iH5 == 13) {
            i11 = f23936a[iH5];
        } else if (i15 == 48000) {
            int[] iArr = f23936a;
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
        return new b(i14, 2, i15, i13, i11);
    }

    public static int e(byte[] bArr, int i10) {
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

    private static int f(com.google.android.exoplayer2.util.c0 c0Var, int i10) {
        int i11 = 0;
        while (true) {
            int iH = i11 + c0Var.h(i10);
            if (!c0Var.g()) {
                return iH;
            }
            i11 = (iH + 1) << i10;
        }
    }
}
