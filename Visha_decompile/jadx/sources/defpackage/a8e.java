package defpackage;

import androidx.media3.common.MimeTypes;
import androidx.media3.extractor.OpusUtil;
import com.google.android.gms.internal.ads.zzaz;
import com.google.android.gms.internal.ads.zzs;

public abstract class a8e {
    public static final int[] a = {2002, 2000, 1920, 1601, 1600, 1001, 1000, 960, 800, 800, 480, 400, 400, 2048};

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:144:0x01fe  */
    /* JADX WARN: Code duplicated, block: B:146:0x0204  */
    /* JADX WARN: Code duplicated, block: B:153:0x0218  */
    /* JADX WARN: Code duplicated, block: B:155:0x022b A[LOOP:2: B:154:0x0229->B:155:0x022b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:158:0x0240  */
    /* JADX WARN: Code duplicated, block: B:160:0x0249  */
    /* JADX WARN: Code duplicated, block: B:161:0x024e  */
    /* JADX WARN: Code duplicated, block: B:165:0x0259  */
    /* JADX WARN: Code duplicated, block: B:168:0x025f  */
    /* JADX WARN: Code duplicated, block: B:170:0x0275  */
    /* JADX WARN: Instruction removed from duplicated block: B:168:0x025f, please report this as an issue */
    public static erj a(u4h u4hVar, String str, String str2, zzs zzsVar) throws zzaz {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        boolean zP;
        int iD;
        int iD2;
        int iA;
        boolean z;
        int iD3;
        int i7;
        int i8;
        int i9;
        int iA2;
        int iD4;
        int i10;
        p3h p3hVar = new p3h();
        p3hVar.j(u4hVar);
        int iA3 = p3hVar.a();
        int iD5 = p3hVar.d(3);
        if (iD5 > 1) {
            throw zzaz.zzc("Unsupported AC-4 DSI version: " + iD5);
        }
        int iD6 = p3hVar.d(7);
        int i11 = true != p3hVar.p() ? 44100 : OpusUtil.SAMPLE_RATE;
        p3hVar.n(4);
        int iD7 = p3hVar.d(9);
        if (iD6 > 1) {
            if (iD5 == 0) {
                throw zzaz.zzc("Invalid AC-4 DSI version: 0");
            }
            if (p3hVar.p()) {
                p3hVar.n(16);
                if (p3hVar.p()) {
                    p3hVar.n(128);
                }
            }
        }
        if (iD5 == 1) {
            if (!g(p3hVar)) {
                throw zzaz.zzc("Invalid AC-4 DSI bitrate.");
            }
            p3hVar.f();
        }
        x7e x7eVar = new x7e(null);
        int i12 = 0;
        while (true) {
            if (i12 < iD7) {
                if (iD5 == 0) {
                    zP = p3hVar.p();
                    iD = p3hVar.d(5);
                    iD2 = p3hVar.d(5);
                    iA = 0;
                    z = false;
                    iD3 = 0;
                } else {
                    int iD8 = p3hVar.d(8);
                    iD3 = p3hVar.d(8);
                    if (iD3 == 255) {
                        iD3 = p3hVar.d(16) + 255;
                    }
                    if (iD8 > 2) {
                        p3hVar.n(iD3 * 8);
                        i12++;
                    } else {
                        iA = (iA3 - p3hVar.a()) / 8;
                        int iD9 = p3hVar.d(5);
                        z = iD9 == 31;
                        iD2 = iD8;
                        iD = iD9;
                        zP = false;
                    }
                }
                if (zP || z || iD != 6) {
                    x7eVar.f = p3hVar.d(3);
                    if (p3hVar.p()) {
                        p3hVar.n(5);
                    }
                    p3hVar.n(2);
                    if (iD5 == 1) {
                        if (iD2 == 1) {
                            p3hVar.n(2);
                        } else {
                            if (iD2 == 2) {
                                iD2 = 2;
                                p3hVar.n(2);
                            }
                            if (iD2 > 0) {
                                if (!p3hVar.p() && !g(p3hVar)) {
                                    throw zzaz.zzc("Can't parse bitrate DSI.");
                                }
                                if (p3hVar.p()) {
                                    p3hVar.f();
                                    p3hVar.o(p3hVar.d(16));
                                    iD4 = p3hVar.d(5);
                                    for (i10 = 0; i10 < iD4; i10++) {
                                        p3hVar.n(3);
                                        p3hVar.n(8);
                                    }
                                }
                            }
                            i = 3;
                            i5 = 8;
                            p3hVar.f();
                            if (iD5 == 1) {
                                iA2 = ((iA3 - p3hVar.a()) / 8) - iA;
                                if (iD3 < iA2) {
                                    throw zzaz.zzc("pres_bytes is smaller than presentation bytes read.");
                                }
                                p3hVar.o(iD3 - iA2);
                            }
                            if (x7eVar.a) {
                                i3 = -1;
                                if (x7eVar.b == -1) {
                                    throw zzaz.zzc("Can't determine channel mode of presentation " + i12);
                                }
                            } else {
                                i3 = -1;
                            }
                        }
                    }
                    p3hVar.n(5);
                    p3hVar.n(10);
                    if (iD5 == 1) {
                        if (iD2 > 0) {
                            x7eVar.a = p3hVar.p();
                        }
                        if (x7eVar.a) {
                            if (iD2 != 1) {
                                if (iD2 == 2) {
                                    i9 = 2;
                                } else {
                                    i7 = 2;
                                    i9 = iD2;
                                }
                                p3hVar.n(24);
                                i8 = 1;
                            } else {
                                i9 = 1;
                            }
                            int iD10 = p3hVar.d(5);
                            if (iD10 >= 0 && iD10 <= 15) {
                                x7eVar.b = iD10;
                            }
                            if (iD10 < 11 || iD10 > 14) {
                                i7 = 2;
                            } else {
                                x7eVar.d = p3hVar.p();
                                i7 = 2;
                                x7eVar.e = p3hVar.d(2);
                            }
                            p3hVar.n(24);
                            i8 = 1;
                        } else {
                            i7 = 2;
                            i8 = 1;
                            i9 = iD2;
                        }
                        if (iD2 == i8 || iD2 == i7) {
                            if (p3hVar.p() && p3hVar.p()) {
                                p3hVar.n(i7);
                            }
                            if (p3hVar.p()) {
                                p3hVar.m();
                                int i13 = 8;
                                int iD11 = p3hVar.d(8);
                                int i14 = 0;
                                while (i14 < iD11) {
                                    p3hVar.n(i13);
                                    i14++;
                                    i13 = 8;
                                }
                            }
                        }
                        iD2 = i9;
                    }
                    if (zP || z) {
                        i2 = 2;
                        if (iD2 == 0) {
                            d(p3hVar, x7eVar);
                            iD2 = 0;
                        } else {
                            e(p3hVar, x7eVar);
                        }
                    } else {
                        p3hVar.m();
                        if (iD == 0 || iD == 1 || iD == 2) {
                            if (iD2 == 0) {
                                i2 = 2;
                                for (int i15 = 0; i15 < 2; i15++) {
                                    d(p3hVar, x7eVar);
                                }
                                iD2 = 0;
                            } else {
                                i2 = 2;
                                for (int i16 = 0; i16 < 2; i16++) {
                                    e(p3hVar, x7eVar);
                                }
                            }
                        } else if (iD != 3 && iD != 4) {
                            if (iD != 5) {
                                int iD12 = p3hVar.d(7);
                                for (int i17 = 0; i17 < iD12; i17++) {
                                    p3hVar.n(8);
                                }
                            } else if (iD2 == 0) {
                                d(p3hVar, x7eVar);
                                i2 = 2;
                                iD2 = 0;
                            } else {
                                int iD13 = p3hVar.d(3);
                                for (int i18 = 0; i18 < iD13 + 2; i18++) {
                                    e(p3hVar, x7eVar);
                                }
                            }
                            i2 = 2;
                        } else if (iD2 == 0) {
                            for (int i19 = 0; i19 < 3; i19++) {
                                d(p3hVar, x7eVar);
                            }
                            i2 = 2;
                            iD2 = 0;
                        } else {
                            int i20 = 0;
                            for (int i21 = 3; i20 < i21; i21 = 3) {
                                e(p3hVar, x7eVar);
                                i20++;
                            }
                            i2 = 2;
                        }
                    }
                    p3hVar.m();
                    if (!p3hVar.p()) {
                        i4 = 7;
                    }
                    if (iD2 > 0) {
                        if (!p3hVar.p()) {
                        }
                        if (p3hVar.p()) {
                            p3hVar.f();
                            p3hVar.o(p3hVar.d(16));
                            iD4 = p3hVar.d(5);
                            while (i10 < iD4) {
                                p3hVar.n(3);
                                p3hVar.n(8);
                            }
                        }
                    }
                    i = 3;
                    i5 = 8;
                    p3hVar.f();
                    if (iD5 == 1) {
                        iA2 = ((iA3 - p3hVar.a()) / 8) - iA;
                        if (iD3 < iA2) {
                            throw zzaz.zzc("pres_bytes is smaller than presentation bytes read.");
                        }
                        p3hVar.o(iD3 - iA2);
                    }
                    if (x7eVar.a) {
                        i3 = -1;
                        if (x7eVar.b == -1) {
                            throw zzaz.zzc("Can't determine channel mode of presentation " + i12);
                        }
                    } else {
                        i3 = -1;
                    }
                } else {
                    i2 = 2;
                }
                i4 = 7;
                int iD14 = p3hVar.d(7);
                for (int i22 = 0; i22 < iD14; i22++) {
                    p3hVar.n(15);
                }
                if (iD2 > 0) {
                    if (!p3hVar.p()) {
                    }
                    if (p3hVar.p()) {
                        p3hVar.f();
                        p3hVar.o(p3hVar.d(16));
                        iD4 = p3hVar.d(5);
                        while (i10 < iD4) {
                            p3hVar.n(3);
                            p3hVar.n(8);
                        }
                    }
                }
                i = 3;
                i5 = 8;
                p3hVar.f();
                if (iD5 == 1) {
                    iA2 = ((iA3 - p3hVar.a()) / 8) - iA;
                    if (iD3 < iA2) {
                        throw zzaz.zzc("pres_bytes is smaller than presentation bytes read.");
                    }
                    p3hVar.o(iD3 - iA2);
                }
                if (x7eVar.a) {
                    i3 = -1;
                    if (x7eVar.b == -1) {
                        throw zzaz.zzc("Can't determine channel mode of presentation " + i12);
                    }
                } else {
                    i3 = -1;
                }
            } else {
                i = 3;
                i2 = 2;
                i3 = -1;
                i4 = 7;
                i5 = 8;
            }
            if (x7eVar.a) {
                int i23 = x7eVar.b;
                boolean z2 = x7eVar.d;
                int i24 = x7eVar.e;
                switch (i23) {
                    case 0:
                        i6 = 11;
                        i2 = 1;
                        break;
                    case 1:
                        i6 = 11;
                        break;
                    case 2:
                        i2 = i;
                        i6 = 11;
                        break;
                    case 3:
                        i2 = 5;
                        i6 = 11;
                        break;
                    case 4:
                        i6 = 11;
                        i2 = 6;
                        break;
                    case 5:
                    case 7:
                    case 9:
                        i2 = i4;
                        i6 = 11;
                        break;
                    case 6:
                    case 8:
                    case 10:
                        i2 = i5;
                        i6 = 11;
                        break;
                    case 11:
                        i6 = 11;
                        i2 = 11;
                        break;
                    case 12:
                        i2 = 12;
                        i6 = 11;
                        break;
                    case 13:
                        i2 = 13;
                        i6 = 11;
                        break;
                    case 14:
                        i6 = 11;
                        i2 = 14;
                        break;
                    case 15:
                        i6 = 11;
                        i2 = 24;
                        break;
                    default:
                        i2 = i3;
                        i6 = 11;
                        break;
                }
                if (i23 == i6 || i23 == 12 || i23 == 13 || i23 == 14) {
                    if (!z2) {
                        i2 -= 2;
                    }
                    if (i24 == 0) {
                        i2 -= 4;
                    } else if (i24 == 1) {
                        i2 -= 2;
                    }
                }
            } else {
                i2 = x7eVar.c + 1;
                if (x7eVar.f == 4 && i2 == 17) {
                    i2 = 21;
                }
            }
            if (i2 <= 0) {
                throw zzaz.zzc("Can't determine channel count of presentation.");
            }
            gpj gpjVar = new gpj();
            gpjVar.o(str);
            gpjVar.E(MimeTypes.AUDIO_AC4);
            gpjVar.b(i2);
            gpjVar.F(i11);
            gpjVar.h(zzsVar);
            gpjVar.s(str2);
            return gpjVar.K();
        }
    }

    /* JADX WARN: Code duplicated, block: B:44:0x0092  */
    /* JADX WARN: Code duplicated, block: B:49:0x009b  */
    public static y7e b(p3h p3hVar) {
        int i;
        int i2;
        int iD;
        int iD2 = p3hVar.d(16);
        int iD3 = p3hVar.d(16);
        if (iD3 == 65535) {
            iD3 = p3hVar.d(24);
            i = 7;
        } else {
            i = 4;
        }
        int i3 = iD3 + i;
        if (iD2 == 44097) {
            i3 += 2;
        }
        int i4 = i3;
        int iD4 = p3hVar.d(2);
        int i5 = 0;
        if (iD4 == 3) {
            int i6 = 0;
            while (true) {
                iD = i6 + p3hVar.d(2);
                if (!p3hVar.p()) {
                    break;
                }
                i6 = (iD + 1) << 2;
            }
            iD4 = iD + 3;
        }
        int i7 = iD4;
        int iD5 = p3hVar.d(10);
        if (p3hVar.p() && p3hVar.d(3) > 0) {
            p3hVar.n(2);
        }
        int i8 = true != p3hVar.p() ? 44100 : 48000;
        int iD6 = p3hVar.d(4);
        if (i8 == 44100 && iD6 == 13) {
            i2 = a[13];
        } else {
            if (i8 == 48000 && iD6 < 14) {
                i5 = a[iD6];
                int i9 = iD5 % 5;
                if (i9 == 1) {
                    if (iD6 != 3 || iD6 == 8) {
                        i5++;
                    }
                } else if (i9 != 2) {
                    if (i9 != 3) {
                        if (i9 == 4 && (iD6 == 3 || iD6 == 8 || iD6 == 11)) {
                            i5++;
                        }
                    } else if (iD6 != 3) {
                        i5++;
                    } else {
                        i5++;
                    }
                } else if (iD6 == 8 || iD6 == 11) {
                    i5++;
                }
            }
            i2 = i5;
        }
        return new y7e(i7, 2, i8, i4, i2, null);
    }

    public static void c(int i, u4h u4hVar) {
        u4hVar.i(7);
        byte[] bArrN = u4hVar.n();
        bArrN[0] = -84;
        bArrN[1] = 64;
        bArrN[2] = -1;
        bArrN[3] = -1;
        bArrN[4] = (byte) ((i >> 16) & 255);
        bArrN[5] = (byte) ((i >> 8) & 255);
        bArrN[6] = (byte) (i & 255);
    }

    public static void d(p3h p3hVar, x7e x7eVar) throws zzaz {
        int iD = p3hVar.d(5);
        p3hVar.n(2);
        if (p3hVar.p()) {
            p3hVar.n(5);
        }
        if (iD >= 7 && iD <= 10) {
            p3hVar.m();
        }
        if (p3hVar.p()) {
            int iD2 = p3hVar.d(3);
            if (x7eVar.b == -1 && iD >= 0 && iD <= 15 && (iD2 == 0 || iD2 == 1)) {
                x7eVar.b = iD;
            }
            if (p3hVar.p()) {
                f(p3hVar);
            }
        }
    }

    public static void e(p3h p3hVar, x7e x7eVar) throws zzaz {
        p3hVar.n(2);
        boolean zP = p3hVar.p();
        int iD = p3hVar.d(8);
        for (int i = 0; i < iD; i++) {
            p3hVar.n(2);
            if (p3hVar.p()) {
                p3hVar.n(5);
            }
            if (zP) {
                p3hVar.n(24);
            } else {
                if (p3hVar.p()) {
                    if (!p3hVar.p()) {
                        p3hVar.n(4);
                    }
                    x7eVar.c = p3hVar.d(6) + 1;
                }
                p3hVar.n(4);
            }
        }
        if (p3hVar.p()) {
            p3hVar.n(3);
            if (p3hVar.p()) {
                f(p3hVar);
            }
        }
    }

    public static void f(p3h p3hVar) throws zzaz {
        int iD = p3hVar.d(6);
        if (iD < 2 || iD > 42) {
            throw zzaz.zzc(String.format("Invalid language tag bytes number: %d. Must be between 2 and 42.", Integer.valueOf(iD)));
        }
        p3hVar.n(iD * 8);
    }

    public static boolean g(p3h p3hVar) {
        if (p3hVar.a() < 66) {
            return false;
        }
        p3hVar.n(66);
        return true;
    }
}
