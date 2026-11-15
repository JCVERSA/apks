package defpackage;

import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.extractor.AacUtil;
import androidx.media3.extractor.DtsUtil;
import androidx.media3.extractor.OpusUtil;
import com.google.android.gms.internal.ads.zzaz;
import com.google.android.gms.internal.ads.zzs;
import com.google.android.material.internal.ViewUtils;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class b9e {
    public static final int[] a = {1, 2, 2, 2, 2, 3, 3, 4, 4, 5, 6, 6, 6, 7, 8, 8};
    public static final int[] b = {-1, 8000, AacUtil.AAC_HE_V1_MAX_RATE_BYTES_PER_SECOND, 32000, -1, -1, 11025, 22050, 44100, -1, -1, 12000, 24000, OpusUtil.SAMPLE_RATE, -1, -1};
    public static final int[] c = {64, 112, 128, 192, 224, 256, RendererCapabilities.DECODER_SUPPORT_MASK, 448, 512, 640, ViewUtils.EDGE_TO_EDGE_FLAGS, 896, 1024, 1152, 1280, 1536, 1920, 2048, 2304, 2560, 2688, 2816, 2823, 2944, 3072, 3840, 4096, 6144, 7680};
    public static final int[] d = {8000, AacUtil.AAC_HE_V1_MAX_RATE_BYTES_PER_SECOND, 32000, 64000, 128000, 22050, 44100, 88200, 176400, 352800, 12000, 24000, OpusUtil.SAMPLE_RATE, 96000, DtsUtil.DTS_MAX_RATE_BYTES_PER_SECOND, 384000};
    public static final int[] e = {5, 8, 10, 12};
    public static final int[] f = {6, 9, 12, 15};
    public static final int[] g = {2, 4, 6, 8};
    public static final int[] h = {9, 11, 13, 16};
    public static final int[] i = {5, 8, 10, 12};

    public static int a(byte[] bArr) {
        p3h p3hVarG = g(bArr);
        p3hVarG.n(42);
        return p3hVarG.d(true != p3hVarG.p() ? 8 : 12) + 1;
    }

    public static int b(byte[] bArr) {
        p3h p3hVarG = g(bArr);
        p3hVarG.n(32);
        return f(p3hVarG, i, true) + 1;
    }

    public static erj c(byte[] bArr, String str, String str2, int i2, String str3, zzs zzsVar) {
        p3h p3hVarG = g(bArr);
        p3hVarG.n(60);
        int i3 = a[p3hVarG.d(6)];
        int i4 = b[p3hVarG.d(4)];
        int iD = p3hVarG.d(5);
        int i5 = iD >= 29 ? -1 : (c[iD] * 1000) / 2;
        p3hVarG.n(10);
        int i6 = i3 + (p3hVarG.d(2) > 0 ? 1 : 0);
        gpj gpjVar = new gpj();
        gpjVar.o(str);
        gpjVar.e(MimeTypes.VIDEO_MP2T);
        gpjVar.E(MimeTypes.AUDIO_DTS);
        gpjVar.a(i5);
        gpjVar.b(i6);
        gpjVar.F(i4);
        gpjVar.h(null);
        gpjVar.s(str2);
        gpjVar.C(i2);
        return gpjVar.K();
    }

    public static u8e d(byte[] bArr) throws zzaz {
        int iD;
        int i2;
        int iD2;
        long jP;
        int i3;
        p3h p3hVarG = g(bArr);
        p3hVarG.n(40);
        int iD3 = p3hVarG.d(2);
        boolean zP = p3hVarG.p();
        int i4 = true != zP ? 16 : 20;
        p3hVarG.n(true != zP ? 8 : 12);
        int iD4 = p3hVarG.d(i4) + 1;
        boolean zP2 = p3hVarG.p();
        int i5 = 0;
        if (zP2) {
            iD = p3hVarG.d(2);
            int iD5 = p3hVarG.d(3) + 1;
            if (p3hVarG.p()) {
                p3hVarG.n(36);
            }
            int iD6 = p3hVarG.d(3) + 1;
            int iD7 = p3hVarG.d(3) + 1;
            if (iD6 != 1 || iD7 != 1) {
                throw zzaz.zzc("Multiple audio presentations or assets not supported");
            }
            int i6 = iD3 + 1;
            int iD8 = p3hVarG.d(i6);
            for (int i7 = 0; i7 < i6; i7++) {
                if (((iD8 >> i7) & 1) == 1) {
                    p3hVarG.n(8);
                }
            }
            int i8 = iD5 * 512;
            if (p3hVarG.p()) {
                p3hVarG.n(2);
                int iD9 = (p3hVarG.d(2) + 1) << 2;
                int iD10 = p3hVarG.d(2) + 1;
                while (i5 < iD10) {
                    p3hVarG.n(iD9);
                    i5++;
                }
            }
            i5 = i8;
        } else {
            iD = -1;
        }
        p3hVarG.n(i4);
        p3hVarG.n(12);
        if (zP2) {
            if (p3hVarG.p()) {
                p3hVarG.n(4);
            }
            if (p3hVarG.p()) {
                p3hVarG.n(24);
            }
            if (p3hVarG.p()) {
                p3hVarG.o(p3hVarG.d(10) + 1);
            }
            p3hVarG.n(5);
            int i9 = d[p3hVarG.d(4)];
            iD2 = p3hVarG.d(8) + 1;
            i2 = i9;
        } else {
            i2 = -2147483647;
            iD2 = -1;
        }
        if (zP2) {
            if (iD == 0) {
                i3 = 32000;
            } else if (iD == 1) {
                i3 = 44100;
            } else {
                if (iD != 2) {
                    throw zzaz.zza("Unsupported reference clock code in DTS HD header: " + iD, null);
                }
                i3 = OpusUtil.SAMPLE_RATE;
            }
            jP = kfh.P(i5, 1000000L, i3, RoundingMode.DOWN);
        } else {
            jP = C.TIME_UNSET;
        }
        return new u8e(MimeTypes.AUDIO_DTS_EXPRESS, iD2, i2, iD4, jP, 0, null);
    }

    public static u8e e(byte[] bArr, AtomicInteger atomicInteger) throws zzaz {
        long jP;
        int iD;
        int i2;
        int i3;
        p3h p3hVarG = g(bArr);
        int iD2 = p3hVarG.d(32);
        int iF = f(p3hVarG, e, true);
        int i4 = iF + 1;
        char c2 = iD2 == 1078008818 ? (char) 1 : (char) 0;
        if (c2 == 0) {
            jP = C.TIME_UNSET;
            iD = C.RATE_UNSET_INT;
        } else {
            if (!p3hVarG.p()) {
                throw zzaz.zzc("Only supports full channel mask-based audio presentation");
            }
            int i5 = iF - 1;
            if (((bArr[iF] & 255) | ((char) (bArr[i5] << 8))) != kfh.z(bArr, 0, i5, 65535)) {
                throw zzaz.zza("CRC check failed", null);
            }
            int iD3 = p3hVarG.d(2);
            if (iD3 == 0) {
                i2 = 512;
            } else if (iD3 == 1) {
                i2 = 480;
            } else {
                if (iD3 != 2) {
                    throw zzaz.zza("Unsupported base duration index in DTS UHD header: " + iD3, null);
                }
                i2 = RendererCapabilities.DECODER_SUPPORT_MASK;
            }
            int iD4 = p3hVarG.d(3) + 1;
            int iD5 = p3hVarG.d(2);
            if (iD5 == 0) {
                i3 = 32000;
            } else if (iD5 == 1) {
                i3 = 44100;
            } else {
                if (iD5 != 2) {
                    throw zzaz.zza("Unsupported clock rate index in DTS UHD header: " + iD5, null);
                }
                i3 = OpusUtil.SAMPLE_RATE;
            }
            if (p3hVarG.p()) {
                p3hVarG.n(36);
            }
            iD = (1 << p3hVarG.d(2)) * i3;
            jP = kfh.P(i2 * iD4, 1000000L, i3, RoundingMode.DOWN);
        }
        int i6 = iD;
        long j = jP;
        int iF2 = 0;
        for (char c3 = 0; c3 < c2; c3 = 1) {
            iF2 += f(p3hVarG, f, true);
        }
        for (int i7 = 0; i7 <= 0; i7++) {
            if (c2 != 0) {
                atomicInteger.set(f(p3hVarG, g, true));
            }
            iF2 += atomicInteger.get() != 0 ? f(p3hVarG, h, true) : 0;
        }
        return new u8e(MimeTypes.AUDIO_DTS_X, 2, i6, i4 + iF2, j, 0, null);
    }

    public static int f(p3h p3hVar, int[] iArr, boolean z) {
        int i2 = 0;
        for (int i3 = 0; i3 < 3 && p3hVar.p(); i3++) {
            i2++;
        }
        int i4 = 0;
        for (int i5 = 0; i5 < i2; i5++) {
            i4 += 1 << iArr[i5];
        }
        return i4 + p3hVar.d(iArr[i2]);
    }

    public static p3h g(byte[] bArr) {
        byte b2 = bArr[0];
        if (b2 == 127 || b2 == 100 || b2 == 64 || b2 == 113) {
            return new p3h(bArr, bArr.length);
        }
        byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
        byte b3 = bArrCopyOf[0];
        if (b3 == -2 || b3 == -1 || b3 == 37 || b3 == -14 || b3 == -24) {
            for (int i2 = 0; i2 < bArrCopyOf.length - 1; i2 += 2) {
                byte b4 = bArrCopyOf[i2];
                int i3 = i2 + 1;
                bArrCopyOf[i2] = bArrCopyOf[i3];
                bArrCopyOf[i3] = b4;
            }
        }
        int length = bArrCopyOf.length;
        p3h p3hVar = new p3h(bArrCopyOf, length);
        if (bArrCopyOf[0] == 31) {
            p3h p3hVar2 = new p3h(bArrCopyOf, length);
            while (p3hVar2.a() >= 16) {
                p3hVar2.n(2);
                p3hVar.g(p3hVar2.d(14), 14);
            }
        }
        p3hVar.k(bArrCopyOf, bArrCopyOf.length);
        return p3hVar;
    }
}
