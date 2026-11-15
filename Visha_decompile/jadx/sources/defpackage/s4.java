package defpackage;

import androidx.media3.common.MimeTypes;
import androidx.media3.extractor.OpusUtil;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.k;
import java.nio.ByteBuffer;

public abstract class s4 {
    public static final int[] a = {2002, 2000, 1920, 1601, 1600, 1001, 1000, 960, 800, 800, 480, 400, 400, 2048};

    public static final class b {
        public final int a;
        public final int b;
        public final int c;
        public final int d;
        public final int e;

        public b(int i, int i2, int i3, int i4, int i5) {
            this.a = i;
            this.c = i2;
            this.b = i3;
            this.d = i4;
            this.e = i5;
        }
    }

    public static void a(int i, qw7 qw7Var) {
        qw7Var.K(7);
        byte[] bArrD = qw7Var.d();
        bArrD[0] = -84;
        bArrD[1] = 64;
        bArrD[2] = -1;
        bArrD[3] = -1;
        bArrD[4] = (byte) ((i >> 16) & 255);
        bArrD[5] = (byte) ((i >> 8) & 255);
        bArrD[6] = (byte) (i & 255);
    }

    public static k b(qw7 qw7Var, String str, String str2, DrmInitData drmInitData) {
        qw7Var.P(1);
        return new k.b().S(str).e0(MimeTypes.AUDIO_AC4).H(2).f0(((qw7Var.C() & 32) >> 5) == 1 ? OpusUtil.SAMPLE_RATE : 44100).M(drmInitData).V(str2).E();
    }

    public static int c(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[16];
        int iPosition = byteBuffer.position();
        byteBuffer.get(bArr);
        byteBuffer.position(iPosition);
        return d(new pw7(bArr)).e;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0082  */
    /* JADX WARN: Code duplicated, block: B:44:0x008b  */
    /* JADX WARN: Code duplicated, block: B:47:0x0090  */
    public static b d(pw7 pw7Var) {
        int i;
        int i2;
        int iH = pw7Var.h(16);
        int iH2 = pw7Var.h(16);
        if (iH2 == 65535) {
            iH2 = pw7Var.h(24);
            i = 7;
        } else {
            i = 4;
        }
        int i3 = iH2 + i;
        if (iH == 44097) {
            i3 += 2;
        }
        int i4 = i3;
        int iH3 = pw7Var.h(2);
        if (iH3 == 3) {
            iH3 += f(pw7Var, 2);
        }
        int i5 = iH3;
        int iH4 = pw7Var.h(10);
        if (pw7Var.g() && pw7Var.h(3) > 0) {
            pw7Var.r(2);
        }
        int i6 = pw7Var.g() ? 48000 : 44100;
        int iH5 = pw7Var.h(4);
        if (i6 == 44100 && iH5 == 13) {
            i2 = a[iH5];
        } else if (i6 == 48000) {
            int[] iArr = a;
            if (iH5 < iArr.length) {
                int i7 = iArr[iH5];
                int i8 = iH4 % 5;
                if (i8 == 1) {
                    if (iH5 != 3 || iH5 == 8) {
                        i7++;
                    }
                } else if (i8 != 2) {
                    if (i8 != 3) {
                        if (i8 == 4 && (iH5 == 3 || iH5 == 8 || iH5 == 11)) {
                            i7++;
                        }
                    } else if (iH5 != 3) {
                        i7++;
                    } else {
                        i7++;
                    }
                } else if (iH5 == 8 || iH5 == 11) {
                    i7++;
                }
                i2 = i7;
            } else {
                i2 = 0;
            }
        } else {
            i2 = 0;
        }
        return new b(i5, 2, i6, i4, i2);
    }

    public static int e(byte[] bArr, int i) {
        int i2 = 7;
        if (bArr.length < 7) {
            return -1;
        }
        int i3 = ((bArr[2] & 255) << 8) | (bArr[3] & 255);
        if (i3 == 65535) {
            i3 = ((bArr[4] & 255) << 16) | ((bArr[5] & 255) << 8) | (bArr[6] & 255);
        } else {
            i2 = 4;
        }
        if (i == 44097) {
            i2 += 2;
        }
        return i3 + i2;
    }

    public static int f(pw7 pw7Var, int i) {
        int i2 = 0;
        while (true) {
            int iH = i2 + pw7Var.h(i);
            if (!pw7Var.g()) {
                return iH;
            }
            i2 = (iH + 1) << i;
        }
    }
}
