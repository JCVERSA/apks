package defpackage;

import androidx.media3.extractor.AacUtil;
import androidx.media3.extractor.OpusUtil;
import com.google.android.gms.internal.ads.zzaz;

public abstract class p7e {
    public static final int[] a = {96000, 88200, 64000, OpusUtil.SAMPLE_RATE, 44100, 32000, 24000, 22050, AacUtil.AAC_HE_V1_MAX_RATE_BYTES_PER_SECOND, 12000, 11025, 8000, 7350};
    public static final int[] b = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    public static n7e a(byte[] bArr) {
        return b(new p3h(bArr, bArr.length), false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x00b4, code lost:
    
        if (r11 != 3) goto L58;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static n7e b(p3h p3hVar, boolean z) throws zzaz {
        int iC = c(p3hVar);
        int iD = d(p3hVar);
        int iD2 = p3hVar.d(4);
        String str = "mp4a.40." + iC;
        int i = 22;
        if (iC == 5 || iC == 29) {
            iD = d(p3hVar);
            iC = c(p3hVar);
            if (iC == 22) {
                iD2 = p3hVar.d(4);
            }
        }
        if (z) {
            int i2 = 3;
            if (iC != 1 && iC != 2 && iC != 3 && iC != 4 && iC != 6 && iC != 7 && iC != 17) {
                switch (iC) {
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                        break;
                    default:
                        throw zzaz.zzc("Unsupported audio object type: " + iC);
                }
            }
            if (p3hVar.p()) {
                zrg.f("AacUtil", "Unexpected frameLengthFlag = 1");
            }
            if (p3hVar.p()) {
                p3hVar.n(14);
            }
            boolean zP = p3hVar.p();
            if (iD2 == 0) {
                throw new UnsupportedOperationException();
            }
            if (iC == 6) {
                p3hVar.n(3);
            } else if (iC == 20) {
                iC = 20;
                p3hVar.n(3);
            }
            if (zP) {
                if (iC == 22) {
                    p3hVar.n(16);
                } else {
                    i = iC;
                }
                if (i == 17 || i == 19 || i == 20 || i == 23) {
                    p3hVar.n(3);
                }
                p3hVar.n(1);
            }
            switch (iC) {
                case 17:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                    int iD3 = p3hVar.d(2);
                    if (iD3 == 2) {
                        i2 = iD3;
                    }
                    throw zzaz.zzc("Unsupported epConfig: " + i2);
            }
        }
        int i3 = b[iD2];
        if (i3 != -1) {
            return new n7e(iD, i3, str, null);
        }
        throw zzaz.zza(null, null);
    }

    public static int c(p3h p3hVar) {
        int iD = p3hVar.d(5);
        return iD == 31 ? p3hVar.d(6) + 32 : iD;
    }

    public static int d(p3h p3hVar) throws zzaz {
        int iD = p3hVar.d(4);
        if (iD == 15) {
            if (p3hVar.a() >= 24) {
                return p3hVar.d(24);
            }
            throw zzaz.zza("AAC header insufficient data", null);
        }
        if (iD < 13) {
            return a[iD];
        }
        throw zzaz.zza("AAC header wrong Sampling Frequency Index", null);
    }
}
