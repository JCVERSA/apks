package defpackage;

import com.transsion.audiotagger.tag.lyrics3.Lyrics3v2Fields;
import java.math.BigInteger;
import java.util.Hashtable;

public abstract class i53 {
    public static final w43[] f = new w43[0];
    public t43 a;
    public w43 b;
    public w43 c;
    public w43[] d;
    public Hashtable e;

    public class a implements pd8 {
        public final boolean a;
        public final boolean b;

        public a(boolean z, boolean z2) {
            this.a = z;
            this.b = z2;
        }

        @Override
        public qd8 a(qd8 qd8Var) {
            gnb gnbVar = qd8Var instanceof gnb ? (gnb) qd8Var : null;
            if (gnbVar == null) {
                gnbVar = new gnb();
            }
            if (gnbVar.b()) {
                return gnbVar;
            }
            if (!gnbVar.a()) {
                if (!this.a && !i53.this.A()) {
                    gnbVar.e();
                    return gnbVar;
                }
                gnbVar.d();
            }
            if (this.b && !gnbVar.c()) {
                if (!i53.this.B()) {
                    gnbVar.e();
                    return gnbVar;
                }
                gnbVar.f();
            }
            return gnbVar;
        }
    }

    public static abstract class b extends i53 {
        public b(t43 t43Var, w43 w43Var, w43 w43Var2) {
            super(t43Var, w43Var, w43Var2);
        }

        @Override
        public boolean A() {
            w43 w43VarL;
            w43 w43VarP;
            t43 t43VarI = i();
            w43 w43Var = this.b;
            w43 w43VarM = t43VarI.m();
            w43 w43VarN = t43VarI.n();
            int iP = t43VarI.p();
            if (iP != 6) {
                w43 w43Var2 = this.c;
                w43 w43VarJ = w43Var2.a(w43Var).j(w43Var2);
                if (iP != 0) {
                    if (iP != 1) {
                        throw new IllegalStateException("unsupported coordinate system");
                    }
                    w43 w43Var3 = this.d[0];
                    if (!w43Var3.h()) {
                        w43 w43VarJ2 = w43Var3.j(w43Var3.o());
                        w43VarJ = w43VarJ.j(w43Var3);
                        w43VarM = w43VarM.j(w43Var3);
                        w43VarN = w43VarN.j(w43VarJ2);
                    }
                }
                return w43VarJ.equals(w43Var.a(w43VarM).j(w43Var.o()).a(w43VarN));
            }
            w43 w43Var4 = this.d[0];
            boolean zH = w43Var4.h();
            boolean zI = w43Var.i();
            w43 w43Var5 = this.c;
            if (zI) {
                w43 w43VarO = w43Var5.o();
                if (!zH) {
                    w43VarN = w43VarN.j(w43Var4.o());
                }
                return w43VarO.equals(w43VarN);
            }
            w43 w43VarO2 = w43Var.o();
            if (zH) {
                w43VarL = w43Var5.o().a(w43Var5).a(w43VarM);
                w43VarP = w43VarO2.o().a(w43VarN);
            } else {
                w43 w43VarO3 = w43Var4.o();
                w43 w43VarO4 = w43VarO3.o();
                w43VarL = w43Var5.a(w43Var4).l(w43Var5, w43VarM, w43VarO3);
                w43VarP = w43VarO2.p(w43VarN, w43VarO4);
            }
            return w43VarL.j(w43VarO2).equals(w43VarP);
        }

        @Override
        public boolean B() {
            BigInteger bigIntegerO = this.a.o();
            if (s43.c.equals(bigIntegerO)) {
                return ((w43.a) y().f()).w() != 0;
            }
            if (!s43.e.equals(bigIntegerO)) {
                return super.B();
            }
            i53 i53VarY = y();
            w43 w43VarF = i53VarY.f();
            t43 t43Var = this.a;
            w43 w43VarE = ((t43.b) t43Var).E(w43VarF.a(t43Var.m()));
            if (w43VarE == null) {
                return false;
            }
            return ((w43.a) w43VarF.j(w43VarE).a(i53VarY.g())).w() == 0;
        }

        @Override
        public i53 C(i53 i53Var) {
            return i53Var.t() ? this : a(i53Var.x());
        }

        public b(t43 t43Var, w43 w43Var, w43 w43Var2, w43[] w43VarArr) {
            super(t43Var, w43Var, w43Var2, w43VarArr);
        }
    }

    public static abstract class c extends i53 {
        public c(t43 t43Var, w43 w43Var, w43 w43Var2) {
            super(t43Var, w43Var, w43Var2);
        }

        @Override
        public boolean A() {
            w43 w43Var = this.b;
            w43 w43Var2 = this.c;
            w43 w43VarM = this.a.m();
            w43 w43VarN = this.a.n();
            w43 w43VarO = w43Var2.o();
            int iJ = j();
            if (iJ != 0) {
                if (iJ == 1) {
                    w43 w43Var3 = this.d[0];
                    if (!w43Var3.h()) {
                        w43 w43VarO2 = w43Var3.o();
                        w43 w43VarJ = w43Var3.j(w43VarO2);
                        w43VarO = w43VarO.j(w43Var3);
                        w43VarM = w43VarM.j(w43VarO2);
                        w43VarN = w43VarN.j(w43VarJ);
                    }
                } else {
                    if (iJ != 2 && iJ != 3 && iJ != 4) {
                        throw new IllegalStateException("unsupported coordinate system");
                    }
                    w43 w43Var4 = this.d[0];
                    if (!w43Var4.h()) {
                        w43 w43VarO3 = w43Var4.o();
                        w43 w43VarO4 = w43VarO3.o();
                        w43 w43VarJ2 = w43VarO3.j(w43VarO4);
                        w43VarM = w43VarM.j(w43VarO4);
                        w43VarN = w43VarN.j(w43VarJ2);
                    }
                }
            }
            return w43VarO.equals(w43Var.o().a(w43VarM).j(w43Var).a(w43VarN));
        }

        @Override
        public i53 C(i53 i53Var) {
            return i53Var.t() ? this : a(i53Var.x());
        }

        @Override
        public boolean h() {
            return g().s();
        }

        public c(t43 t43Var, w43 w43Var, w43 w43Var2, w43[] w43VarArr) {
            super(t43Var, w43Var, w43Var2, w43VarArr);
        }
    }

    public static class d extends b {
        public d(t43 t43Var, w43 w43Var, w43 w43Var2) {
            super(t43Var, w43Var, w43Var2);
        }

        @Override
        public i53 E() {
            w43 w43VarA;
            if (t()) {
                return this;
            }
            t43 t43VarI = i();
            w43 w43VarJ = this.b;
            if (w43VarJ.i()) {
                return t43VarI.s();
            }
            int iP = t43VarI.p();
            if (iP == 0) {
                w43 w43VarA2 = this.c.d(w43VarJ).a(w43VarJ);
                w43 w43VarA3 = w43VarA2.o().a(w43VarA2).a(t43VarI.m());
                return new d(t43VarI, w43VarA3, w43VarJ.p(w43VarA3, w43VarA2.b()));
            }
            if (iP == 1) {
                w43 w43VarJ2 = this.c;
                w43 w43Var = this.d[0];
                boolean zH = w43Var.h();
                w43 w43VarJ3 = zH ? w43VarJ : w43VarJ.j(w43Var);
                if (!zH) {
                    w43VarJ2 = w43VarJ2.j(w43Var);
                }
                w43 w43VarO = w43VarJ.o();
                w43 w43VarA4 = w43VarO.a(w43VarJ2);
                w43 w43VarO2 = w43VarJ3.o();
                w43 w43VarA5 = w43VarA4.a(w43VarJ3);
                w43 w43VarL = w43VarA5.l(w43VarA4, w43VarO2, t43VarI.m());
                return new d(t43VarI, w43VarJ3.j(w43VarL), w43VarO.o().l(w43VarJ3, w43VarL, w43VarA5), new w43[]{w43VarJ3.j(w43VarO2)});
            }
            if (iP != 6) {
                throw new IllegalStateException("unsupported coordinate system");
            }
            w43 w43Var2 = this.c;
            w43 w43Var3 = this.d[0];
            boolean zH2 = w43Var3.h();
            w43 w43VarJ4 = zH2 ? w43Var2 : w43Var2.j(w43Var3);
            w43 w43VarO3 = zH2 ? w43Var3 : w43Var3.o();
            w43 w43VarM = t43VarI.m();
            w43 w43VarJ5 = zH2 ? w43VarM : w43VarM.j(w43VarO3);
            w43 w43VarA6 = w43Var2.o().a(w43VarJ4).a(w43VarJ5);
            if (w43VarA6.i()) {
                return new d(t43VarI, w43VarA6, t43VarI.n().n());
            }
            w43 w43VarO4 = w43VarA6.o();
            w43 w43VarJ6 = zH2 ? w43VarA6 : w43VarA6.j(w43VarO3);
            w43 w43VarN = t43VarI.n();
            if (w43VarN.c() < (t43VarI.r() >> 1)) {
                w43 w43VarO5 = w43Var2.a(w43VarJ).o();
                w43VarA = w43VarO5.a(w43VarA6).a(w43VarO3).j(w43VarO5).a(w43VarN.h() ? w43VarJ5.a(w43VarO3).o() : w43VarJ5.p(w43VarN, w43VarO3.o())).a(w43VarO4);
                if (!w43VarM.i()) {
                    if (!w43VarM.h()) {
                        w43VarA = w43VarA.a(w43VarM.b().j(w43VarJ6));
                    }
                }
                return new d(t43VarI, w43VarO4, w43VarA, new w43[]{w43VarJ6});
            }
            if (!zH2) {
                w43VarJ = w43VarJ.j(w43Var3);
            }
            w43VarA = w43VarJ.p(w43VarA6, w43VarJ4).a(w43VarO4);
            w43VarA = w43VarA.a(w43VarJ6);
            return new d(t43VarI, w43VarO4, w43VarA, new w43[]{w43VarJ6});
        }

        @Override
        public i53 F(i53 i53Var) {
            if (t()) {
                return i53Var;
            }
            if (i53Var.t()) {
                return E();
            }
            t43 t43VarI = i();
            w43 w43Var = this.b;
            if (w43Var.i()) {
                return i53Var;
            }
            if (t43VarI.p() != 6) {
                return E().a(i53Var);
            }
            w43 w43Var2 = i53Var.b;
            w43 w43Var3 = i53Var.d[0];
            if (w43Var2.i() || !w43Var3.h()) {
                return E().a(i53Var);
            }
            w43 w43Var4 = this.c;
            w43 w43Var5 = this.d[0];
            w43 w43Var6 = i53Var.c;
            w43 w43VarO = w43Var.o();
            w43 w43VarO2 = w43Var4.o();
            w43 w43VarO3 = w43Var5.o();
            w43 w43VarA = t43VarI.m().j(w43VarO3).a(w43VarO2).a(w43Var4.j(w43Var5));
            w43 w43VarB = w43Var6.b();
            w43 w43VarL = t43VarI.m().a(w43VarB).j(w43VarO3).a(w43VarO2).l(w43VarA, w43VarO, w43VarO3);
            w43 w43VarJ = w43Var2.j(w43VarO3);
            w43 w43VarO4 = w43VarJ.a(w43VarA).o();
            if (w43VarO4.i()) {
                return w43VarL.i() ? i53Var.E() : t43VarI.s();
            }
            if (w43VarL.i()) {
                return new d(t43VarI, w43VarL, t43VarI.n().n());
            }
            w43 w43VarJ2 = w43VarL.o().j(w43VarJ);
            w43 w43VarJ3 = w43VarL.j(w43VarO4).j(w43VarO3);
            return new d(t43VarI, w43VarJ2, w43VarL.a(w43VarO4).o().l(w43VarA, w43VarB, w43VarJ3), new w43[]{w43VarJ3});
        }

        @Override
        public i53 a(i53 i53Var) {
            w43 w43VarJ;
            w43 w43VarJ2;
            w43 w43VarJ3;
            w43 w43VarJ4;
            w43 w43VarJ5;
            w43 w43VarP;
            if (t()) {
                return i53Var;
            }
            if (i53Var.t()) {
                return this;
            }
            t43 t43VarI = i();
            int iP = t43VarI.p();
            w43 w43VarJ6 = this.b;
            w43 w43Var = i53Var.b;
            if (iP == 0) {
                w43 w43Var2 = this.c;
                w43 w43Var3 = i53Var.c;
                w43 w43VarA = w43VarJ6.a(w43Var);
                w43 w43VarA2 = w43Var2.a(w43Var3);
                if (w43VarA.i()) {
                    return w43VarA2.i() ? E() : t43VarI.s();
                }
                w43 w43VarD = w43VarA2.d(w43VarA);
                w43 w43VarA3 = w43VarD.o().a(w43VarD).a(w43VarA).a(t43VarI.m());
                return new d(t43VarI, w43VarA3, w43VarD.j(w43VarJ6.a(w43VarA3)).a(w43VarA3).a(w43Var2));
            }
            if (iP == 1) {
                w43 w43Var4 = this.c;
                w43 w43VarJ7 = this.d[0];
                w43 w43Var5 = i53Var.c;
                w43 w43Var6 = i53Var.d[0];
                boolean zH = w43Var6.h();
                w43 w43VarA4 = w43VarJ7.j(w43Var5).a(zH ? w43Var4 : w43Var4.j(w43Var6));
                w43 w43VarA5 = w43VarJ7.j(w43Var).a(zH ? w43VarJ6 : w43VarJ6.j(w43Var6));
                if (w43VarA5.i()) {
                    return w43VarA4.i() ? E() : t43VarI.s();
                }
                w43 w43VarO = w43VarA5.o();
                w43 w43VarJ8 = w43VarO.j(w43VarA5);
                if (!zH) {
                    w43VarJ7 = w43VarJ7.j(w43Var6);
                }
                w43 w43VarA6 = w43VarA4.a(w43VarA5);
                w43 w43VarA7 = w43VarA6.l(w43VarA4, w43VarO, t43VarI.m()).j(w43VarJ7).a(w43VarJ8);
                w43 w43VarJ9 = w43VarA5.j(w43VarA7);
                if (!zH) {
                    w43VarO = w43VarO.j(w43Var6);
                }
                return new d(t43VarI, w43VarJ9, w43VarA4.l(w43VarJ6, w43VarA5, w43Var4).l(w43VarO, w43VarA6, w43VarA7), new w43[]{w43VarJ8.j(w43VarJ7)});
            }
            if (iP != 6) {
                throw new IllegalStateException("unsupported coordinate system");
            }
            if (w43VarJ6.i()) {
                return w43Var.i() ? t43VarI.s() : i53Var.a(this);
            }
            w43 w43Var7 = this.c;
            w43 w43Var8 = this.d[0];
            w43 w43Var9 = i53Var.c;
            w43 w43Var10 = i53Var.d[0];
            boolean zH2 = w43Var8.h();
            if (zH2) {
                w43VarJ = w43Var;
                w43VarJ2 = w43Var9;
            } else {
                w43VarJ = w43Var.j(w43Var8);
                w43VarJ2 = w43Var9.j(w43Var8);
            }
            boolean zH3 = w43Var10.h();
            if (zH3) {
                w43VarJ3 = w43Var7;
            } else {
                w43VarJ6 = w43VarJ6.j(w43Var10);
                w43VarJ3 = w43Var7.j(w43Var10);
            }
            w43 w43VarA8 = w43VarJ3.a(w43VarJ2);
            w43 w43VarA9 = w43VarJ6.a(w43VarJ);
            if (w43VarA9.i()) {
                return w43VarA8.i() ? E() : t43VarI.s();
            }
            if (w43Var.i()) {
                i53 i53VarY = y();
                w43 w43VarP2 = i53VarY.p();
                w43 w43VarQ = i53VarY.q();
                w43 w43VarD2 = w43VarQ.a(w43Var9).d(w43VarP2);
                w43VarJ4 = w43VarD2.o().a(w43VarD2).a(w43VarP2).a(t43VarI.m());
                if (w43VarJ4.i()) {
                    return new d(t43VarI, w43VarJ4, t43VarI.n().n());
                }
                w43VarP = w43VarD2.j(w43VarP2.a(w43VarJ4)).a(w43VarJ4).a(w43VarQ).d(w43VarJ4).a(w43VarJ4);
                w43VarJ5 = t43VarI.l(s43.b);
            } else {
                w43 w43VarO2 = w43VarA9.o();
                w43 w43VarJ10 = w43VarA8.j(w43VarJ6);
                w43 w43VarJ11 = w43VarA8.j(w43VarJ);
                w43VarJ4 = w43VarJ10.j(w43VarJ11);
                if (w43VarJ4.i()) {
                    return new d(t43VarI, w43VarJ4, t43VarI.n().n());
                }
                w43 w43VarJ12 = w43VarA8.j(w43VarO2);
                w43VarJ5 = !zH3 ? w43VarJ12.j(w43Var10) : w43VarJ12;
                w43VarP = w43VarJ11.a(w43VarO2).p(w43VarJ5, w43Var7.a(w43Var8));
                if (!zH2) {
                    w43VarJ5 = w43VarJ5.j(w43Var8);
                }
            }
            return new d(t43VarI, w43VarJ4, w43VarP, new w43[]{w43VarJ5});
        }

        @Override
        public i53 d() {
            return new d(null, f(), g());
        }

        @Override
        public boolean h() {
            w43 w43VarN = n();
            if (w43VarN.i()) {
                return false;
            }
            w43 w43VarO = o();
            int iJ = j();
            if (iJ == 5 || iJ == 6) {
                return w43VarO.s() != w43VarN.s();
            }
            return w43VarO.d(w43VarN).s();
        }

        @Override
        public w43 q() {
            int iJ = j();
            if (iJ != 5 && iJ != 6) {
                return this.c;
            }
            w43 w43Var = this.b;
            w43 w43Var2 = this.c;
            if (t() || w43Var.i()) {
                return w43Var2;
            }
            w43 w43VarJ = w43Var2.a(w43Var).j(w43Var);
            if (6 != iJ) {
                return w43VarJ;
            }
            w43 w43Var3 = this.d[0];
            return !w43Var3.h() ? w43VarJ.d(w43Var3) : w43VarJ;
        }

        @Override
        public i53 x() {
            if (t()) {
                return this;
            }
            w43 w43Var = this.b;
            if (w43Var.i()) {
                return this;
            }
            int iJ = j();
            if (iJ == 0) {
                return new d(this.a, w43Var, this.c.a(w43Var));
            }
            if (iJ == 1) {
                return new d(this.a, w43Var, this.c.a(w43Var), new w43[]{this.d[0]});
            }
            if (iJ == 5) {
                return new d(this.a, w43Var, this.c.b());
            }
            if (iJ != 6) {
                throw new IllegalStateException("unsupported coordinate system");
            }
            w43 w43Var2 = this.c;
            w43 w43Var3 = this.d[0];
            return new d(this.a, w43Var, w43Var2.a(w43Var3), new w43[]{w43Var3});
        }

        public d(t43 t43Var, w43 w43Var, w43 w43Var2, w43[] w43VarArr) {
            super(t43Var, w43Var, w43Var2, w43VarArr);
        }
    }

    public static class e extends c {
        public e(t43 t43Var, w43 w43Var, w43 w43Var2) {
            super(t43Var, w43Var, w43Var2);
        }

        @Override
        public i53 D(int i) {
            w43 w43VarO;
            if (i < 0) {
                throw new IllegalArgumentException("'e' cannot be negative");
            }
            if (i == 0 || t()) {
                return this;
            }
            if (i == 1) {
                return E();
            }
            t43 t43VarI = i();
            w43 w43VarR = this.c;
            if (w43VarR.i()) {
                return t43VarI.s();
            }
            int iP = t43VarI.p();
            w43 w43VarM = t43VarI.m();
            w43 w43VarJ = this.b;
            w43[] w43VarArr = this.d;
            int i2 = 0;
            w43 w43VarL = w43VarArr.length < 1 ? t43VarI.l(s43.b) : w43VarArr[0];
            if (!w43VarL.h() && iP != 0) {
                if (iP == 1) {
                    w43VarO = w43VarL.o();
                    w43VarJ = w43VarJ.j(w43VarL);
                    w43VarR = w43VarR.j(w43VarO);
                } else if (iP == 2) {
                    w43VarO = null;
                } else {
                    if (iP != 4) {
                        throw new IllegalStateException("unsupported coordinate system");
                    }
                    w43VarM = J();
                }
                w43VarM = G(w43VarL, w43VarO);
            }
            while (i2 < i) {
                if (w43VarR.i()) {
                    return t43VarI.s();
                }
                w43 w43VarK = K(w43VarJ.o());
                w43 w43VarN = N(w43VarR);
                w43 w43VarJ2 = w43VarN.j(w43VarR);
                w43 w43VarN2 = N(w43VarJ.j(w43VarJ2));
                w43 w43VarN3 = N(w43VarJ2.o());
                if (!w43VarM.i()) {
                    w43VarK = w43VarK.a(w43VarM);
                    w43VarM = N(w43VarN3.j(w43VarM));
                }
                w43 w43VarR2 = w43VarK.o().r(N(w43VarN2));
                w43VarR = w43VarK.j(w43VarN2.r(w43VarR2)).r(w43VarN3);
                w43VarL = w43VarL.h() ? w43VarN : w43VarN.j(w43VarL);
                i2++;
                w43VarJ = w43VarR2;
            }
            if (iP == 0) {
                w43 w43VarG = w43VarL.g();
                w43 w43VarO2 = w43VarG.o();
                return new e(t43VarI, w43VarJ.j(w43VarO2), w43VarR.j(w43VarO2.j(w43VarG)));
            }
            if (iP == 1) {
                return new e(t43VarI, w43VarJ.j(w43VarL), w43VarR, new w43[]{w43VarL.j(w43VarL.o())});
            }
            if (iP == 2) {
                return new e(t43VarI, w43VarJ, w43VarR, new w43[]{w43VarL});
            }
            if (iP == 4) {
                return new e(t43VarI, w43VarJ, w43VarR, new w43[]{w43VarL, w43VarM});
            }
            throw new IllegalStateException("unsupported coordinate system");
        }

        @Override
        public i53 E() {
            w43 w43VarR;
            w43 w43VarJ;
            if (t()) {
                return this;
            }
            t43 t43VarI = i();
            w43 w43Var = this.c;
            if (w43Var.i()) {
                return t43VarI.s();
            }
            int iP = t43VarI.p();
            w43 w43Var2 = this.b;
            if (iP == 0) {
                w43 w43VarD = K(w43Var2.o()).a(i().m()).d(N(w43Var));
                w43 w43VarR2 = w43VarD.o().r(N(w43Var2));
                return new e(t43VarI, w43VarR2, w43VarD.j(w43Var2.r(w43VarR2)).r(w43Var));
            }
            if (iP == 1) {
                w43 w43Var3 = this.d[0];
                boolean zH = w43Var3.h();
                w43 w43VarM = t43VarI.m();
                if (!w43VarM.i() && !zH) {
                    w43VarM = w43VarM.j(w43Var3.o());
                }
                w43 w43VarA = w43VarM.a(K(w43Var2.o()));
                w43 w43VarJ2 = zH ? w43Var : w43Var.j(w43Var3);
                w43 w43VarO = zH ? w43Var.o() : w43VarJ2.j(w43Var);
                w43 w43VarI = I(w43Var2.j(w43VarO));
                w43 w43VarR3 = w43VarA.o().r(N(w43VarI));
                w43 w43VarN = N(w43VarJ2);
                w43 w43VarJ3 = w43VarR3.j(w43VarN);
                w43 w43VarN2 = N(w43VarO);
                return new e(t43VarI, w43VarJ3, w43VarI.r(w43VarR3).j(w43VarA).r(N(w43VarN2.o())), new w43[]{N(zH ? N(w43VarN2) : w43VarN.o()).j(w43VarJ2)});
            }
            if (iP != 2) {
                if (iP == 4) {
                    return M(true);
                }
                throw new IllegalStateException("unsupported coordinate system");
            }
            w43 w43Var4 = this.d[0];
            boolean zH2 = w43Var4.h();
            w43 w43VarO2 = w43Var.o();
            w43 w43VarO3 = w43VarO2.o();
            w43 w43VarM2 = t43VarI.m();
            w43 w43VarM3 = w43VarM2.m();
            if (w43VarM3.t().equals(BigInteger.valueOf(3L))) {
                w43 w43VarO4 = zH2 ? w43Var4 : w43Var4.o();
                w43VarR = K(w43Var2.a(w43VarO4).j(w43Var2.r(w43VarO4)));
                w43VarJ = w43VarO2.j(w43Var2);
            } else {
                w43 w43VarK = K(w43Var2.o());
                if (zH2) {
                    w43VarR = w43VarK.a(w43VarM2);
                } else if (w43VarM2.i()) {
                    w43VarR = w43VarK;
                } else {
                    w43 w43VarO5 = w43Var4.o().o();
                    if (w43VarM3.c() < w43VarM2.c()) {
                        w43VarR = w43VarK.r(w43VarO5.j(w43VarM3));
                    } else {
                        w43VarM2 = w43VarO5.j(w43VarM2);
                        w43VarR = w43VarK.a(w43VarM2);
                    }
                }
                w43VarJ = w43Var2.j(w43VarO2);
            }
            w43 w43VarI2 = I(w43VarJ);
            w43 w43VarR4 = w43VarR.o().r(N(w43VarI2));
            w43 w43VarR5 = w43VarI2.r(w43VarR4).j(w43VarR).r(H(w43VarO3));
            w43 w43VarN3 = N(w43Var);
            if (!zH2) {
                w43VarN3 = w43VarN3.j(w43Var4);
            }
            return new e(t43VarI, w43VarR4, w43VarR5, new w43[]{w43VarN3});
        }

        @Override
        public i53 F(i53 i53Var) {
            if (this == i53Var) {
                return L();
            }
            if (t()) {
                return i53Var;
            }
            if (i53Var.t()) {
                return E();
            }
            w43 w43Var = this.c;
            if (w43Var.i()) {
                return i53Var;
            }
            t43 t43VarI = i();
            int iP = t43VarI.p();
            if (iP != 0) {
                return iP != 4 ? E().a(i53Var) : M(false).a(i53Var);
            }
            w43 w43Var2 = this.b;
            w43 w43Var3 = i53Var.b;
            w43 w43Var4 = i53Var.c;
            w43 w43VarR = w43Var3.r(w43Var2);
            w43 w43VarR2 = w43Var4.r(w43Var);
            if (w43VarR.i()) {
                return w43VarR2.i() ? L() : this;
            }
            w43 w43VarO = w43VarR.o();
            w43 w43VarR3 = w43VarO.j(N(w43Var2).a(w43Var3)).r(w43VarR2.o());
            if (w43VarR3.i()) {
                return t43VarI.s();
            }
            w43 w43VarG = w43VarR3.j(w43VarR).g();
            w43 w43VarJ = w43VarR3.j(w43VarG).j(w43VarR2);
            w43 w43VarR4 = N(w43Var).j(w43VarO).j(w43VarR).j(w43VarG).r(w43VarJ);
            w43 w43VarA = w43VarR4.r(w43VarJ).j(w43VarJ.a(w43VarR4)).a(w43Var3);
            return new e(t43VarI, w43VarA, w43Var2.r(w43VarA).j(w43VarR4).r(w43Var));
        }

        public w43 G(w43 w43Var, w43 w43Var2) {
            w43 w43VarM = i().m();
            if (w43VarM.i() || w43Var.h()) {
                return w43VarM;
            }
            if (w43Var2 == null) {
                w43Var2 = w43Var.o();
            }
            w43 w43VarO = w43Var2.o();
            w43 w43VarM2 = w43VarM.m();
            return w43VarM2.c() < w43VarM.c() ? w43VarO.j(w43VarM2).m() : w43VarO.j(w43VarM);
        }

        public w43 H(w43 w43Var) {
            return I(N(w43Var));
        }

        public w43 I(w43 w43Var) {
            return N(N(w43Var));
        }

        public w43 J() {
            w43[] w43VarArr = this.d;
            w43 w43Var = w43VarArr[1];
            if (w43Var != null) {
                return w43Var;
            }
            w43 w43VarG = G(w43VarArr[0], null);
            w43VarArr[1] = w43VarG;
            return w43VarG;
        }

        public w43 K(w43 w43Var) {
            return N(w43Var).a(w43Var);
        }

        public i53 L() {
            if (t()) {
                return this;
            }
            w43 w43Var = this.c;
            if (w43Var.i()) {
                return this;
            }
            t43 t43VarI = i();
            int iP = t43VarI.p();
            if (iP != 0) {
                return iP != 4 ? E().a(this) : M(false).a(this);
            }
            w43 w43Var2 = this.b;
            w43 w43VarN = N(w43Var);
            w43 w43VarO = w43VarN.o();
            w43 w43VarA = K(w43Var2.o()).a(i().m());
            w43 w43VarR = K(w43Var2).j(w43VarO).r(w43VarA.o());
            if (w43VarR.i()) {
                return i().s();
            }
            w43 w43VarG = w43VarR.j(w43VarN).g();
            w43 w43VarJ = w43VarR.j(w43VarG).j(w43VarA);
            w43 w43VarR2 = w43VarO.o().j(w43VarG).r(w43VarJ);
            w43 w43VarA2 = w43VarR2.r(w43VarJ).j(w43VarJ.a(w43VarR2)).a(w43Var2);
            return new e(t43VarI, w43VarA2, w43Var2.r(w43VarA2).j(w43VarR2).r(w43Var));
        }

        public e M(boolean z) {
            w43 w43Var = this.b;
            w43 w43Var2 = this.c;
            w43 w43Var3 = this.d[0];
            w43 w43VarJ = J();
            w43 w43VarA = K(w43Var.o()).a(w43VarJ);
            w43 w43VarN = N(w43Var2);
            w43 w43VarJ2 = w43VarN.j(w43Var2);
            w43 w43VarN2 = N(w43Var.j(w43VarJ2));
            w43 w43VarR = w43VarA.o().r(N(w43VarN2));
            w43 w43VarN3 = N(w43VarJ2.o());
            w43 w43VarR2 = w43VarA.j(w43VarN2.r(w43VarR)).r(w43VarN3);
            w43 w43VarN4 = z ? N(w43VarN3.j(w43VarJ)) : null;
            if (!w43Var3.h()) {
                w43VarN = w43VarN.j(w43Var3);
            }
            return new e(i(), w43VarR, w43VarR2, new w43[]{w43VarN, w43VarN4});
        }

        public w43 N(w43 w43Var) {
            return w43Var.a(w43Var);
        }

        /*  JADX ERROR: Type inference failed
            jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 5301. Try increasing type updates limit count.
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
            */
        @Override
        public defpackage.i53 a(defpackage.i53 r17) {
            /*
                Method dump skipped, instruction units count: 530
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: i53.e.a(i53):i53");
        }

        @Override
        public i53 d() {
            return new e(null, f(), g());
        }

        @Override
        public w43 r(int i) {
            return (i == 1 && 4 == j()) ? J() : super.r(i);
        }

        @Override
        public i53 x() {
            if (t()) {
                return this;
            }
            t43 t43VarI = i();
            return t43VarI.p() != 0 ? new e(t43VarI, this.b, this.c.m(), this.d) : new e(t43VarI, this.b, this.c.m());
        }

        public e(t43 t43Var, w43 w43Var, w43 w43Var2, w43[] w43VarArr) {
            super(t43Var, w43Var, w43Var2, w43VarArr);
        }
    }

    public i53(t43 t43Var, w43 w43Var, w43 w43Var2) {
        this(t43Var, w43Var, w43Var2, m(t43Var));
    }

    public static w43[] m(t43 t43Var) {
        int iP = t43Var == null ? 0 : t43Var.p();
        if (iP == 0 || iP == 5) {
            return f;
        }
        w43 w43VarL = t43Var.l(s43.b);
        if (iP != 1 && iP != 2) {
            if (iP == 3) {
                return new w43[]{w43VarL, w43VarL, w43VarL};
            }
            if (iP == 4) {
                return new w43[]{w43VarL, t43Var.m()};
            }
            if (iP != 6) {
                throw new IllegalArgumentException("unknown coordinate system");
            }
        }
        return new w43[]{w43VarL};
    }

    public abstract boolean A();

    public boolean B() {
        BigInteger bigIntegerU;
        return s43.b.equals(this.a.o()) || (bigIntegerU = this.a.u()) == null || r43.h(this, bigIntegerU).t();
    }

    public abstract i53 C(i53 i53Var);

    public i53 D(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("'e' cannot be negative");
        }
        while (true) {
            i--;
            if (i < 0) {
                return this;
            }
            this = this.E();
        }
    }

    public abstract i53 E();

    public abstract i53 F(i53 i53Var);

    public abstract i53 a(i53 i53Var);

    public void b() {
        if (!u()) {
            throw new IllegalStateException("point not in normal form");
        }
    }

    public i53 c(w43 w43Var, w43 w43Var2) {
        return i().h(n().j(w43Var), o().j(w43Var2));
    }

    public abstract i53 d();

    public boolean e(i53 i53Var) {
        if (i53Var == null) {
            return false;
        }
        t43 t43VarI = i();
        t43 t43VarI2 = i53Var.i();
        boolean z = t43VarI == null;
        boolean z2 = t43VarI2 == null;
        boolean zT = t();
        boolean zT2 = i53Var.t();
        if (zT || zT2) {
            if (zT && zT2) {
                return z || z2 || t43VarI.k(t43VarI2);
            }
            return false;
        }
        if (!z || !z2) {
            if (z) {
                i53Var = i53Var.y();
            } else if (z2) {
                this = y();
            } else {
                if (!t43VarI.k(t43VarI2)) {
                    return false;
                }
                i53[] i53VarArr = {this, t43VarI.v(i53Var)};
                t43VarI.w(i53VarArr);
                i53 i53Var2 = i53VarArr[0];
                i53Var = i53VarArr[1];
                this = i53Var2;
            }
        }
        return this.p().equals(i53Var.p()) && this.q().equals(i53Var.q());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof i53) {
            return e((i53) obj);
        }
        return false;
    }

    public w43 f() {
        b();
        return p();
    }

    public w43 g() {
        b();
        return q();
    }

    public abstract boolean h();

    public int hashCode() {
        t43 t43VarI = i();
        int i = t43VarI == null ? 0 : ~t43VarI.hashCode();
        if (t()) {
            return i;
        }
        i53 i53VarY = y();
        return (i ^ (i53VarY.p().hashCode() * 17)) ^ (i53VarY.q().hashCode() * 257);
    }

    public t43 i() {
        return this.a;
    }

    public int j() {
        t43 t43Var = this.a;
        if (t43Var == null) {
            return 0;
        }
        return t43Var.p();
    }

    public final i53 k() {
        return y().d();
    }

    public byte[] l(boolean z) {
        if (t()) {
            return new byte[1];
        }
        i53 i53VarY = y();
        byte[] bArrE = i53VarY.p().e();
        if (z) {
            byte[] bArr = new byte[bArrE.length + 1];
            bArr[0] = (byte) (i53VarY.h() ? 3 : 2);
            System.arraycopy(bArrE, 0, bArr, 1, bArrE.length);
            return bArr;
        }
        byte[] bArrE2 = i53VarY.q().e();
        byte[] bArr2 = new byte[bArrE.length + bArrE2.length + 1];
        bArr2[0] = 4;
        System.arraycopy(bArrE, 0, bArr2, 1, bArrE.length);
        System.arraycopy(bArrE2, 0, bArr2, bArrE.length + 1, bArrE2.length);
        return bArr2;
    }

    public final w43 n() {
        return this.b;
    }

    public final w43 o() {
        return this.c;
    }

    public w43 p() {
        return this.b;
    }

    public w43 q() {
        return this.c;
    }

    public w43 r(int i) {
        if (i >= 0) {
            w43[] w43VarArr = this.d;
            if (i < w43VarArr.length) {
                return w43VarArr[i];
            }
        }
        return null;
    }

    public boolean s(boolean z, boolean z2) {
        if (t()) {
            return true;
        }
        return !((gnb) i().y(this, "bc_validity", new a(z, z2))).b();
    }

    public boolean t() {
        if (this.b != null && this.c != null) {
            w43[] w43VarArr = this.d;
            if (w43VarArr.length <= 0 || !w43VarArr[0].i()) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        if (t()) {
            return Lyrics3v2Fields.FIELD_V2_ADDITIONAL_MULTI_LINE_TEXT;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append('(');
        stringBuffer.append(n());
        stringBuffer.append(',');
        stringBuffer.append(o());
        for (int i = 0; i < this.d.length; i++) {
            stringBuffer.append(',');
            stringBuffer.append(this.d[i]);
        }
        stringBuffer.append(')');
        return stringBuffer.toString();
    }

    public boolean u() {
        int iJ = j();
        return iJ == 0 || iJ == 5 || t() || this.d[0].h();
    }

    public boolean v() {
        return s(false, true);
    }

    public boolean w() {
        return s(false, false);
    }

    public abstract i53 x();

    public i53 y() {
        int iJ;
        if (t() || (iJ = j()) == 0 || iJ == 5) {
            return this;
        }
        w43 w43VarR = r(0);
        if (w43VarR.h()) {
            return this;
        }
        if (this.a == null) {
            throw new IllegalStateException("Detached points must be in affine coordinates");
        }
        w43 w43VarZ = this.a.z(zl1.d());
        return z(w43VarR.j(w43VarZ).g().j(w43VarZ));
    }

    public i53 z(w43 w43Var) {
        int iJ = j();
        if (iJ != 1) {
            if (iJ == 2 || iJ == 3 || iJ == 4) {
                w43 w43VarO = w43Var.o();
                return c(w43VarO, w43VarO.j(w43Var));
            }
            if (iJ != 6) {
                throw new IllegalStateException("not a projective coordinate system");
            }
        }
        return c(w43Var, w43Var);
    }

    public i53(t43 t43Var, w43 w43Var, w43 w43Var2, w43[] w43VarArr) {
        this.e = null;
        this.a = t43Var;
        this.b = w43Var;
        this.c = w43Var2;
        this.d = w43VarArr;
    }
}
