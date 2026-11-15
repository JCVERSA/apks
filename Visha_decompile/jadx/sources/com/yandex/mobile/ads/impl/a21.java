package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import androidx.media3.common.C;
import com.yandex.mobile.ads.impl.a21;
import com.yandex.mobile.ads.impl.z70;
import java.io.EOFException;
import java.io.IOException;

public final class a21 implements z70 {
    private static final si0.a u;
    private final int a;
    private final long b;
    private final ag1 c;
    private final f21.a d;
    private final ie0 e;
    private final ui0 f;
    private final r40 g;
    private b80 h;
    private a62 i;
    private a62 j;
    private int k;

    @Nullable
    private k01 l;
    private long m;
    private long n;
    private long o;
    private int p;
    private hx1 q;
    private boolean r;
    private boolean s;
    private long t;

    static {
        new d80() {
            @Override
            public final z70[] a() {
                return a21.b();
            }
        };
        u = new si0.a() {
            @Override
            public final boolean a(int i, int i2, int i3, int i4, int i5) {
                return a21.a(i, i2, i3, i4, i5);
            }
        };
    }

    public a21() {
        this(0);
    }

    public static boolean a(int i, int i2, int i3, int i4, int i5) {
        return (i2 == 67 && i3 == 79 && i4 == 77 && (i5 == 77 || i == 2)) || (i2 == 77 && i3 == 76 && i4 == 76 && (i5 == 84 || i == 2));
    }

    public static z70[] b() {
        return new z70[]{new a21()};
    }

    @Override
    public final void release() {
    }

    public a21(int i) {
        this((Object) null);
    }

    public final void a() {
        this.r = true;
    }

    public a21(Object obj) {
        this.a = 0;
        this.b = C.TIME_UNSET;
        this.c = new ag1(10);
        this.d = new f21.a();
        this.e = new ie0();
        this.m = C.TIME_UNSET;
        this.f = new ui0();
        r40 r40Var = new r40();
        this.g = r40Var;
        this.j = r40Var;
    }

    @Override
    public final void a(b80 b80Var) {
        this.h = b80Var;
        a62 a62VarA = b80Var.a(0, 1);
        this.i = a62VarA;
        this.j = a62VarA;
        this.h.a();
    }

    private boolean a(wz wzVar) throws IOException {
        hx1 hx1Var = this.q;
        if (hx1Var != null) {
            long jA = hx1Var.a();
            if (jA != -1 && wzVar.d() > jA - 4) {
                return true;
            }
        }
        try {
            return !wzVar.b(this.c.c(), 0, 4, true);
        } catch (EOFException unused) {
            return true;
        }
    }

    /* JADX WARN: Code duplicated, block: B:106:0x0203  */
    /* JADX WARN: Code duplicated, block: B:108:0x0209  */
    /* JADX WARN: Code duplicated, block: B:109:0x020c  */
    /* JADX WARN: Code duplicated, block: B:113:0x027c  */
    /* JADX WARN: Code duplicated, block: B:114:0x027e  */
    /* JADX WARN: Code duplicated, block: B:116:0x0292  */
    /* JADX WARN: Code duplicated, block: B:118:0x029a  */
    /* JADX WARN: Code duplicated, block: B:11:0x003c  */
    /* JADX WARN: Code duplicated, block: B:120:0x02a7  */
    /* JADX WARN: Code duplicated, block: B:123:0x02b0  */
    /* JADX WARN: Code duplicated, block: B:126:0x02be  */
    /* JADX WARN: Code duplicated, block: B:13:0x0040  */
    /* JADX WARN: Code duplicated, block: B:145:0x0359  */
    /* JADX WARN: Code duplicated, block: B:147:0x0364  */
    /* JADX WARN: Code duplicated, block: B:148:0x0367  */
    /* JADX WARN: Code duplicated, block: B:14:0x0042  */
    /* JADX WARN: Code duplicated, block: B:151:0x036f  */
    /* JADX WARN: Code duplicated, block: B:164:0x0182 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:165:0x014c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:166:0x0167 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:167:0x0175 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:168:0x0172 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:169:0x0172 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:16:0x0046  */
    /* JADX WARN: Code duplicated, block: B:170:0x01d9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:171:0x01cc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:172:0x01d7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:173:0x01d7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:17:0x0049  */
    /* JADX WARN: Code duplicated, block: B:20:0x005c  */
    /* JADX WARN: Code duplicated, block: B:24:0x0068  */
    /* JADX WARN: Code duplicated, block: B:26:0x0070  */
    /* JADX WARN: Code duplicated, block: B:28:0x0079  */
    /* JADX WARN: Code duplicated, block: B:29:0x007b  */
    /* JADX WARN: Code duplicated, block: B:32:0x0080  */
    /* JADX WARN: Code duplicated, block: B:38:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:40:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:43:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:45:0x00ef A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:46:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:49:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:55:0x013d  */
    /* JADX WARN: Code duplicated, block: B:57:0x0144  */
    /* JADX WARN: Code duplicated, block: B:61:0x0155  */
    /* JADX WARN: Code duplicated, block: B:63:0x015d  */
    /* JADX WARN: Code duplicated, block: B:69:0x017f A[LOOP:0: B:56:0x0142->B:69:0x017f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:70:0x0182 A[EDGE_INSN: B:70:0x0182->B:71:0x0183 BREAK  A[LOOP:0: B:56:0x0142->B:69:0x017f]] */
    /* JADX WARN: Code duplicated, block: B:73:0x0187  */
    /* JADX WARN: Code duplicated, block: B:74:0x018e  */
    /* JADX WARN: Code duplicated, block: B:76:0x0193  */
    /* JADX WARN: Code duplicated, block: B:78:0x0197  */
    /* JADX WARN: Code duplicated, block: B:80:0x01a0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:81:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:82:0x01af  */
    /* JADX WARN: Code duplicated, block: B:84:0x01b3  */
    /* JADX WARN: Code duplicated, block: B:86:0x01ba  */
    /* JADX WARN: Code duplicated, block: B:88:0x01c2  */
    /* JADX WARN: Code duplicated, block: B:92:0x01d9 A[EDGE_INSN: B:92:0x01d9->B:79:0x019b BREAK  A[LOOP:2: B:85:0x01b8->B:91:0x01d7]] */
    /* JADX WARN: Code duplicated, block: B:94:0x01eb A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:95:0x01ed  */
    /* JADX WARN: Code duplicated, block: B:96:0x01ef A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:98:0x01f2  */
    /* JADX WARN: Code duplicated, block: B:9:0x001c  */
    @Override
    public final int a(a80 a80Var, pj1 pj1Var) throws IOException {
        int i;
        wz wzVar;
        long jA;
        long j;
        int iB;
        int i2;
        wz wzVar2;
        int iH;
        ag1 ag1Var;
        wz wzVar3;
        f21.a aVar;
        int i3;
        int iH2;
        wz wzVar4;
        hx1 hx1VarA;
        ie0 ie0Var;
        ie0 ie0Var2;
        int i4;
        int i5;
        k01 k01Var;
        long jA2;
        z01 z01VarA;
        boolean z;
        hx1 xrVar;
        k01 k01Var2;
        long jA3;
        int iC;
        int i6;
        k01.b bVarA;
        t42 t42Var;
        long jC;
        long jA4;
        k01 k01Var3;
        int iC2;
        int i7;
        k01.b bVarA2;
        int iC3;
        int i8;
        long jA5;
        k01.b bVarA3;
        t42 t42Var2;
        if (this.i != null) {
            int i9 = f92.a;
            int i10 = 0;
            if (this.k == 0) {
                try {
                    a((wz) a80Var, false);
                    if (this.q == null) {
                        ag1Var = new ag1(this.d.c);
                        wzVar3 = (wz) a80Var;
                        wzVar3.b(ag1Var.c(), 0, this.d.c, false);
                        aVar = this.d;
                        if ((aVar.a & 1) != 0) {
                            if (aVar.e != 1) {
                                i3 = 36;
                            } else {
                                i3 = 21;
                            }
                        } else if (aVar.e != 1) {
                            i3 = 21;
                        } else {
                            i3 = 13;
                        }
                        if (ag1Var.e() >= i3 + 4) {
                            ag1Var.e(i3);
                            iH2 = ag1Var.h();
                            if (iH2 != 1483304551 && iH2 != 1231971951) {
                                if (ag1Var.e() >= 40) {
                                    ag1Var.e(36);
                                    if (ag1Var.h() == 1447187017) {
                                        iH2 = 1447187017;
                                    } else {
                                        iH2 = 0;
                                    }
                                } else {
                                    iH2 = 0;
                                }
                            }
                        } else if (ag1Var.e() >= 40) {
                            ag1Var.e(36);
                            if (ag1Var.h() == 1447187017) {
                                iH2 = 1447187017;
                            } else {
                                iH2 = 0;
                            }
                        } else {
                            iH2 = 0;
                        }
                        if (iH2 != 1483304551 || iH2 == 1231971951) {
                            wzVar4 = wzVar3;
                            hx1VarA = bl2.a(wzVar4.b(), wzVar4.a(), this.d, ag1Var);
                            if (hx1VarA != null) {
                                ie0Var = this.e;
                                if (ie0Var.a != -1 || ie0Var.b == -1) {
                                    wzVar4.c();
                                    wzVar4.a(false, i3 + 141);
                                    wzVar4.b(this.c.c(), 0, 3, false);
                                    this.c.e(0);
                                    ie0Var2 = this.e;
                                    int iW = this.c.w();
                                    ie0Var2.getClass();
                                    i4 = iW >> 12;
                                    i5 = iW & 4095;
                                    if (i4 <= 0 || i5 > 0) {
                                        ie0Var2.a = i4;
                                        ie0Var2.b = i5;
                                    }
                                }
                            }
                            wzVar4.a(this.d.c);
                            if (hx1VarA != null && !hx1VarA.b() && iH2 == 1231971951) {
                                wzVar4.b(this.c.c(), 0, 4, false);
                                this.c.e(0);
                                this.d.a(this.c.h());
                                hx1VarA = new xr(wzVar4.b(), wzVar4.a(), this.d, false);
                            }
                        } else if (iH2 == 1447187017) {
                            wzVar4 = wzVar3;
                            hx1VarA = va2.a(wzVar3.b(), wzVar3.a(), this.d, ag1Var);
                            wzVar4.a(this.d.c);
                        } else {
                            wzVar4 = wzVar3;
                            wzVar4.c();
                            hx1VarA = null;
                        }
                        k01Var = this.l;
                        jA2 = wzVar4.a();
                        if (k01Var != null) {
                            z01VarA = null;
                            break;
                        }
                        iC2 = k01Var.c();
                        i7 = 0;
                        while (true) {
                            if (i7 < iC2) {
                                z01VarA = null;
                                break;
                            }
                            bVarA2 = k01Var.a(i7);
                            if (bVarA2 instanceof y01) {
                                y01 y01Var = (y01) bVarA2;
                                iC3 = k01Var.c();
                                i8 = 0;
                                while (true) {
                                    if (i8 < iC3) {
                                        jA5 = C.TIME_UNSET;
                                        break;
                                    }
                                    bVarA3 = k01Var.a(i8);
                                    if (bVarA3 instanceof t42) {
                                        t42Var2 = (t42) bVarA3;
                                        if (t42Var2.b.equals("TLEN")) {
                                            jA5 = f92.a(Long.parseLong(t42Var2.d));
                                            break;
                                        }
                                    }
                                    i8++;
                                }
                                z01VarA = z01.a(jA2, y01Var, jA5);
                                break;
                            }
                            i7++;
                        }
                        if (this.r) {
                            xrVar = new hx1.a();
                        } else {
                            if ((this.a & 4) != 0) {
                                if (z01VarA != null) {
                                    jA3 = z01VarA.c();
                                } else {
                                    if (hx1VarA != null) {
                                        jC = hx1VarA.c();
                                        jA4 = hx1VarA.a();
                                    } else {
                                        k01Var2 = this.l;
                                        if (k01Var2 != null) {
                                            jA3 = C.TIME_UNSET;
                                            break;
                                        }
                                        iC = k01Var2.c();
                                        i6 = 0;
                                        while (true) {
                                            if (i6 < iC) {
                                                jA3 = C.TIME_UNSET;
                                                break;
                                            }
                                            bVarA = k01Var2.a(i6);
                                            if (bVarA instanceof t42) {
                                                t42Var = (t42) bVarA;
                                                if (t42Var.b.equals("TLEN")) {
                                                    jA3 = f92.a(Long.parseLong(t42Var.d));
                                                    break;
                                                }
                                            }
                                            i6++;
                                        }
                                    }
                                    hx1VarA = new al0(jC, wzVar4.a(), jA4);
                                }
                                jC = jA3;
                                jA4 = -1;
                                hx1VarA = new al0(jC, wzVar4.a(), jA4);
                            } else if (z01VarA != null) {
                                hx1VarA = z01VarA;
                            } else if (hx1VarA == null) {
                                hx1VarA = null;
                            }
                            if (hx1VarA == null && (hx1VarA.b() || (this.a & 1) == 0)) {
                                xrVar = hx1VarA;
                            } else {
                                if ((this.a & 2) != 0) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                wzVar4.b(this.c.c(), 0, 4, false);
                                this.c.e(0);
                                this.d.a(this.c.h());
                                xrVar = new xr(wzVar4.b(), wzVar4.a(), this.d, z);
                            }
                        }
                        this.q = xrVar;
                        this.h.a(xrVar);
                        a62 a62Var = this.j;
                        jc0.a aVarE = new jc0.a().e(this.d.b).h(4096).c(this.d.e).l(this.d.d).d(this.e.a).e(this.e.b);
                        if ((this.a & 8) != 0) {
                            k01Var3 = null;
                        } else {
                            k01Var3 = this.l;
                        }
                        a62Var.a(aVarE.a(k01Var3).a());
                        this.o = wzVar4.a();
                    } else if (this.o != 0) {
                        wzVar = (wz) a80Var;
                        jA = wzVar.a();
                        j = this.o;
                        if (jA < j) {
                            wzVar.a((int) (j - jA));
                        }
                    }
                    if (this.p == 0) {
                        wzVar2 = (wz) a80Var;
                        wzVar2.c();
                        if (a(wzVar2)) {
                            i = -1;
                            i10 = -1;
                        } else {
                            this.c.e(0);
                            iH = this.c.h();
                            if (((-128000) & iH) != (((long) this.k) & (-128000)) && f21.a(iH) != -1) {
                                this.d.a(iH);
                                if (this.m == C.TIME_UNSET) {
                                    this.m = this.q.a(wzVar2.a());
                                    if (this.b != C.TIME_UNSET) {
                                        this.m = (this.b - this.q.a(0L)) + this.m;
                                    }
                                }
                                f21.a aVar2 = this.d;
                                this.p = aVar2.c;
                                hx1 hx1Var = this.q;
                                if (hx1Var instanceof al0) {
                                    al0 al0Var = (al0) hx1Var;
                                    al0Var.a((((this.n + ((long) aVar2.g)) * 1000000) / ((long) aVar2.d)) + this.m, wzVar2.a() + ((long) this.d.c));
                                    if (this.s && al0Var.c(this.t)) {
                                        this.s = false;
                                        this.j = this.i;
                                    }
                                }
                                iB = this.j.b(a80Var, this.p, true);
                                if (iB == -1) {
                                    i = -1;
                                    i10 = -1;
                                } else {
                                    i2 = this.p - iB;
                                    this.p = i2;
                                    if (i2 <= 0) {
                                        a62 a62Var2 = this.j;
                                        long j2 = this.n;
                                        long j3 = this.m;
                                        f21.a aVar3 = this.d;
                                        a62Var2.a(((j2 * 1000000) / ((long) aVar3.d)) + j3, 1, aVar3.c, 0, null);
                                        this.n += (long) this.d.g;
                                        this.p = 0;
                                    }
                                }
                            } else {
                                wzVar2.a(1);
                                this.k = 0;
                            }
                            i = -1;
                        }
                    } else {
                        iB = this.j.b(a80Var, this.p, true);
                        if (iB == -1) {
                            i = -1;
                            i10 = -1;
                        } else {
                            i2 = this.p - iB;
                            this.p = i2;
                            if (i2 <= 0) {
                                a62 a62Var3 = this.j;
                                long j4 = this.n;
                                long j5 = this.m;
                                f21.a aVar4 = this.d;
                                a62Var3.a(((j4 * 1000000) / ((long) aVar4.d)) + j5, 1, aVar4.c, 0, null);
                                this.n += (long) this.d.g;
                                this.p = 0;
                            }
                            i = -1;
                        }
                    }
                } catch (EOFException unused) {
                }
            } else {
                if (this.q == null) {
                    ag1Var = new ag1(this.d.c);
                    wzVar3 = (wz) a80Var;
                    wzVar3.b(ag1Var.c(), 0, this.d.c, false);
                    aVar = this.d;
                    if ((aVar.a & 1) != 0) {
                        if (aVar.e != 1) {
                            i3 = 36;
                        } else {
                            i3 = 21;
                        }
                    } else if (aVar.e != 1) {
                        i3 = 21;
                    } else {
                        i3 = 13;
                    }
                    if (ag1Var.e() >= i3 + 4) {
                        ag1Var.e(i3);
                        iH2 = ag1Var.h();
                        if (iH2 != 1483304551) {
                            if (ag1Var.e() >= 40) {
                                ag1Var.e(36);
                                if (ag1Var.h() == 1447187017) {
                                    iH2 = 1447187017;
                                } else {
                                    iH2 = 0;
                                }
                            } else {
                                iH2 = 0;
                            }
                        }
                    } else if (ag1Var.e() >= 40) {
                        ag1Var.e(36);
                        if (ag1Var.h() == 1447187017) {
                            iH2 = 1447187017;
                        } else {
                            iH2 = 0;
                        }
                    } else {
                        iH2 = 0;
                    }
                    if (iH2 != 1483304551) {
                        wzVar4 = wzVar3;
                        hx1VarA = bl2.a(wzVar4.b(), wzVar4.a(), this.d, ag1Var);
                        if (hx1VarA != null) {
                            ie0Var = this.e;
                            if (ie0Var.a != -1) {
                                wzVar4.c();
                                wzVar4.a(false, i3 + 141);
                                wzVar4.b(this.c.c(), 0, 3, false);
                                this.c.e(0);
                                ie0Var2 = this.e;
                                int iW2 = this.c.w();
                                ie0Var2.getClass();
                                i4 = iW2 >> 12;
                                i5 = iW2 & 4095;
                                if (i4 <= 0) {
                                    ie0Var2.a = i4;
                                    ie0Var2.b = i5;
                                } else {
                                    ie0Var2.a = i4;
                                    ie0Var2.b = i5;
                                }
                            } else {
                                wzVar4.c();
                                wzVar4.a(false, i3 + 141);
                                wzVar4.b(this.c.c(), 0, 3, false);
                                this.c.e(0);
                                ie0Var2 = this.e;
                                int iW3 = this.c.w();
                                ie0Var2.getClass();
                                i4 = iW3 >> 12;
                                i5 = iW3 & 4095;
                                if (i4 <= 0) {
                                    ie0Var2.a = i4;
                                    ie0Var2.b = i5;
                                } else {
                                    ie0Var2.a = i4;
                                    ie0Var2.b = i5;
                                }
                            }
                        }
                        wzVar4.a(this.d.c);
                        if (hx1VarA != null) {
                            wzVar4.b(this.c.c(), 0, 4, false);
                            this.c.e(0);
                            this.d.a(this.c.h());
                            hx1VarA = new xr(wzVar4.b(), wzVar4.a(), this.d, false);
                        }
                    } else {
                        wzVar4 = wzVar3;
                        hx1VarA = bl2.a(wzVar4.b(), wzVar4.a(), this.d, ag1Var);
                        if (hx1VarA != null) {
                            ie0Var = this.e;
                            if (ie0Var.a != -1) {
                                wzVar4.c();
                                wzVar4.a(false, i3 + 141);
                                wzVar4.b(this.c.c(), 0, 3, false);
                                this.c.e(0);
                                ie0Var2 = this.e;
                                int iW4 = this.c.w();
                                ie0Var2.getClass();
                                i4 = iW4 >> 12;
                                i5 = iW4 & 4095;
                                if (i4 <= 0) {
                                    ie0Var2.a = i4;
                                    ie0Var2.b = i5;
                                } else {
                                    ie0Var2.a = i4;
                                    ie0Var2.b = i5;
                                }
                            } else {
                                wzVar4.c();
                                wzVar4.a(false, i3 + 141);
                                wzVar4.b(this.c.c(), 0, 3, false);
                                this.c.e(0);
                                ie0Var2 = this.e;
                                int iW5 = this.c.w();
                                ie0Var2.getClass();
                                i4 = iW5 >> 12;
                                i5 = iW5 & 4095;
                                if (i4 <= 0) {
                                    ie0Var2.a = i4;
                                    ie0Var2.b = i5;
                                } else {
                                    ie0Var2.a = i4;
                                    ie0Var2.b = i5;
                                }
                            }
                        }
                        wzVar4.a(this.d.c);
                        if (hx1VarA != null) {
                            wzVar4.b(this.c.c(), 0, 4, false);
                            this.c.e(0);
                            this.d.a(this.c.h());
                            hx1VarA = new xr(wzVar4.b(), wzVar4.a(), this.d, false);
                        }
                    }
                    k01Var = this.l;
                    jA2 = wzVar4.a();
                    if (k01Var != null) {
                        z01VarA = null;
                        break;
                    }
                    iC2 = k01Var.c();
                    i7 = 0;
                    while (true) {
                        if (i7 < iC2) {
                            z01VarA = null;
                            break;
                        }
                        bVarA2 = k01Var.a(i7);
                        if (bVarA2 instanceof y01) {
                            y01 y01Var2 = (y01) bVarA2;
                            iC3 = k01Var.c();
                            i8 = 0;
                            while (true) {
                                if (i8 < iC3) {
                                    jA5 = C.TIME_UNSET;
                                    break;
                                }
                                bVarA3 = k01Var.a(i8);
                                if (bVarA3 instanceof t42) {
                                    t42Var2 = (t42) bVarA3;
                                    if (t42Var2.b.equals("TLEN")) {
                                        jA5 = f92.a(Long.parseLong(t42Var2.d));
                                        break;
                                    }
                                }
                                i8++;
                            }
                            z01VarA = z01.a(jA2, y01Var2, jA5);
                            break;
                        }
                        i7++;
                    }
                    if (this.r) {
                        xrVar = new hx1.a();
                    } else {
                        if ((this.a & 4) != 0) {
                            if (z01VarA != null) {
                                jA3 = z01VarA.c();
                            } else {
                                if (hx1VarA != null) {
                                    jC = hx1VarA.c();
                                    jA4 = hx1VarA.a();
                                } else {
                                    k01Var2 = this.l;
                                    if (k01Var2 != null) {
                                        jA3 = C.TIME_UNSET;
                                        break;
                                    }
                                    iC = k01Var2.c();
                                    i6 = 0;
                                    while (true) {
                                        if (i6 < iC) {
                                            jA3 = C.TIME_UNSET;
                                            break;
                                        }
                                        bVarA = k01Var2.a(i6);
                                        if (bVarA instanceof t42) {
                                            t42Var = (t42) bVarA;
                                            if (t42Var.b.equals("TLEN")) {
                                                jA3 = f92.a(Long.parseLong(t42Var.d));
                                                break;
                                            }
                                        }
                                        i6++;
                                    }
                                }
                                hx1VarA = new al0(jC, wzVar4.a(), jA4);
                            }
                            jC = jA3;
                            jA4 = -1;
                            hx1VarA = new al0(jC, wzVar4.a(), jA4);
                        } else if (z01VarA != null) {
                            hx1VarA = z01VarA;
                        } else if (hx1VarA == null) {
                            hx1VarA = null;
                        }
                        if (hx1VarA == null) {
                            if ((this.a & 2) != 0) {
                                z = true;
                            } else {
                                z = false;
                            }
                            wzVar4.b(this.c.c(), 0, 4, false);
                            this.c.e(0);
                            this.d.a(this.c.h());
                            xrVar = new xr(wzVar4.b(), wzVar4.a(), this.d, z);
                        } else {
                            if ((this.a & 2) != 0) {
                                z = true;
                            } else {
                                z = false;
                            }
                            wzVar4.b(this.c.c(), 0, 4, false);
                            this.c.e(0);
                            this.d.a(this.c.h());
                            xrVar = new xr(wzVar4.b(), wzVar4.a(), this.d, z);
                        }
                    }
                    this.q = xrVar;
                    this.h.a(xrVar);
                    a62 a62Var4 = this.j;
                    jc0.a aVarE2 = new jc0.a().e(this.d.b).h(4096).c(this.d.e).l(this.d.d).d(this.e.a).e(this.e.b);
                    if ((this.a & 8) != 0) {
                        k01Var3 = null;
                    } else {
                        k01Var3 = this.l;
                    }
                    a62Var4.a(aVarE2.a(k01Var3).a());
                    this.o = wzVar4.a();
                } else if (this.o != 0) {
                    wzVar = (wz) a80Var;
                    jA = wzVar.a();
                    j = this.o;
                    if (jA < j) {
                        wzVar.a((int) (j - jA));
                    }
                }
                if (this.p == 0) {
                    wzVar2 = (wz) a80Var;
                    wzVar2.c();
                    if (a(wzVar2)) {
                        i = -1;
                        i10 = -1;
                    } else {
                        this.c.e(0);
                        iH = this.c.h();
                        if (((-128000) & iH) != (((long) this.k) & (-128000))) {
                        }
                        wzVar2.a(1);
                        this.k = 0;
                        i = -1;
                    }
                } else {
                    iB = this.j.b(a80Var, this.p, true);
                    if (iB == -1) {
                        i = -1;
                        i10 = -1;
                    } else {
                        i2 = this.p - iB;
                        this.p = i2;
                        if (i2 <= 0) {
                            a62 a62Var5 = this.j;
                            long j6 = this.n;
                            long j7 = this.m;
                            f21.a aVar5 = this.d;
                            a62Var5.a(((j6 * 1000000) / ((long) aVar5.d)) + j7, 1, aVar5.c, 0, null);
                            this.n += (long) this.d.g;
                            this.p = 0;
                        }
                        i = -1;
                    }
                }
            }
            if (i10 == i) {
                hx1 hx1Var2 = this.q;
                if (hx1Var2 instanceof al0) {
                    long j8 = ((this.n * 1000000) / ((long) this.d.d)) + this.m;
                    if (hx1Var2.c() != j8) {
                        ((al0) this.q).d(j8);
                        this.h.a(this.q);
                    }
                }
            }
            return i10;
        }
        throw new IllegalStateException();
    }

    @Override
    public final void a(long j, long j2) {
        this.k = 0;
        this.m = C.TIME_UNSET;
        this.n = 0L;
        this.p = 0;
        this.t = j2;
        hx1 hx1Var = this.q;
        if (!(hx1Var instanceof al0) || ((al0) hx1Var).c(j2)) {
            return;
        }
        this.s = true;
        this.j = this.g;
    }

    @Override
    public final boolean a(a80 a80Var) throws IOException {
        return a((wz) a80Var, true);
    }

    private boolean a(wz wzVar, boolean z) throws IOException {
        int iD;
        int i;
        int iA;
        int i2 = z ? 32768 : 131072;
        wzVar.c();
        if (wzVar.a() == 0) {
            k01 k01VarA = this.f.a(wzVar, (this.a & 8) == 0 ? null : u);
            this.l = k01VarA;
            if (k01VarA != null) {
                this.e.a(k01VarA);
            }
            iD = (int) wzVar.d();
            if (!z) {
                wzVar.a(iD);
            }
            i = 0;
        } else {
            iD = 0;
            i = 0;
        }
        int i3 = i;
        int i4 = i3;
        while (true) {
            if (a(wzVar)) {
                if (i3 > 0) {
                    break;
                }
                throw new EOFException();
            }
            this.c.e(0);
            int iH = this.c.h();
            if ((i == 0 || ((-128000) & iH) == (((long) i) & (-128000))) && (iA = f21.a(iH)) != -1) {
                i3++;
                if (i3 != 1) {
                    if (i3 == 4) {
                        break;
                    }
                } else {
                    this.d.a(iH);
                    i = iH;
                }
                wzVar.a(false, iA - 4);
            } else {
                int i5 = i4 + 1;
                if (i4 == i2) {
                    if (z) {
                        return false;
                    }
                    throw eg1.a("Searched too many bytes.", (Exception) null);
                }
                if (z) {
                    wzVar.c();
                    wzVar.a(false, iD + i5);
                } else {
                    wzVar.a(1);
                }
                i3 = 0;
                i4 = i5;
                i = 0;
            }
        }
        if (z) {
            wzVar.a(iD + i4);
        } else {
            wzVar.c();
        }
        this.k = i;
        return true;
    }
}
