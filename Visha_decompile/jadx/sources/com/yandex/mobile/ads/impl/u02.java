package com.yandex.mobile.ads.impl;

import androidx.media3.container.Mp4Box;
import androidx.media3.extractor.mp4.Sniffer;
import java.io.IOException;

final class u02 {
    private static final int[] a = {1769172845, 1769172786, 1769172787, 1769172788, 1769172789, 1769172790, 1769172793, Mp4Box.TYPE_avc1, Mp4Box.TYPE_hvc1, Mp4Box.TYPE_hev1, Mp4Box.TYPE_av01, 1836069937, 1836069938, 862401121, 862401122, 862417462, 862417718, 862414134, 862414646, 1295275552, 1295270176, 1714714144, 1801741417, 1295275600, Sniffer.BRAND_QUICKTIME, 1297305174, 1684175153, 1769172332, 1885955686};

    public static boolean a(wz wzVar) throws IOException {
        return a(wzVar, true, false);
    }

    private static boolean a(a80 a80Var, boolean z, boolean z2) throws IOException {
        boolean z3;
        boolean z4;
        boolean z5;
        int i;
        boolean z6;
        long jB = a80Var.b();
        long j = -1;
        int i2 = (jB > (-1L) ? 1 : (jB == (-1L) ? 0 : -1));
        long j2 = 4096;
        if (i2 != 0 && jB <= 4096) {
            j2 = jB;
        }
        int i3 = (int) j2;
        ag1 ag1Var = new ag1(64);
        boolean z7 = false;
        int i4 = 0;
        boolean z8 = false;
        while (true) {
            if (i4 < i3) {
                ag1Var.c(8);
                if (a80Var.b(ag1Var.c(), z7 ? 1 : 0, 8, true)) {
                    long jV = ag1Var.v();
                    int iH = ag1Var.h();
                    if (jV == 1) {
                        a80Var.a(ag1Var.c(), 8, 8);
                        ag1Var.d(16);
                        i = 16;
                        jV = ag1Var.p();
                    } else {
                        if (jV == 0) {
                            long jB2 = a80Var.b();
                            if (jB2 != j) {
                                jV = (jB2 - a80Var.d()) + ((long) 8);
                            }
                        }
                        i = 8;
                    }
                    long j3 = i;
                    if (jV < j3) {
                        return z7;
                    }
                    i4 += i;
                    if (iH == 1836019574) {
                        i3 += (int) jV;
                        if (i2 != 0 && i3 > jB) {
                            i3 = (int) jB;
                        }
                    } else if (iH == 1836019558 || iH == 1836475768) {
                        z3 = z7 ? 1 : 0;
                        z4 = true;
                        z5 = true;
                    } else {
                        int i5 = i2;
                        if ((((long) i4) + jV) - j3 >= i3) {
                            z3 = false;
                            z4 = true;
                            z5 = z3 ? 1 : 0;
                        } else {
                            int i6 = (int) (jV - j3);
                            i4 += i6;
                            if (iH != 1718909296) {
                                z6 = false;
                                if (i6 != 0) {
                                    z8 = z8;
                                    a80Var.b(i6);
                                    z8 = z8;
                                }
                            } else {
                                if (i6 < 8) {
                                    return false;
                                }
                                ag1Var.c(i6);
                                a80Var.a(ag1Var.c(), 0, i6);
                                int i7 = i6 / 4;
                                for (int i8 = 0; i8 < i7; i8++) {
                                    if (i8 != 1) {
                                        int iH2 = ag1Var.h();
                                        if ((iH2 >>> 8) != 3368816 && (iH2 != 1751476579 || !z2)) {
                                            int[] iArr = a;
                                            int i9 = 0;
                                            while (true) {
                                                if (i9 >= 29) {
                                                    continue;
                                                } else if (iArr[i9] != iH2) {
                                                    i9++;
                                                }
                                            }
                                        }
                                        z8 = true;
                                        break;
                                    }
                                    ag1Var.f(4);
                                }
                                z6 = false;
                                z8 = z8;
                                if (!z8) {
                                    return false;
                                }
                            }
                            z8 = z8;
                            z7 = z6;
                            i2 = i5;
                        }
                    }
                    j = -1;
                    z8 = z8;
                }
                return (z8 || z != z5) ? z3 : z4;
            }
            z3 = z7 ? 1 : 0;
            z4 = true;
            z5 = z3 ? 1 : 0;
            if (z8) {
            }
        }
    }

    public static boolean a(a80 a80Var, boolean z) throws IOException {
        return a(a80Var, false, z);
    }
}
