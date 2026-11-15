package com.facebook.ads.redexgen.core;

import androidx.media3.common.C;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.io.IOException;

public final class C9F implements InterfaceC2160mM, InterfaceC2161mN {
    public static String[] A06 = {"JXRw8dEnvO1Lr4g7cFUS0dvQrSj2gCrD", "hvHNuBxl", "xmWilmV3z2eIIj1", "UUtHfwhImwRJiupXWlBcpFq10hKf2hZ3", "Gjwbiw3zcCnfnivX0C6Z4KLegMayRhyW", "PFLAFIzQgEofbdrT2htWxpP7W2gVOOgi", "405rypbMY6P", "HWuA8Rz9jBHRgd5bymvhijPSyV36G6mN"};
    public long A00;
    public long A01;
    public long A02;
    public InterfaceC2161mN A03;
    public C2164mQ[] A04 = new C2164mQ[0];
    public final InterfaceC2160mM A05;

    public C9F(InterfaceC2160mM interfaceC2160mM, boolean z, long j, long j2) {
        this.A05 = interfaceC2160mM;
        this.A02 = z ? j : C.TIME_UNSET;
        this.A01 = j;
        this.A00 = j2;
    }

    private C7I A00(long j, C7I c7i) {
        long toleranceBeforeUs = AbstractC06244a.A0T(c7i.A01, 0L, j - this.A01);
        long jA0T = AbstractC06244a.A0T(c7i.A00, 0L, this.A00 == Long.MIN_VALUE ? Long.MAX_VALUE : this.A00 - j);
        if (toleranceBeforeUs == c7i.A01) {
            long j2 = c7i.A00;
            if (A06[6].length() != 11) {
                throw new RuntimeException();
            }
            A06[0] = "SySHx2FlEzism2SEaRZKk1Ki9OIwKCgL";
            if (jA0T == j2) {
                return c7i;
            }
        }
        return new C7I(toleranceBeforeUs, jA0T);
    }

    @Override
    public final void ACs(InterfaceC2160mM interfaceC2160mM) {
        ((InterfaceC2161mN) C3M.A01(this.A03)).ACs(this);
    }

    public static boolean A02(long j, InterfaceC2122lj[] interfaceC2122ljArr) {
        if (j != 0) {
            for (InterfaceC2122lj interfaceC2122lj : interfaceC2122ljArr) {
                if (interfaceC2122lj != null) {
                    C2312or c2312orA8u = interfaceC2122lj.A8u();
                    if (!AbstractC05792h.A0G(c2312orA8u.A0W, c2312orA8u.A0R)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final boolean A03() {
        return this.A02 != C.TIME_UNSET;
    }

    @Override
    @MetaExoPlayerCustomization("Added in D19760981 for cancel request")
    public final void A4k(long j) {
        this.A05.A4k(j);
    }

    @Override
    public final boolean A54(long j) {
        return this.A05.A54(j);
    }

    @Override
    public final void A5s(long j, boolean z) {
        this.A05.A5s(j, z);
    }

    @Override
    public final long A6j(long j, C7I c7i) {
        if (j == this.A01) {
            return this.A01;
        }
        return this.A05.A6j(j, A00(j, c7i));
    }

    @Override
    @MetaExoPlayerCustomization("Added in D9949576 for unstall buffer")
    public final long A6y(long j) {
        return this.A05.A6y(j);
    }

    @Override
    public final long A70() {
        long jA70 = this.A05.A70();
        if (jA70 == Long.MIN_VALUE || (this.A00 != Long.MIN_VALUE && jA70 >= this.A00)) {
            return Long.MIN_VALUE;
        }
        return jA70;
    }

    @Override
    public final long A8T() {
        long jA8T = this.A05.A8T();
        if (jA8T != Long.MIN_VALUE) {
            long nextLoadPositionUs = this.A00;
            if (A06[0].charAt(29) != 'C') {
                throw new RuntimeException();
            }
            A06[0] = "QBPPyRyowan8CCGBQiXIHMf03VOUOCSC";
            if (nextLoadPositionUs == Long.MIN_VALUE || jA8T < this.A00) {
                return jA8T;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override
    public final C2149mA A9E() {
        return this.A05.A9E();
    }

    @Override
    public final void ABt() throws IOException {
        if (0 == 0) {
            this.A05.ABt();
            return;
        }
        throw null;
    }

    @Override
    public final void AEk(InterfaceC2160mM interfaceC2160mM) {
        if (0 != 0) {
            return;
        }
        ((InterfaceC2161mN) C3M.A01(this.A03)).AEk(this);
    }

    @Override
    public final void AGL(InterfaceC2161mN interfaceC2161mN, long j) {
        this.A03 = interfaceC2161mN;
        this.A05.AGL(this, j);
    }

    @Override
    public final long AGg() {
        if (A03()) {
            long childDiscontinuityUs = this.A02;
            this.A02 = C.TIME_UNSET;
            long jAGg = AGg();
            return jAGg != C.TIME_UNSET ? jAGg : childDiscontinuityUs;
        }
        InterfaceC2160mM interfaceC2160mM = this.A05;
        if (A06[2].length() == 0) {
            throw new RuntimeException();
        }
        A06[6] = "ABWUoGiNBoa";
        long jAGg2 = interfaceC2160mM.AGg();
        if (jAGg2 == C.TIME_UNSET) {
            return C.TIME_UNSET;
        }
        long discontinuityUs = this.A01;
        boolean z = true;
        C3M.A08(jAGg2 >= discontinuityUs);
        if (this.A00 != Long.MIN_VALUE) {
            long discontinuityUs2 = this.A00;
            if (jAGg2 > discontinuityUs2) {
                z = false;
            }
        }
        C3M.A08(z);
        return jAGg2;
    }

    @Override
    public final void AGm(long j) {
        this.A05.AGm(j);
    }

    @Override
    public final long AIO(@MetaExoPlayerCustomization long j, boolean z) {
        this.A02 = C.TIME_UNSET;
        boolean z2 = false;
        for (C2164mQ c2164mQ : this.A04) {
            if (c2164mQ != null) {
                c2164mQ.A00();
            }
        }
        long jAIO = this.A05.AIO(j, z);
        if (jAIO == j || (jAIO >= this.A01 && (this.A00 == Long.MIN_VALUE || jAIO <= this.A00))) {
            z2 = true;
        }
        C3M.A08(z2);
        return jAIO;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x005f  */
    /* JADX WARN: Code duplicated, block: B:29:0x0092  */
    /* JADX WARN: Code duplicated, block: B:33:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:37:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:40:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:42:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:44:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:46:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:47:0x0102 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:49:0x0105  */
    /* JADX WARN: Code duplicated, block: B:51:0x0117 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:58:0x011d A[EDGE_INSN: B:58:0x011d->B:54:0x011d BREAK  A[LOOP:1: B:31:0x0097->B:50:0x010e], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:59:0x0059 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:60:0x011d A[EDGE_INSN: B:60:0x011d->B:54:0x011d BREAK  A[LOOP:1: B:31:0x0097->B:50:0x010e], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:62:0x010e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:64:0x010e A[SYNTHETIC] */
    @Override
    public final long AIP(InterfaceC2122lj[] interfaceC2122ljArr, boolean[] zArr, InterfaceC0833Cr[] interfaceC0833CrArr, boolean[] zArr2, long j) {
        long j2;
        boolean z;
        int i;
        int length;
        InterfaceC0833Cr[] childStreams;
        InterfaceC0833Cr interfaceC0833Cr;
        InterfaceC0833Cr interfaceC0833Cr2;
        C2164mQ[] c2164mQArr;
        String[] strArr;
        this.A04 = new C2164mQ[interfaceC0833CrArr.length];
        InterfaceC0833Cr[] interfaceC0833CrArr2 = new InterfaceC0833Cr[interfaceC0833CrArr.length];
        int i2 = 0;
        while (true) {
            InterfaceC0833Cr interfaceC0833Cr3 = null;
            if (i2 >= interfaceC0833CrArr.length) {
                break;
            }
            this.A04[i2] = (C2164mQ) interfaceC0833CrArr[i2];
            InterfaceC0833Cr[] childStreams2 = this.A04;
            if (childStreams2[i2] != null) {
                interfaceC0833Cr3 = this.A04[i2].A01;
            }
            interfaceC0833CrArr2[i2] = interfaceC0833Cr3;
            i2++;
        }
        long jAIP = this.A05.AIP(interfaceC2122ljArr, zArr, interfaceC0833CrArr2, zArr2, j);
        if (!A03() || j != this.A01) {
            j2 = C.TIME_UNSET;
            this.A02 = j2;
            if (jAIP != j || (jAIP >= this.A01 && (this.A00 == Long.MIN_VALUE || jAIP <= this.A00))) {
                z = true;
            } else {
                z = false;
            }
            C3M.A08(z);
            i = 0;
            while (true) {
                length = interfaceC0833CrArr.length;
                if (A06[1].length() != 30) {
                    String[] strArr2 = A06;
                    strArr2[7] = "DNi9UWzwfCWyYPkB4uGGg0YkPCShAQe6";
                    strArr2[5] = "fAixbEz1F3G47KA6JLUGcT01MO1ZofiJ";
                    if (i >= length) {
                        break;
                    }
                    if (interfaceC0833CrArr2[i] == null) {
                        c2164mQArr = this.A04;
                        strArr = A06;
                        if (strArr[4].charAt(5) != strArr[3].charAt(5)) {
                            A06[6] = "ocXNdzhjsFv";
                            c2164mQArr[i] = null;
                        }
                    } else {
                        childStreams = this.A04;
                        if (childStreams[i] != null) {
                            interfaceC0833Cr = this.A04[i].A01;
                            interfaceC0833Cr2 = interfaceC0833CrArr2[i];
                            if (A06[1].length() != 30) {
                                String[] strArr3 = A06;
                                strArr3[4] = "cYzDBwspbZ8a8DM9Dz10VjvDatAoG4Oi";
                                strArr3[3] = "WIkG6wjldaaFwlHYCP34A8xHiCA5NCte";
                                if (interfaceC0833Cr != interfaceC0833Cr2) {
                                    this.A04[i] = new C2164mQ(this, interfaceC0833CrArr2[i]);
                                }
                            } else if (interfaceC0833Cr != interfaceC0833Cr2) {
                                this.A04[i] = new C2164mQ(this, interfaceC0833CrArr2[i]);
                            }
                        } else {
                            this.A04[i] = new C2164mQ(this, interfaceC0833CrArr2[i]);
                        }
                    }
                    InterfaceC0833Cr[] childStreams3 = this.A04;
                    interfaceC0833CrArr[i] = childStreams3[i];
                    i++;
                } else {
                    if (i >= length) {
                        break;
                    }
                    if (interfaceC0833CrArr2[i] == null) {
                        c2164mQArr = this.A04;
                        strArr = A06;
                        if (strArr[4].charAt(5) != strArr[3].charAt(5)) {
                            A06[6] = "ocXNdzhjsFv";
                            c2164mQArr[i] = null;
                        }
                    } else {
                        childStreams = this.A04;
                        if (childStreams[i] != null) {
                            interfaceC0833Cr = this.A04[i].A01;
                            interfaceC0833Cr2 = interfaceC0833CrArr2[i];
                            if (A06[1].length() != 30) {
                                String[] strArr4 = A06;
                                strArr4[4] = "cYzDBwspbZ8a8DM9Dz10VjvDatAoG4Oi";
                                strArr4[3] = "WIkG6wjldaaFwlHYCP34A8xHiCA5NCte";
                                if (interfaceC0833Cr != interfaceC0833Cr2) {
                                    this.A04[i] = new C2164mQ(this, interfaceC0833CrArr2[i]);
                                }
                            } else if (interfaceC0833Cr != interfaceC0833Cr2) {
                                this.A04[i] = new C2164mQ(this, interfaceC0833CrArr2[i]);
                            }
                        } else {
                            this.A04[i] = new C2164mQ(this, interfaceC0833CrArr2[i]);
                        }
                    }
                    InterfaceC0833Cr[] childStreams4 = this.A04;
                    interfaceC0833CrArr[i] = childStreams4[i];
                    i++;
                }
            }
            return jAIP;
        }
        long j3 = this.A01;
        String[] strArr5 = A06;
        if (strArr5[4].charAt(5) == strArr5[3].charAt(5)) {
            String[] strArr6 = A06;
            strArr6[7] = "en1LL2zHQFU7eKPWWtw7tqDicZnmZ9l5";
            strArr6[5] = "t66o2OzEfyctLQHjRBlZ897u0IFgDWGZ";
            if (!A02(j3, interfaceC2122ljArr)) {
                j2 = C.TIME_UNSET;
            } else {
                j2 = jAIP;
            }
            this.A02 = j2;
            if (jAIP != j) {
                z = true;
            } else {
                z = true;
            }
            C3M.A08(z);
            i = 0;
            while (true) {
                length = interfaceC0833CrArr.length;
                if (A06[1].length() != 30) {
                    String[] strArr7 = A06;
                    strArr7[7] = "DNi9UWzwfCWyYPkB4uGGg0YkPCShAQe6";
                    strArr7[5] = "fAixbEz1F3G47KA6JLUGcT01MO1ZofiJ";
                    if (i >= length) {
                        break;
                        break;
                    }
                    if (interfaceC0833CrArr2[i] == null) {
                        c2164mQArr = this.A04;
                        strArr = A06;
                        if (strArr[4].charAt(5) != strArr[3].charAt(5)) {
                            A06[6] = "ocXNdzhjsFv";
                            c2164mQArr[i] = null;
                        }
                    } else {
                        childStreams = this.A04;
                        if (childStreams[i] != null) {
                            interfaceC0833Cr = this.A04[i].A01;
                            interfaceC0833Cr2 = interfaceC0833CrArr2[i];
                            if (A06[1].length() != 30) {
                                String[] strArr8 = A06;
                                strArr8[4] = "cYzDBwspbZ8a8DM9Dz10VjvDatAoG4Oi";
                                strArr8[3] = "WIkG6wjldaaFwlHYCP34A8xHiCA5NCte";
                                if (interfaceC0833Cr != interfaceC0833Cr2) {
                                    this.A04[i] = new C2164mQ(this, interfaceC0833CrArr2[i]);
                                }
                            } else if (interfaceC0833Cr != interfaceC0833Cr2) {
                                this.A04[i] = new C2164mQ(this, interfaceC0833CrArr2[i]);
                            }
                        } else {
                            this.A04[i] = new C2164mQ(this, interfaceC0833CrArr2[i]);
                        }
                    }
                    InterfaceC0833Cr[] childStreams5 = this.A04;
                    interfaceC0833CrArr[i] = childStreams5[i];
                    i++;
                } else {
                    if (i >= length) {
                        break;
                        break;
                    }
                    if (interfaceC0833CrArr2[i] == null) {
                        c2164mQArr = this.A04;
                        strArr = A06;
                        if (strArr[4].charAt(5) != strArr[3].charAt(5)) {
                            A06[6] = "ocXNdzhjsFv";
                            c2164mQArr[i] = null;
                        }
                    } else {
                        childStreams = this.A04;
                        if (childStreams[i] != null) {
                            interfaceC0833Cr = this.A04[i].A01;
                            interfaceC0833Cr2 = interfaceC0833CrArr2[i];
                            if (A06[1].length() != 30) {
                                String[] strArr9 = A06;
                                strArr9[4] = "cYzDBwspbZ8a8DM9Dz10VjvDatAoG4Oi";
                                strArr9[3] = "WIkG6wjldaaFwlHYCP34A8xHiCA5NCte";
                                if (interfaceC0833Cr != interfaceC0833Cr2) {
                                    this.A04[i] = new C2164mQ(this, interfaceC0833CrArr2[i]);
                                }
                            } else if (interfaceC0833Cr != interfaceC0833Cr2) {
                                this.A04[i] = new C2164mQ(this, interfaceC0833CrArr2[i]);
                            }
                        } else {
                            this.A04[i] = new C2164mQ(this, interfaceC0833CrArr2[i]);
                        }
                    }
                    InterfaceC0833Cr[] childStreams6 = this.A04;
                    interfaceC0833CrArr[i] = childStreams6[i];
                    i++;
                }
            }
            return jAIP;
        }
        throw new RuntimeException();
    }

    @Override
    @MetaExoPlayerCustomization("Added in D19875605 for error load during pause")
    public final void AIs(boolean z) {
        this.A05.AIs(z);
    }

    @Override
    @MetaExoPlayerCustomization("Added in D13267633 for lower priority during pause")
    public final void AJq(byte b) {
        this.A05.AJq(b);
    }
}
