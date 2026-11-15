package defpackage;

import com.google.android.gms.internal.ads.zzaz;

public abstract class j9e {
    public static int a(u4h u4hVar, int i) {
        switch (i) {
            case 1:
                return 192;
            case 2:
            case 3:
            case 4:
            case 5:
                return 576 << (i - 2);
            case 6:
                return u4hVar.G() + 1;
            case 7:
                return u4hVar.K() + 1;
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return 256 << (i - 8);
            default:
                return -1;
        }
    }

    public static long b(d9e d9eVar, n9e n9eVar) throws zzaz {
        d9eVar.zzj();
        d9eVar.zzg(1);
        byte[] bArr = new byte[1];
        d9eVar.i(bArr, 0, 1);
        int i = bArr[0] & 1;
        boolean z = 1 == i;
        d9eVar.zzg(2);
        int i2 = 1 != i ? 6 : 7;
        u4h u4hVar = new u4h(i2);
        u4hVar.k(g9e.a(d9eVar, u4hVar.n(), 0, i2));
        d9eVar.zzj();
        i9e i9eVar = new i9e();
        if (d(u4hVar, n9eVar, z, i9eVar)) {
            return i9eVar.a;
        }
        throw zzaz.zza(null, null);
    }

    /* JADX WARN: Code duplicated, block: B:50:0x009b  */
    /* JADX WARN: Code duplicated, block: B:52:0x00ae A[RETURN] */
    public static boolean c(u4h u4hVar, n9e n9eVar, int i, i9e i9eVar) {
        int iA;
        int iW = u4hVar.w();
        long jO = u4hVar.O();
        long j = jO >>> 16;
        if (j != i) {
            return false;
        }
        boolean z = (j & 1) == 1;
        long j2 = jO >> 12;
        long j3 = jO >> 8;
        long j4 = jO >> 4;
        long j5 = jO >> 1;
        long j6 = jO & 1;
        int i2 = (int) (j4 & 15);
        if (i2 > 7 ? !(i2 > 10 || n9eVar.g != 2) : i2 == n9eVar.g - 1) {
            int i3 = (int) (j5 & 7);
            if ((i3 == 0 || i3 == n9eVar.i) && j6 != 1 && d(u4hVar, n9eVar, z, i9eVar) && (iA = a(u4hVar, (int) (j2 & 15))) != -1 && iA <= n9eVar.b) {
                int i4 = n9eVar.e;
                int i5 = (int) (j3 & 15);
                if (i5 != 0) {
                    if (i5 <= 11) {
                        if (i5 == n9eVar.f) {
                            if (u4hVar.G() == kfh.B(u4hVar.n(), iW, u4hVar.w() - 1, 0)) {
                                return true;
                            }
                        }
                    } else if (i5 == 12) {
                        if (u4hVar.G() * 1000 == i4) {
                            if (u4hVar.G() == kfh.B(u4hVar.n(), iW, u4hVar.w() - 1, 0)) {
                                return true;
                            }
                        }
                    } else if (i5 <= 14) {
                        int iK = u4hVar.K();
                        if (i5 == 14) {
                            iK *= 10;
                        }
                        if (iK == i4) {
                            if (u4hVar.G() == kfh.B(u4hVar.n(), iW, u4hVar.w() - 1, 0)) {
                                return true;
                            }
                        }
                    }
                } else if (u4hVar.G() == kfh.B(u4hVar.n(), iW, u4hVar.w() - 1, 0)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean d(u4h u4hVar, n9e n9eVar, boolean z, i9e i9eVar) {
        try {
            long jR = u4hVar.R();
            if (!z) {
                jR *= (long) n9eVar.b;
            }
            i9eVar.a = jR;
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }
}
