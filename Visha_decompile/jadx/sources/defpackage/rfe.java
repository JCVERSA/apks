package defpackage;

import androidx.media3.container.Mp4Box;
import androidx.media3.extractor.mp4.Sniffer;

public abstract class rfe {
    public static final int[] a = {1769172845, 1769172786, 1769172787, 1769172788, 1769172789, 1769172790, 1769172793, Mp4Box.TYPE_avc1, Mp4Box.TYPE_hvc1, Mp4Box.TYPE_hev1, Mp4Box.TYPE_av01, 1836069937, 1836069938, 862401121, 862401122, 862417462, 862417718, 862414134, 862414646, 1295275552, 1295270176, 1714714144, 1801741417, 1295275600, Sniffer.BRAND_QUICKTIME, 1297305174, 1684175153, 1769172332, 1885955686};

    public static oae a(d9e d9eVar) {
        return c(d9eVar, true, false);
    }

    public static oae b(d9e d9eVar, boolean z) {
        return c(d9eVar, false, z);
    }

    public static oae c(d9e d9eVar, boolean z, boolean z2) {
        int i;
        u4h u4hVar;
        int i2;
        int[] iArr;
        long jZzd = d9eVar.zzd();
        long j = -1;
        long j2 = 4096;
        if (jZzd != -1 && jZzd <= 4096) {
            j2 = jZzd;
        }
        u4h u4hVar2 = new u4h(64);
        int i3 = (int) j2;
        int i4 = 0;
        int i5 = 0;
        boolean z3 = false;
        while (i5 < i3) {
            u4hVar2.i(8);
            boolean z4 = true;
            if (!d9eVar.e(u4hVar2.n(), i4, 8, true)) {
                break;
            }
            long jO = u4hVar2.O();
            int iA = u4hVar2.A();
            if (jO == 1) {
                d9eVar.i(u4hVar2.n(), 8, 8);
                i = 16;
                u4hVar2.k(16);
                jO = u4hVar2.N();
            } else {
                if (jO == 0) {
                    long jZzd2 = d9eVar.zzd();
                    if (jZzd2 != j) {
                        jO = (jZzd2 - d9eVar.zze()) + 8;
                    }
                }
                i = 8;
            }
            long j3 = jO;
            long j4 = i;
            if (j3 < j4) {
                return new iee(iA, j3, i);
            }
            i5 += i;
            if (iA == 1836019574) {
                i3 += (int) j3;
                if (jZzd != -1 && i3 > jZzd) {
                    i3 = (int) jZzd;
                }
                u4hVar2 = u4hVar2;
                j = -1;
                i4 = 0;
            } else {
                if (iA == 1836019558 || iA == 1836475768) {
                    i4 = 1;
                    break;
                }
                z3 |= !(iA != 1835295092);
                long j5 = jZzd;
                if ((((long) i5) + j3) - j4 >= i3) {
                    i4 = 0;
                    break;
                }
                int i6 = (int) (j3 - j4);
                i5 += i6;
                if (iA != 1718909296) {
                    u4hVar = u4hVar2;
                    i2 = 0;
                    if (i6 != 0) {
                        d9eVar.zzg(i6);
                    }
                } else {
                    if (i6 < 8) {
                        return new iee(Mp4Box.TYPE_ftyp, i6, 8);
                    }
                    u4hVar = u4hVar2;
                    u4hVar.i(i6);
                    i2 = 0;
                    d9eVar.i(u4hVar.n(), 0, i6);
                    int iA2 = u4hVar.A();
                    boolean zD = d(iA2, z2) | z3;
                    u4hVar.m(4);
                    int iU = u4hVar.u() / 4;
                    if (!zD && iU > 0) {
                        iArr = new int[iU];
                        int i7 = 0;
                        while (true) {
                            if (i7 >= iU) {
                                z4 = zD;
                                break;
                            }
                            int iA3 = u4hVar.A();
                            iArr[i7] = iA3;
                            if (d(iA3, z2)) {
                                break;
                            }
                            i7++;
                        }
                    } else {
                        z4 = zD;
                        iArr = null;
                    }
                    if (!z4) {
                        return new yfe(iA2, iArr);
                    }
                    z3 = z4;
                }
                u4hVar2 = u4hVar;
                i4 = i2;
                jZzd = j5;
                j = -1;
            }
        }
        if (!z3) {
            return nfe.a;
        }
        if (z != i4) {
            return i4 != 0 ? hfe.a : hfe.b;
        }
        return null;
    }

    public static boolean d(int i, boolean z) {
        if ((i >>> 8) == 3368816) {
            return true;
        }
        if (i == 1751476579) {
            if (z) {
                return true;
            }
            i = 1751476579;
        }
        int[] iArr = a;
        for (int i2 = 0; i2 < 29; i2++) {
            if (iArr[i2] == i) {
                return true;
            }
        }
        return false;
    }
}
