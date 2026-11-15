package q9;

import android.support.v4.media.session.PlaybackStateCompat;
import com.google.android.exoplayer2.util.d0;

abstract class n {

    private static final int[] f69534a = {1769172845, 1769172786, 1769172787, 1769172788, 1769172789, 1769172790, 1769172793, 1635148593, 1752589105, 1751479857, 1635135537, 1836069937, 1836069938, 862401121, 862401122, 862417462, 862417718, 862414134, 862414646, 1295275552, 1295270176, 1714714144, 1801741417, 1295275600, 1903435808, 1297305174, 1684175153, 1769172332, 1885955686};

    private static boolean a(int i10, boolean z10) {
        if ((i10 >>> 8) == 3368816) {
            return true;
        }
        if (i10 == 1751476579 && z10) {
            return true;
        }
        for (int i11 : f69534a) {
            if (i11 == i10) {
                return true;
            }
        }
        return false;
    }

    public static boolean b(i9.m mVar) {
        return c(mVar, true, false);
    }

    private static boolean c(i9.m mVar, boolean z10, boolean z11) {
        boolean z12;
        boolean z13;
        boolean z14;
        int i10;
        boolean z15;
        boolean z16;
        long length = mVar.getLength();
        long j10 = -1;
        int i11 = (length > (-1L) ? 1 : (length == (-1L) ? 0 : -1));
        long j11 = PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM;
        if (i11 != 0 && length <= PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) {
            j11 = length;
        }
        int i12 = (int) j11;
        d0 d0Var = new d0(64);
        boolean z17 = false;
        int i13 = 0;
        boolean z18 = false;
        while (true) {
            if (i13 < i12) {
                d0Var.L(8);
                if (mVar.peekFully(d0Var.d(), z17 ? 1 : 0, 8, true)) {
                    long jF = d0Var.F();
                    int iN = d0Var.n();
                    if (jF == 1) {
                        mVar.peekFully(d0Var.d(), 8, 8);
                        d0Var.O(16);
                        i10 = 16;
                        jF = d0Var.w();
                    } else {
                        if (jF == 0) {
                            long length2 = mVar.getLength();
                            if (length2 != j10) {
                                jF = (length2 - mVar.getPeekPosition()) + ((long) 8);
                            }
                        }
                        i10 = 8;
                    }
                    long j12 = i10;
                    if (jF < j12) {
                        return z17;
                    }
                    i13 += i10;
                    if (iN == 1836019574) {
                        i12 += (int) jF;
                        if (i11 != 0 && i12 > length) {
                            i12 = (int) length;
                        }
                    } else if (iN == 1836019558 || iN == 1836475768) {
                        z12 = z17 ? 1 : 0;
                        z13 = true;
                        z14 = true;
                    } else {
                        int i14 = i11;
                        if ((((long) i13) + jF) - j12 >= i12) {
                            z12 = false;
                            z13 = true;
                            z14 = z12 ? 1 : 0;
                        } else {
                            int i15 = (int) (jF - j12);
                            i13 += i15;
                            if (iN != 1718909296) {
                                z15 = false;
                                if (i15 != 0) {
                                    z18 = z18;
                                    mVar.advancePeekPosition(i15);
                                    z18 = z18;
                                }
                            } else {
                                if (i15 < 8) {
                                    return false;
                                }
                                d0Var.L(i15);
                                mVar.peekFully(d0Var.d(), 0, i15);
                                int i16 = i15 / 4;
                                int i17 = 0;
                                while (true) {
                                    if (i17 >= i16) {
                                        z16 = z18;
                                        break;
                                    }
                                    if (i17 == 1) {
                                        d0Var.Q(4);
                                    } else if (a(d0Var.n(), z11)) {
                                        z16 = true;
                                        break;
                                    }
                                    i17++;
                                }
                                if (!z16) {
                                    return false;
                                }
                                z15 = false;
                                z18 = z16;
                            }
                            z18 = z18;
                            z17 = z15;
                            i11 = i14;
                        }
                    }
                    j10 = -1;
                    z18 = z18;
                }
                return (z18 || z10 != z14) ? z12 : z13;
            }
            z12 = z17 ? 1 : 0;
            z13 = true;
            z14 = z12 ? 1 : 0;
            if (z18) {
            }
        }
    }

    public static boolean d(i9.m mVar, boolean z10) {
        return c(mVar, false, z10);
    }
}
