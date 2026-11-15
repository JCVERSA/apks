package e3;

import android.support.v4.media.session.PlaybackStateCompat;
import androidx.media3.common.util.j0;
import k2.q0;

public abstract class s {

    private static final int[] f59401a = {1769172845, 1769172786, 1769172787, 1769172788, 1769172789, 1769172790, 1769172793, 1635148593, 1752589105, 1751479857, 1635135537, 1836069937, 1836069938, 862401121, 862401122, 862417462, 862417718, 862414134, 862414646, 1295275552, 1295270176, 1714714144, 1801741417, 1295275600, 1903435808, 1297305174, 1684175153, 1769172332, 1885955686};

    private static boolean a(int i10, boolean z10) {
        if ((i10 >>> 8) == 3368816) {
            return true;
        }
        if (i10 == 1751476579 && z10) {
            return true;
        }
        for (int i11 : f59401a) {
            if (i11 == i10) {
                return true;
            }
        }
        return false;
    }

    public static q0 b(k2.s sVar) {
        return c(sVar, true, false);
    }

    /* JADX WARN: Code duplicated, block: B:77:0x011a  */
    /* JADX WARN: Code duplicated, block: B:79:0x011d  */
    /* JADX WARN: Code duplicated, block: B:81:0x0121 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:82:0x0123  */
    /* JADX WARN: Code duplicated, block: B:83:0x0126  */
    /* JADX WARN: Code duplicated, block: B:85:0x0129 A[RETURN] */
    private static q0 c(k2.s sVar, boolean z10, boolean z11) {
        int i10;
        int i11;
        int i12;
        boolean z12;
        int[] iArr;
        long length = sVar.getLength();
        long j10 = -1;
        long j11 = PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM;
        if (length != -1 && length <= PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) {
            j11 = length;
        }
        int i13 = (int) j11;
        j0 j0Var = new j0(64);
        int i14 = 0;
        int i15 = 0;
        boolean z13 = false;
        while (true) {
            if (i15 < i13) {
                j0Var.S(8);
                if (sVar.peekFully(j0Var.e(), i14, 8, true)) {
                    long J = j0Var.J();
                    int iQ = j0Var.q();
                    if (J == 1) {
                        sVar.peekFully(j0Var.e(), 8, 8);
                        i11 = 16;
                        j0Var.V(16);
                        J = j0Var.A();
                    } else {
                        if (J == 0) {
                            long length2 = sVar.getLength();
                            if (length2 != j10) {
                                J = (length2 - sVar.getPeekPosition()) + ((long) 8);
                            }
                        }
                        i11 = 8;
                    }
                    long j12 = J;
                    long j13 = i11;
                    if (j12 < j13) {
                        return new a(iQ, j12, i11);
                    }
                    i15 += i11;
                    if (iQ == 1836019574) {
                        i13 += (int) j12;
                        if (length != -1 && i13 > length) {
                            i13 = (int) length;
                        }
                    } else if (iQ == 1836019558 || iQ == 1836475768) {
                        i10 = 1;
                    } else {
                        long j14 = length;
                        if (iQ == 1835295092) {
                            z13 = true;
                        }
                        if ((((long) i15) + j12) - j13 >= i13) {
                            i10 = 0;
                        } else {
                            int i16 = (int) (j12 - j13);
                            i15 += i16;
                            if (iQ != 1718909296) {
                                i12 = 0;
                                if (i16 != 0) {
                                    sVar.advancePeekPosition(i16);
                                }
                            } else {
                                if (i16 < 8) {
                                    return new a(iQ, i16, 8);
                                }
                                j0Var.S(i16);
                                i12 = 0;
                                sVar.peekFully(j0Var.e(), 0, i16);
                                int iQ2 = j0Var.q();
                                if (a(iQ2, z11)) {
                                    z13 = true;
                                }
                                j0Var.X(4);
                                int iA = j0Var.a() / 4;
                                if (!z13 && iA > 0) {
                                    iArr = new int[iA];
                                    int i17 = 0;
                                    while (true) {
                                        if (i17 >= iA) {
                                            z12 = z13;
                                            break;
                                        }
                                        int iQ3 = j0Var.q();
                                        iArr[i17] = iQ3;
                                        if (a(iQ3, z11)) {
                                            z12 = true;
                                            break;
                                        }
                                        i17++;
                                    }
                                } else {
                                    z12 = z13;
                                    iArr = null;
                                }
                                if (!z12) {
                                    return new x(iQ2, iArr);
                                }
                                z13 = z12;
                            }
                            i14 = i12;
                            length = j14;
                        }
                    }
                    j10 = -1;
                }
                if (!z13) {
                    return o.f59388a;
                }
                if (z10 != i10) {
                    return i10 != 0 ? i.f59354b : i.f59355c;
                }
                return null;
            }
            i10 = i14;
            if (!z13) {
                return o.f59388a;
            }
            if (z10 != i10) {
                if (i10 != 0) {
                }
            }
            return null;
        }
    }

    public static q0 d(k2.s sVar, boolean z10) {
        return c(sVar, false, z10);
    }
}
