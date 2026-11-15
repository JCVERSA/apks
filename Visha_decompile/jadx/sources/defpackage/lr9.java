package defpackage;

import androidx.media3.container.Mp4Box;
import androidx.media3.extractor.mp4.Sniffer;

public abstract class lr9 {
    public static final int[] a = {1769172845, 1769172786, 1769172787, 1769172788, 1769172789, 1769172790, 1769172793, Mp4Box.TYPE_avc1, Mp4Box.TYPE_hvc1, Mp4Box.TYPE_hev1, Mp4Box.TYPE_av01, 1836069937, 1836069938, 862401121, 862401122, 862417462, 862417718, 862414134, 862414646, 1295275552, 1295270176, 1714714144, 1801741417, 1295275600, Sniffer.BRAND_QUICKTIME, 1297305174, 1684175153, 1769172332, 1885955686};

    public static boolean a(int i, boolean z) {
        if ((i >>> 8) == 3368816) {
            return true;
        }
        if (i == 1751476579 && z) {
            return true;
        }
        for (int i2 : a) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    public static boolean b(pk3 pk3Var) {
        return c(pk3Var, true, false);
    }

    public static boolean c(pk3 pk3Var, boolean z, boolean z2) {
        boolean z3;
        boolean z4;
        boolean z5;
        int i;
        boolean z6;
        boolean z7;
        long length = pk3Var.getLength();
        long j = -1;
        int i2 = (length > (-1L) ? 1 : (length == (-1L) ? 0 : -1));
        long j2 = 4096;
        if (i2 != 0 && length <= 4096) {
            j2 = length;
        }
        int i3 = (int) j2;
        qw7 qw7Var = new qw7(64);
        boolean z8 = false;
        int i4 = 0;
        boolean z9 = false;
        while (true) {
            if (i4 < i3) {
                qw7Var.K(8);
                if (pk3Var.peekFully(qw7Var.d(), z8 ? 1 : 0, 8, true)) {
                    long jE = qw7Var.E();
                    int iN = qw7Var.n();
                    if (jE == 1) {
                        pk3Var.peekFully(qw7Var.d(), 8, 8);
                        qw7Var.N(16);
                        i = 16;
                        jE = qw7Var.v();
                    } else {
                        if (jE == 0) {
                            long length2 = pk3Var.getLength();
                            if (length2 != j) {
                                jE = (length2 - pk3Var.getPeekPosition()) + ((long) 8);
                            }
                        }
                        i = 8;
                    }
                    long j3 = i;
                    if (jE < j3) {
                        return z8;
                    }
                    i4 += i;
                    if (iN == 1836019574) {
                        i3 += (int) jE;
                        if (i2 != 0 && i3 > length) {
                            i3 = (int) length;
                        }
                    } else if (iN == 1836019558 || iN == 1836475768) {
                        z3 = z8 ? 1 : 0;
                        z4 = true;
                        z5 = true;
                    } else {
                        int i5 = i2;
                        if ((((long) i4) + jE) - j3 >= i3) {
                            z3 = false;
                            z4 = true;
                            z5 = z3 ? 1 : 0;
                        } else {
                            int i6 = (int) (jE - j3);
                            i4 += i6;
                            if (iN != 1718909296) {
                                z6 = false;
                                if (i6 != 0) {
                                    z9 = z9;
                                    pk3Var.advancePeekPosition(i6);
                                    z9 = z9;
                                }
                            } else {
                                if (i6 < 8) {
                                    return false;
                                }
                                qw7Var.K(i6);
                                pk3Var.peekFully(qw7Var.d(), 0, i6);
                                int i7 = i6 / 4;
                                int i8 = 0;
                                while (true) {
                                    if (i8 >= i7) {
                                        z7 = z9;
                                        break;
                                    }
                                    if (i8 == 1) {
                                        qw7Var.P(4);
                                    } else if (a(qw7Var.n(), z2)) {
                                        z7 = true;
                                        break;
                                    }
                                    i8++;
                                }
                                if (!z7) {
                                    return false;
                                }
                                z6 = false;
                                z9 = z7;
                            }
                            z9 = z9;
                            z8 = z6;
                            i2 = i5;
                        }
                    }
                    j = -1;
                    z9 = z9;
                }
                return (z9 || z != z5) ? z3 : z4;
            }
            z3 = z8 ? 1 : 0;
            z4 = true;
            z5 = z3 ? 1 : 0;
            if (z9) {
            }
        }
    }

    public static boolean d(pk3 pk3Var, boolean z) {
        return c(pk3Var, false, z);
    }
}
