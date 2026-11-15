package defpackage;

import androidx.media3.extractor.AacUtil;
import androidx.media3.extractor.MpegAudioUtil;
import androidx.media3.extractor.OpusUtil;
import com.google.android.gms.internal.ads.zzaz;
import com.google.android.material.internal.ViewUtils;

public abstract class cke {
    public static ake a(p3h p3hVar) throws zzaz {
        int iD;
        int i;
        char c;
        int i2;
        int iD2;
        char c2;
        int iD3 = p3hVar.d(8);
        int i3 = 5;
        int iD4 = p3hVar.d(5);
        if (iD4 != 31) {
            switch (iD4) {
                case 0:
                    iD = 96000;
                    break;
                case 1:
                    iD = 88200;
                    break;
                case 2:
                    iD = 64000;
                    break;
                case 3:
                    iD = OpusUtil.SAMPLE_RATE;
                    break;
                case 4:
                    iD = 44100;
                    break;
                case 5:
                    iD = 32000;
                    break;
                case 6:
                    iD = 24000;
                    break;
                case 7:
                    iD = 22050;
                    break;
                case 8:
                    iD = AacUtil.AAC_HE_V1_MAX_RATE_BYTES_PER_SECOND;
                    break;
                case 9:
                    iD = 12000;
                    break;
                case 10:
                    iD = 11025;
                    break;
                case 11:
                    iD = 8000;
                    break;
                case 12:
                    iD = 7350;
                    break;
                case 13:
                case 14:
                default:
                    throw zzaz.zzc("Unsupported sampling rate index " + iD4);
                case 15:
                    iD = 57600;
                    break;
                case 16:
                    iD = 51200;
                    break;
                case 17:
                    iD = MpegAudioUtil.MAX_RATE_BYTES_PER_SECOND;
                    break;
                case 18:
                    iD = 38400;
                    break;
                case 19:
                    iD = 34150;
                    break;
                case 20:
                    iD = 28800;
                    break;
                case 21:
                    iD = 25600;
                    break;
                case 22:
                    iD = 20000;
                    break;
                case 23:
                    iD = 19200;
                    break;
                case 24:
                    iD = 17075;
                    break;
                case 25:
                    iD = 14400;
                    break;
                case 26:
                    iD = 12800;
                    break;
                case 27:
                    iD = 9600;
                    break;
            }
        } else {
            iD = p3hVar.d(24);
        }
        int iD5 = p3hVar.d(3);
        int i4 = 1;
        if (iD5 == 0) {
            i = ViewUtils.EDGE_TO_EDGE_FLAGS;
        } else if (iD5 == 1) {
            i = 1024;
        } else if (iD5 == 2 || iD5 == 3) {
            i = 2048;
        } else {
            if (iD5 != 4) {
                throw zzaz.zzc("Unsupported coreSbrFrameLengthIndex " + iD5);
            }
            i = 4096;
        }
        if (iD5 == 0 || iD5 == 1) {
            c = 0;
        } else if (iD5 == 2) {
            c = 2;
        } else if (iD5 == 3) {
            c = 3;
        } else {
            if (iD5 != 4) {
                throw zzaz.zzc("Unsupported coreSbrFrameLengthIndex " + iD5);
            }
            c = 1;
        }
        p3hVar.n(2);
        e(p3hVar);
        int iD6 = p3hVar.d(5);
        int i5 = 0;
        int iC = 0;
        while (true) {
            int i6 = 16;
            if (i5 < iD6 + 1) {
                int iD7 = p3hVar.d(3);
                iC += c(p3hVar, 5, 8, 16) + 1;
                if ((iD7 == 0 || iD7 == 2) && p3hVar.p()) {
                    e(p3hVar);
                }
                i5++;
            } else {
                int iC2 = c(p3hVar, 4, 8, 16) + 1;
                p3hVar.m();
                int i7 = 0;
                while (true) {
                    double d = 2.0d;
                    if (i7 >= iC2) {
                        int i8 = iD3;
                        byte[] bArr = null;
                        if (p3hVar.p()) {
                            int iC3 = c(p3hVar, 2, 4, 8) + 1;
                            for (int i9 = 0; i9 < iC3; i9++) {
                                int iC4 = c(p3hVar, 4, 8, 16);
                                int iC5 = c(p3hVar, 4, 8, 16);
                                if (iC4 == 7) {
                                    int iD8 = p3hVar.d(4) + 1;
                                    p3hVar.n(4);
                                    byte[] bArr2 = new byte[iD8];
                                    for (int i10 = 0; i10 < iD8; i10++) {
                                        bArr2[i10] = (byte) p3hVar.d(8);
                                    }
                                    bArr = bArr2;
                                } else {
                                    p3hVar.n(iC5 * 8);
                                }
                            }
                        }
                        byte[] bArr3 = bArr;
                        switch (iD) {
                            case 14700:
                            case AacUtil.AAC_HE_V1_MAX_RATE_BYTES_PER_SECOND:
                                d = 3.0d;
                                break;
                            case 22050:
                            case 24000:
                                break;
                            case 29400:
                            case 32000:
                            case 58800:
                            case 64000:
                                d = 1.5d;
                                break;
                            case 44100:
                            case OpusUtil.SAMPLE_RATE:
                            case 88200:
                            case 96000:
                                d = 1.0d;
                                break;
                            default:
                                throw zzaz.zzc("Unsupported sampling rate " + iD);
                        }
                        return new ake(i8, (int) (((double) iD) * d), (int) (((double) i) * d), bArr3, null);
                    }
                    int iD9 = p3hVar.d(2);
                    if (iD9 == 0) {
                        i2 = iD3;
                        f(p3hVar);
                        if (c > 0) {
                            d(p3hVar);
                        }
                    } else if (iD9 != i4) {
                        if (iD9 == 3) {
                            c(p3hVar, 4, 8, i6);
                            int iC6 = c(p3hVar, 4, 8, i6);
                            if (p3hVar.p()) {
                                c(p3hVar, 8, i6, 0);
                            }
                            p3hVar.m();
                            if (iC6 > 0) {
                                p3hVar.n(iC6 * 8);
                            }
                        }
                        i2 = iD3;
                    } else {
                        if (f(p3hVar)) {
                            p3hVar.m();
                        }
                        if (c > 0) {
                            d(p3hVar);
                            iD2 = p3hVar.d(2);
                            c2 = c;
                        } else {
                            iD2 = 0;
                            c2 = 0;
                        }
                        if (iD2 > 0) {
                            p3hVar.n(6);
                            int iD10 = p3hVar.d(2);
                            p3hVar.n(4);
                            if (p3hVar.p()) {
                                p3hVar.n(i3);
                            }
                            if (iD2 == 2 || iD2 == 3) {
                                p3hVar.n(6);
                            }
                            if (iD10 == 2) {
                                p3hVar.m();
                            }
                        }
                        i2 = iD3;
                        int iFloor = ((int) Math.floor(Math.log(iC - 1) / Math.log(2.0d))) + 1;
                        int iD11 = p3hVar.d(2);
                        if (iD11 > 0 && p3hVar.p()) {
                            p3hVar.n(iFloor);
                        }
                        if (p3hVar.p()) {
                            p3hVar.n(iFloor);
                        }
                        if (c2 == 0 && iD11 == 0) {
                            p3hVar.m();
                        }
                    }
                    i7++;
                    iD3 = i2;
                    i3 = 5;
                    i4 = 1;
                    i6 = 16;
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0042  */
    public static boolean b(p3h p3hVar, zje zjeVar) throws zzaz {
        long jE;
        p3hVar.b();
        int iC = c(p3hVar, 3, 8, 8);
        zjeVar.a = iC;
        if (iC == -1) {
            return false;
        }
        n7g.d(Math.max(Math.max(2, 8), 32) <= 63);
        o6i.a(o6i.a(3L, 255L), 4294967296L);
        if (p3hVar.a() < 2) {
            jE = -1;
        } else {
            jE = p3hVar.e(2);
            if (jE == 3) {
                if (p3hVar.a() < 8) {
                    jE = -1;
                } else {
                    long jE2 = p3hVar.e(8);
                    long j = 3 + jE2;
                    if (jE2 != 255) {
                        jE = j;
                    } else if (p3hVar.a() < 32) {
                        jE = -1;
                    } else {
                        jE = p3hVar.e(32) + j;
                    }
                }
            }
        }
        zjeVar.b = jE;
        if (jE == -1) {
            return false;
        }
        if (jE > 16) {
            throw zzaz.zzc("Contains sub-stream with an invalid packet label " + jE);
        }
        if (jE == 0) {
            int i = zjeVar.a;
            if (i == 1) {
                throw zzaz.zza("Mpegh3daConfig packet with invalid packet label 0", null);
            }
            if (i == 2) {
                throw zzaz.zza("Mpegh3daFrame packet with invalid packet label 0", null);
            }
            if (i == 17) {
                throw zzaz.zza("AudioTruncation packet with invalid packet label 0", null);
            }
        }
        int iC2 = c(p3hVar, 11, 24, 24);
        zjeVar.c = iC2;
        return iC2 != -1;
    }

    public static int c(p3h p3hVar, int i, int i2, int i3) {
        n7g.d(Math.max(Math.max(i, i2), i3) <= 31);
        int i4 = (1 << i) - 1;
        int i5 = (1 << i2) - 1;
        m6i.a(m6i.a(i4, i5), 1 << i3);
        if (p3hVar.a() < i) {
            return -1;
        }
        int iD = p3hVar.d(i);
        if (iD != i4) {
            return iD;
        }
        if (p3hVar.a() < i2) {
            return -1;
        }
        int iD2 = p3hVar.d(i2);
        int i6 = iD + iD2;
        if (iD2 != i5) {
            return i6;
        }
        if (p3hVar.a() < i3) {
            return -1;
        }
        return i6 + p3hVar.d(i3);
    }

    public static void d(p3h p3hVar) {
        p3hVar.n(3);
        p3hVar.n(8);
        boolean zP = p3hVar.p();
        boolean zP2 = p3hVar.p();
        if (zP) {
            p3hVar.n(5);
        }
        if (zP2) {
            p3hVar.n(6);
        }
    }

    public static void e(p3h p3hVar) {
        int iD;
        int iD2 = p3hVar.d(2);
        if (iD2 == 0) {
            p3hVar.n(6);
            return;
        }
        int iC = c(p3hVar, 5, 8, 16) + 1;
        if (iD2 == 1) {
            p3hVar.n(iC * 7);
            return;
        }
        if (iD2 == 2) {
            boolean zP = p3hVar.p();
            int i = true != zP ? 5 : 1;
            int i2 = true == zP ? 7 : 5;
            int i3 = true == zP ? 8 : 6;
            int i4 = 0;
            while (i4 < iC) {
                if (p3hVar.p()) {
                    p3hVar.n(7);
                    iD = 0;
                } else {
                    if (p3hVar.d(2) == 3 && p3hVar.d(i2) * i != 0) {
                        p3hVar.m();
                    }
                    iD = p3hVar.d(i3) * i;
                    if (iD != 0 && iD != 180) {
                        p3hVar.m();
                    }
                    p3hVar.m();
                }
                if (iD != 0 && iD != 180 && p3hVar.p()) {
                    i4++;
                }
                i4++;
            }
        }
    }

    public static boolean f(p3h p3hVar) {
        p3hVar.n(3);
        boolean zP = p3hVar.p();
        if (zP) {
            p3hVar.n(13);
        }
        return zP;
    }
}
