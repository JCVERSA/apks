package vz;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import org.mvel2.asm.MethodTooLargeException;

final class s extends r {

    private static final int[] f73988c0 = {0, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 1, 1, 1, 2, 2, 1, 1, 1, 0, 0, 1, 2, 1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, -1, -1, -1, -1, -1, -2, -1, -2, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -3, -4, -3, -4, -3, -3, -3, -3, -1, -2, 1, 1, 1, 2, 2, 2, 0, -1, -2, -1, -2, -1, -2, -1, -2, -1, -2, -1, -2, -1, -2, -1, -2, -1, -2, -1, -2, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -2, -1, -2, -1, -2, 0, 1, 0, 1, -1, -1, 0, 0, 1, 1, -1, 0, -1, 0, 0, 0, -3, -1, -1, -3, -3, -1, -1, -1, -1, -1, -1, -2, -2, -2, -2, -2, -2, -2, -2, 0, 1, 0, -1, -1, -1, -2, -1, -2, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, -1, 0, 0};
    private final int A;
    private b B;
    private b C;
    private int D;
    private b[] E;
    private int F;
    private b[] G;
    private b H;
    private b I;
    private d J;
    private int K;
    private d L;
    private c M;
    private final int N;
    private q O;
    private q P;
    private q Q;
    private int R;
    private int S;
    private int T;
    private int U;
    private int[] V;
    private int[] W;
    private boolean X;
    private boolean Y;
    private int Z;

    private int f73989a0;

    private int f73990b0;

    private final x f73991c;

    private final int f73992d;

    private final int f73993e;

    private final String f73994f;

    private final int f73995g;

    private final String f73996h;

    private int f73997i;

    private int f73998j;

    private final d f73999k;

    private p f74000l;

    private p f74001m;

    private int f74002n;

    private d f74003o;

    private int f74004p;

    private d f74005q;

    private int f74006r;

    private d f74007s;

    private int f74008t;

    private d f74009u;

    private b f74010v;

    private b f74011w;

    private c f74012x;

    private final int f74013y;

    private final int[] f74014z;

    s(x xVar, int i10, String str, String str2, String str3, String[] strArr, int i11) {
        super(458752);
        this.f73999k = new d();
        this.f73991c = xVar;
        this.f73992d = "<init>".equals(str) ? 262144 | i10 : i10;
        this.f73993e = xVar.D(str);
        this.f73994f = str;
        this.f73995g = xVar.D(str2);
        this.f73996h = str2;
        this.A = str3 == null ? 0 : xVar.D(str3);
        if (strArr == null || strArr.length <= 0) {
            this.f74013y = 0;
            this.f74014z = null;
        } else {
            int length = strArr.length;
            this.f74013y = length;
            this.f74014z = new int[length];
            for (int i12 = 0; i12 < this.f74013y; i12++) {
                this.f74014z[i12] = xVar.e(strArr[i12]).f74041a;
            }
        }
        this.N = i11;
        if (i11 != 0) {
            int iC = y.c(str2) >> 2;
            iC = (i10 & 8) != 0 ? iC - 1 : iC;
            this.f73998j = iC;
            this.T = iC;
            q qVar = new q();
            this.O = qVar;
            o(qVar);
        }
    }

    private void G(int i10, q qVar) {
        q qVar2 = this.Q;
        qVar2.f73984l = new k(i10, qVar, qVar2.f73984l);
    }

    private void J() {
        p pVar = this.f74000l;
        while (true) {
            if (pVar == null) {
                break;
            }
            String str = pVar.f73970e;
            int iG = n.g(this.f73991c, str != null ? str : "java/lang/Throwable");
            q qVarE = pVar.f73968c.e();
            qVarE.f73973a = (short) (qVarE.f73973a | 2);
            q qVarE2 = pVar.f73967b.e();
            for (q qVarE3 = pVar.f73966a.e(); qVarE3 != qVarE2; qVarE3 = qVarE3.f73983k) {
                qVarE3.f73984l = new k(iG, qVarE, qVarE3.f73984l);
            }
            pVar = pVar.f73971f;
        }
        n nVar = this.O.f73982j;
        nVar.t(this.f73991c, this.f73992d, this.f73996h, this.f73998j);
        nVar.a(this);
        q qVar = this.O;
        qVar.f73985m = q.f73972n;
        int iMax = 0;
        while (qVar != q.f73972n) {
            q qVar2 = qVar.f73985m;
            qVar.f73985m = null;
            qVar.f73973a = (short) (qVar.f73973a | 8);
            int i10 = qVar.f73982j.i() + qVar.f73980h;
            if (i10 > iMax) {
                iMax = i10;
            }
            for (k kVar = qVar.f73984l; kVar != null; kVar = kVar.f73938c) {
                q qVarE4 = kVar.f73937b.e();
                if (qVar.f73982j.l(this.f73991c, qVarE4.f73982j, kVar.f73936a) && qVarE4.f73985m == null) {
                    qVarE4.f73985m = qVar2;
                    qVar2 = qVarE4;
                }
            }
            qVar = qVar2;
        }
        for (q qVar3 = this.O; qVar3 != null; qVar3 = qVar3.f73983k) {
            if ((qVar3.f73973a & 10) == 10) {
                qVar3.f73982j.a(this);
            }
            if ((qVar3.f73973a & 8) == 0) {
                q qVar4 = qVar3.f73983k;
                int i11 = qVar3.f73976d;
                int i12 = (qVar4 == null ? this.f73999k.f73879b : qVar4.f73976d) - 1;
                if (i12 >= i11) {
                    for (int i13 = i11; i13 < i12; i13++) {
                        this.f73999k.f73878a[i13] = 0;
                    }
                    this.f73999k.f73878a[i12] = -65;
                    this.W[V(i11, 0, 1)] = n.g(this.f73991c, "java/lang/Throwable");
                    U();
                    this.f74000l = p.d(this.f74000l, qVar3, qVar4);
                    iMax = Math.max(iMax, 1);
                }
            }
        }
        this.f73997i = iMax;
    }

    private void K() {
        for (p pVar = this.f74000l; pVar != null; pVar = pVar.f73971f) {
            q qVar = pVar.f73968c;
            q qVar2 = pVar.f73967b;
            for (q qVar3 = pVar.f73966a; qVar3 != qVar2; qVar3 = qVar3.f73983k) {
                if ((qVar3.f73973a & 16) == 0) {
                    qVar3.f73984l = new k(Integer.MAX_VALUE, qVar, qVar3.f73984l);
                } else {
                    k kVar = qVar3.f73984l.f73938c;
                    kVar.f73938c = new k(Integer.MAX_VALUE, qVar, kVar.f73938c);
                }
            }
        }
        if (this.X) {
            this.O.f((short) 1);
            short s10 = 1;
            for (short s11 = 1; s11 <= s10; s11 = (short) (s11 + 1)) {
                for (q qVar4 = this.O; qVar4 != null; qVar4 = qVar4.f73983k) {
                    if ((qVar4.f73973a & 16) != 0 && qVar4.f73981i == s11) {
                        q qVar5 = qVar4.f73984l.f73938c.f73937b;
                        if (qVar5.f73981i == 0) {
                            s10 = (short) (s10 + 1);
                            qVar5.f(s10);
                        }
                    }
                }
            }
            for (q qVar6 = this.O; qVar6 != null; qVar6 = qVar6.f73983k) {
                if ((qVar6.f73973a & 16) != 0) {
                    qVar6.f73984l.f73938c.f73937b.d(qVar6);
                }
            }
        }
        q qVar7 = this.O;
        qVar7.f73985m = q.f73972n;
        int i10 = this.f73997i;
        while (qVar7 != q.f73972n) {
            q qVar8 = qVar7.f73985m;
            short s12 = qVar7.f73978f;
            int i11 = qVar7.f73980h + s12;
            if (i11 > i10) {
                i10 = i11;
            }
            k kVar2 = qVar7.f73984l;
            if ((qVar7.f73973a & 16) != 0) {
                kVar2 = kVar2.f73938c;
            }
            qVar7 = qVar8;
            while (kVar2 != null) {
                q qVar9 = kVar2.f73937b;
                if (qVar9.f73985m == null) {
                    int i12 = kVar2.f73936a;
                    qVar9.f73978f = (short) (i12 == Integer.MAX_VALUE ? 1 : i12 + s12);
                    qVar9.f73985m = qVar7;
                    qVar7 = qVar9;
                }
                kVar2 = kVar2.f73938c;
            }
        }
        this.f73997i = i10;
    }

    private void M() {
        int i10 = this.N;
        if (i10 != 4) {
            if (i10 == 1) {
                this.Q.f73980h = (short) this.S;
                this.Q = null;
                return;
            }
            return;
        }
        q qVar = new q();
        qVar.f73982j = new n(qVar);
        d dVar = this.f73999k;
        qVar.i(dVar.f73878a, dVar.f73879b);
        this.P.f73983k = qVar;
        this.P = qVar;
        this.Q = null;
    }

    private void P(int i10, int i11) {
        while (i10 < i11) {
            n.r(this.f73991c, this.W[i10], this.f74009u);
            i10++;
        }
    }

    private void Q() {
        char c10;
        int[] iArr = this.W;
        int i10 = iArr[1];
        int i11 = iArr[2];
        if (this.f73991c.R() < 50) {
            this.f74009u.k(this.W[0]).k(i10);
            int i12 = i10 + 3;
            P(3, i12);
            this.f74009u.k(i11);
            P(i12, i11 + i12);
            return;
        }
        int i13 = this.f74008t == 0 ? this.W[0] : (this.W[0] - this.V[0]) - 1;
        int i14 = this.V[1];
        int i15 = i10 - i14;
        if (i11 == 0) {
            switch (i15) {
                case -3:
                case -2:
                case -1:
                    c10 = 248;
                    break;
                case 0:
                    c10 = i13 < 64 ? (char) 0 : (char) 251;
                    break;
                case 1:
                case 2:
                case 3:
                    c10 = 252;
                    break;
                default:
                    c10 = 255;
                    break;
            }
        } else if (i15 == 0 && i11 == 1) {
            c10 = i13 < 63 ? '@' : (char) 247;
        } else {
            c10 = 255;
        }
        if (c10 != 255) {
            int i16 = 3;
            for (int i17 = 0; i17 < i14 && i17 < i10; i17++) {
                if (this.W[i16] != this.V[i16]) {
                    c10 = 255;
                } else {
                    i16++;
                }
            }
        }
        if (c10 == 0) {
            this.f74009u.g(i13);
            return;
        }
        if (c10 == '@') {
            this.f74009u.g(i13 + 64);
            P(i10 + 3, i10 + 4);
            return;
        }
        if (c10 == 247) {
            this.f74009u.g(247).k(i13);
            P(i10 + 3, i10 + 4);
            return;
        }
        if (c10 == 248) {
            this.f74009u.g(i15 + 251).k(i13);
            return;
        }
        if (c10 == 251) {
            this.f74009u.g(251).k(i13);
            return;
        }
        if (c10 == 252) {
            this.f74009u.g(i15 + 251).k(i13);
            P(i14 + 3, i10 + 3);
            return;
        }
        this.f74009u.g(255).k(i13).k(i10);
        int i18 = i10 + 3;
        P(3, i18);
        this.f74009u.k(i11);
        P(i18, i11 + i18);
    }

    private void R(Object obj) {
        if (obj instanceof Integer) {
            this.f74009u.g(((Integer) obj).intValue());
        } else if (obj instanceof String) {
            this.f74009u.g(7).k(this.f73991c.e((String) obj).f74041a);
        } else {
            this.f74009u.g(8).k(((q) obj).f73976d);
        }
    }

    private void W(q qVar, q[] qVarArr) {
        q qVar2 = this.Q;
        if (qVar2 != null) {
            int i10 = this.N;
            if (i10 == 4) {
                qVar2.f73982j.d(171, 0, null, null);
                G(0, qVar);
                q qVarE = qVar.e();
                qVarE.f73973a = (short) (qVarE.f73973a | 2);
                for (q qVar3 : qVarArr) {
                    G(0, qVar3);
                    q qVarE2 = qVar3.e();
                    qVarE2.f73973a = (short) (qVarE2.f73973a | 2);
                }
            } else if (i10 == 1) {
                int i11 = this.R - 1;
                this.R = i11;
                G(i11, qVar);
                for (q qVar4 : qVarArr) {
                    G(this.R, qVar4);
                }
            }
            M();
        }
    }

    @Override
    public void A(int i10, int i11, q qVar, q... qVarArr) {
        d dVar = this.f73999k;
        this.Z = dVar.f73879b;
        dVar.g(170).h(null, 0, (4 - (this.f73999k.f73879b % 4)) % 4);
        qVar.h(this.f73999k, this.Z, true);
        this.f73999k.i(i10).i(i11);
        for (q qVar2 : qVarArr) {
            qVar2.h(this.f73999k, this.Z, true);
        }
        W(qVar, qVarArr);
    }

    @Override
    public a B(int i10, z zVar, String str, boolean z10) {
        d dVar = new d();
        a0.a(i10, dVar);
        z.d(zVar, dVar);
        dVar.k(this.f73991c.D(str)).k(0);
        if (z10) {
            b bVar = new b(this.f73991c, dVar, this.f74010v);
            this.f74010v = bVar;
            return bVar;
        }
        b bVar2 = new b(this.f73991c, dVar, this.f74011w);
        this.f74011w = bVar2;
        return bVar2;
    }

    @Override
    public void C(q qVar, q qVar2, q qVar3, String str) {
        p pVar = new p(qVar, qVar2, qVar3, str != null ? this.f73991c.e(str).f74041a : 0, str);
        if (this.f74000l == null) {
            this.f74000l = pVar;
        } else {
            this.f74001m.f73971f = pVar;
        }
        this.f74001m = pVar;
    }

    @Override
    public a D(int i10, z zVar, String str, boolean z10) {
        d dVar = new d();
        a0.a(i10, dVar);
        z.d(zVar, dVar);
        dVar.k(this.f73991c.D(str)).k(0);
        if (z10) {
            b bVar = new b(this.f73991c, dVar, this.H);
            this.H = bVar;
            return bVar;
        }
        b bVar2 = new b(this.f73991c, dVar, this.I);
        this.I = bVar2;
        return bVar2;
    }

    @Override
    public void E(int i10, String str) {
        this.Z = this.f73999k.f73879b;
        w wVarE = this.f73991c.e(str);
        this.f73999k.e(i10, wVarE.f74041a);
        q qVar = this.Q;
        if (qVar != null) {
            int i11 = this.N;
            if (i11 == 4 || i11 == 3) {
                qVar.f73982j.d(i10, this.Z, wVarE, this.f73991c);
            } else if (i10 == 187) {
                int i12 = this.R + 1;
                if (i12 > this.S) {
                    this.S = i12;
                }
                this.R = i12;
            }
        }
    }

    @Override
    public void F(int i10, int i11) {
        d dVar = this.f73999k;
        this.Z = dVar.f73879b;
        if (i11 < 4 && i10 != 169) {
            dVar.g((i10 < 54 ? ((i10 - 21) << 2) + 26 : ((i10 - 54) << 2) + 59) + i11);
        } else if (i11 >= 256) {
            dVar.g(196).e(i10, i11);
        } else {
            dVar.c(i10, i11);
        }
        q qVar = this.Q;
        if (qVar != null) {
            int i12 = this.N;
            if (i12 == 4 || i12 == 3) {
                qVar.f73982j.d(i10, i11, null, null);
            } else if (i10 == 169) {
                qVar.f73973a = (short) (qVar.f73973a | 64);
                qVar.f73979g = (short) this.R;
                M();
            } else {
                int i13 = this.R + f73988c0[i10];
                if (i13 > this.S) {
                    this.S = i13;
                }
                this.R = i13;
            }
        }
        int i14 = this.N;
        if (i14 != 0) {
            int i15 = (i10 == 22 || i10 == 24 || i10 == 55 || i10 == 57) ? i11 + 2 : i11 + 1;
            if (i15 > this.f73998j) {
                this.f73998j = i15;
            }
        }
        if (i10 < 54 || i14 != 4 || this.f74000l == null) {
            return;
        }
        o(new q());
    }

    boolean H(e eVar, int i10, int i11, boolean z10, boolean z11, int i12, int i13, int i14) {
        if (eVar == this.f73991c.S() && i12 == this.f73995g && i13 == this.A) {
            if (z11 == ((this.f73992d & 131072) != 0)) {
                if (z10 != (this.f73991c.R() < 49 && (this.f73992d & 4096) != 0)) {
                    return false;
                }
                if (i14 == 0) {
                    if (this.f74013y != 0) {
                        return false;
                    }
                } else if (eVar.H(i14) == this.f74013y) {
                    int i15 = i14 + 2;
                    for (int i16 = 0; i16 < this.f74013y; i16++) {
                        if (eVar.H(i15) != this.f74014z[i16]) {
                            return false;
                        }
                        i15 += 2;
                    }
                }
                this.f73989a0 = i10 + 6;
                this.f73990b0 = i11 - 6;
                return true;
            }
        }
        return false;
    }

    final void I(c.a aVar) {
        aVar.b(this.M);
        aVar.b(this.f74012x);
    }

    int L() {
        int iF;
        if (this.f73989a0 != 0) {
            return this.f73990b0 + 6;
        }
        int i10 = this.f73999k.f73879b;
        if (i10 <= 0) {
            iF = 8;
        } else {
            if (i10 > 65535) {
                throw new MethodTooLargeException(this.f73991c.O(), this.f73994f, this.f73996h, this.f73999k.f73879b);
            }
            this.f73991c.D("Code");
            iF = this.f73999k.f73879b + 16 + p.b(this.f74000l) + 8;
            if (this.f74009u != null) {
                this.f73991c.D(this.f73991c.R() >= 50 ? "StackMapTable" : "StackMap");
                iF += this.f74009u.f73879b + 8;
            }
            if (this.f74003o != null) {
                this.f73991c.D("LineNumberTable");
                iF += this.f74003o.f73879b + 8;
            }
            if (this.f74005q != null) {
                this.f73991c.D("LocalVariableTable");
                iF += this.f74005q.f73879b + 8;
            }
            if (this.f74007s != null) {
                this.f73991c.D("LocalVariableTypeTable");
                iF += this.f74007s.f73879b + 8;
            }
            b bVar = this.f74010v;
            if (bVar != null) {
                iF += bVar.f("RuntimeVisibleTypeAnnotations");
            }
            b bVar2 = this.f74011w;
            if (bVar2 != null) {
                iF += bVar2.f("RuntimeInvisibleTypeAnnotations");
            }
            c cVar = this.f74012x;
            if (cVar != null) {
                x xVar = this.f73991c;
                d dVar = this.f73999k;
                iF += cVar.b(xVar, dVar.f73878a, dVar.f73879b, this.f73997i, this.f73998j);
            }
        }
        if (this.f74013y > 0) {
            this.f73991c.D("Exceptions");
            iF += (this.f74013y * 2) + 8;
        }
        boolean z10 = this.f73991c.R() < 49;
        if ((this.f73992d & 4096) != 0 && z10) {
            this.f73991c.D("Synthetic");
            iF += 6;
        }
        if (this.A != 0) {
            this.f73991c.D(RequestParameters.SIGNATURE);
            iF += 8;
        }
        if ((this.f73992d & 131072) != 0) {
            this.f73991c.D("Deprecated");
            iF += 6;
        }
        b bVar3 = this.B;
        if (bVar3 != null) {
            iF += bVar3.f("RuntimeVisibleAnnotations");
        }
        b bVar4 = this.C;
        if (bVar4 != null) {
            iF += bVar4.f("RuntimeInvisibleAnnotations");
        }
        b[] bVarArr = this.E;
        if (bVarArr != null) {
            int length = this.D;
            if (length == 0) {
                length = bVarArr.length;
            }
            iF += b.g("RuntimeVisibleParameterAnnotations", bVarArr, length);
        }
        b[] bVarArr2 = this.G;
        if (bVarArr2 != null) {
            int length2 = this.F;
            if (length2 == 0) {
                length2 = bVarArr2.length;
            }
            iF += b.g("RuntimeInvisibleParameterAnnotations", bVarArr2, length2);
        }
        b bVar5 = this.H;
        if (bVar5 != null) {
            iF += bVar5.f("RuntimeVisibleTypeAnnotations");
        }
        b bVar6 = this.I;
        if (bVar6 != null) {
            iF += bVar6.f("RuntimeInvisibleTypeAnnotations");
        }
        if (this.J != null) {
            this.f73991c.D("AnnotationDefault");
            iF += this.J.f73879b + 6;
        }
        if (this.L != null) {
            this.f73991c.D("MethodParameters");
            iF += this.L.f73879b + 7;
        }
        c cVar2 = this.M;
        return cVar2 != null ? iF + cVar2.a(this.f73991c) : iF;
    }

    boolean N() {
        return this.Y;
    }

    boolean O() {
        return this.f74008t > 0;
    }

    /* JADX WARN: Failed to calculate best type for var: r1v61 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r1v61 ??, new type: vz.d
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.calculateFromBounds(FixTypesVisitor.java:159)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.setBestType(FixTypesVisitor.java:136)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:241)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r1v61 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r1v61 ??, new type: vz.d
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r1v68 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r1v68 ??, new type: vz.d
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.calculateFromBounds(FixTypesVisitor.java:159)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.setBestType(FixTypesVisitor.java:136)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:241)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r1v68 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r1v68 ??, new type: vz.d
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r23v0 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r23v0 ??, new type: vz.d
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r2v47 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r2v47 ??, new type: int
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.calculateFromBounds(FixTypesVisitor.java:159)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.setBestType(FixTypesVisitor.java:136)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:241)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r2v47 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r2v47 ??, new type: int
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r2v48 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r2v48 ??, new type: int
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r2v49 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r2v49 ??, new type: int
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to set immutable type for var: r23v0 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r23v0 ??, new type: vz.d
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.applyWithWiderIgnSame(TypeUpdate.java:73)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setImmutableType(TypeInferenceVisitor.java:111)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$1(TypeInferenceVisitor.java:102)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:102)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /*  JADX ERROR: Types fix failed
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r2v47 ??, new type: int
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryPossibleTypes(FixTypesVisitor.java:186)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:245)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
        Caused by: java.lang.NullPointerException
        */
    void S(vz.d r23) {
        /*
            Method dump skipped, instruction units count: 870
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: vz.s.S(vz.d):void");
    }

    void T(int i10, int i11) {
        this.W[i10] = i11;
    }

    void U() {
        if (this.V != null) {
            if (this.f74009u == null) {
                this.f74009u = new d();
            }
            Q();
            this.f74008t++;
        }
        this.V = this.W;
        this.W = null;
    }

    int V(int i10, int i11, int i12) {
        int i13 = i11 + 3 + i12;
        int[] iArr = this.W;
        if (iArr == null || iArr.length < i13) {
            this.W = new int[i13];
        }
        int[] iArr2 = this.W;
        iArr2[0] = i10;
        iArr2[1] = i11;
        iArr2[2] = i12;
        return 3;
    }

    @Override
    public void a(int i10, boolean z10) {
        if (z10) {
            this.D = i10;
        } else {
            this.F = i10;
        }
    }

    @Override
    public a b(String str, boolean z10) {
        d dVar = new d();
        dVar.k(this.f73991c.D(str)).k(0);
        if (z10) {
            b bVar = new b(this.f73991c, dVar, this.B);
            this.B = bVar;
            return bVar;
        }
        b bVar2 = new b(this.f73991c, dVar, this.C);
        this.C = bVar2;
        return bVar2;
    }

    @Override
    public a c() {
        d dVar = new d();
        this.J = dVar;
        return new b(this.f73991c, false, dVar, null);
    }

    @Override
    public void d(c cVar) {
        if (cVar.d()) {
            cVar.f73875c = this.f74012x;
            this.f74012x = cVar;
        } else {
            cVar.f73875c = this.M;
            this.M = cVar;
        }
    }

    @Override
    public void g(int i10, String str, String str2, String str3) {
        int i11;
        int i12;
        this.Z = this.f73999k.f73879b;
        w wVarJ = this.f73991c.j(str, str2, str3);
        this.f73999k.e(i10, wVarJ.f74041a);
        q qVar = this.Q;
        if (qVar != null) {
            int i13 = this.N;
            if (i13 == 4 || i13 == 3) {
                qVar.f73982j.d(i10, 0, wVarJ, this.f73991c);
                return;
            }
            char cCharAt = str3.charAt(0);
            int i14 = -2;
            switch (i10) {
                case 178:
                    i11 = this.R + ((cCharAt == 'D' || cCharAt == 'J') ? 2 : 1);
                    break;
                case 179:
                    i12 = this.R;
                    if (cCharAt != 'D' && cCharAt != 'J') {
                        i14 = -1;
                    }
                    i11 = i12 + i14;
                    break;
                case 180:
                    i11 = this.R + ((cCharAt == 'D' || cCharAt == 'J') ? 1 : 0);
                    break;
                default:
                    i12 = this.R;
                    if (cCharAt == 'D' || cCharAt == 'J') {
                        i14 = -3;
                    }
                    i11 = i12 + i14;
                    break;
            }
            if (i11 > this.S) {
                this.S = i11;
            }
            this.R = i11;
        }
    }

    @Override
    public void h(int i10, int i11, Object[] objArr, int i12, Object[] objArr2) {
        int i13;
        int i14 = this.N;
        if (i14 == 4) {
            return;
        }
        if (i14 == 3) {
            q qVar = this.Q;
            n nVar = qVar.f73982j;
            if (nVar == null) {
                qVar.f73982j = new j(qVar);
                this.Q.f73982j.t(this.f73991c, this.f73992d, this.f73996h, i11);
                this.Q.f73982j.a(this);
            } else {
                if (i10 == -1) {
                    nVar.s(this.f73991c, i11, objArr, i12, objArr2);
                }
                this.Q.f73982j.a(this);
            }
        } else if (i10 == -1) {
            if (this.V == null) {
                int iC = y.c(this.f73996h) >> 2;
                n nVar2 = new n(new q());
                nVar2.t(this.f73991c, this.f73992d, this.f73996h, iC);
                nVar2.a(this);
            }
            this.T = i11;
            int iV = V(this.f73999k.f73879b, i11, i12);
            int i15 = 0;
            while (i15 < i11) {
                this.W[iV] = n.e(this.f73991c, objArr[i15]);
                i15++;
                iV++;
            }
            int i16 = 0;
            while (i16 < i12) {
                this.W[iV] = n.e(this.f73991c, objArr2[i16]);
                i16++;
                iV++;
            }
            U();
        } else {
            if (this.f74009u == null) {
                this.f74009u = new d();
                i13 = this.f73999k.f73879b;
            } else {
                i13 = (this.f73999k.f73879b - this.U) - 1;
                if (i13 < 0) {
                    if (i10 != 3) {
                        throw new IllegalStateException();
                    }
                    return;
                }
            }
            if (i10 == 0) {
                this.T = i11;
                this.f74009u.g(255).k(i13).k(i11);
                for (int i17 = 0; i17 < i11; i17++) {
                    R(objArr[i17]);
                }
                this.f74009u.k(i12);
                for (int i18 = 0; i18 < i12; i18++) {
                    R(objArr2[i18]);
                }
            } else if (i10 == 1) {
                this.T += i11;
                this.f74009u.g(i11 + 251).k(i13);
                for (int i19 = 0; i19 < i11; i19++) {
                    R(objArr[i19]);
                }
            } else if (i10 == 2) {
                this.T -= i11;
                this.f74009u.g(251 - i11).k(i13);
            } else if (i10 != 3) {
                if (i10 != 4) {
                    throw new IllegalArgumentException();
                }
                if (i13 < 64) {
                    this.f74009u.g(i13 + 64);
                } else {
                    this.f74009u.g(247).k(i13);
                }
                R(objArr2[0]);
            } else if (i13 < 64) {
                this.f74009u.g(i13);
            } else {
                this.f74009u.g(251).k(i13);
            }
            this.U = this.f73999k.f73879b;
            this.f74008t++;
        }
        if (this.N == 2) {
            this.R = i12;
            for (int i20 = 0; i20 < i12; i20++) {
                Object obj = objArr2[i20];
                if (obj == v.f74038e || obj == v.f74037d) {
                    this.R++;
                }
            }
            int i21 = this.R;
            if (i21 > this.S) {
                this.S = i21;
            }
        }
        this.f73997i = Math.max(this.f73997i, i12);
        this.f73998j = Math.max(this.f73998j, this.T);
    }

    @Override
    public void i(int i10, int i11) {
        int i12;
        int i13;
        d dVar = this.f73999k;
        this.Z = dVar.f73879b;
        if (i10 > 255 || i11 > 127 || i11 < -128) {
            dVar.g(196).e(Sdk$SDKError.Reason.OMSDK_DOWNLOAD_JS_ERROR_VALUE, i10).k(i11);
        } else {
            dVar.g(Sdk$SDKError.Reason.OMSDK_DOWNLOAD_JS_ERROR_VALUE).c(i10, i11);
        }
        q qVar = this.Q;
        if (qVar != null && ((i13 = this.N) == 4 || i13 == 3)) {
            qVar.f73982j.d(Sdk$SDKError.Reason.OMSDK_DOWNLOAD_JS_ERROR_VALUE, i10, null, null);
        }
        if (this.N == 0 || (i12 = i10 + 1) <= this.f73998j) {
            return;
        }
        this.f73998j = i12;
    }

    @Override
    public void j(int i10) {
        d dVar = this.f73999k;
        this.Z = dVar.f73879b;
        dVar.g(i10);
        q qVar = this.Q;
        if (qVar != null) {
            int i11 = this.N;
            if (i11 == 4 || i11 == 3) {
                qVar.f73982j.d(i10, 0, null, null);
            } else {
                int i12 = this.R + f73988c0[i10];
                if (i12 > this.S) {
                    this.S = i12;
                }
                this.R = i12;
            }
            if ((i10 < 172 || i10 > 177) && i10 != 191) {
                return;
            }
            M();
        }
    }

    @Override
    public a k(int i10, z zVar, String str, boolean z10) {
        d dVar = new d();
        a0.a((i10 & (-16776961)) | (this.Z << 8), dVar);
        z.d(zVar, dVar);
        dVar.k(this.f73991c.D(str)).k(0);
        if (z10) {
            b bVar = new b(this.f73991c, dVar, this.f74010v);
            this.f74010v = bVar;
            return bVar;
        }
        b bVar2 = new b(this.f73991c, dVar, this.f74011w);
        this.f74011w = bVar2;
        return bVar2;
    }

    @Override
    public void l(int i10, int i11) {
        d dVar = this.f73999k;
        this.Z = dVar.f73879b;
        if (i10 == 17) {
            dVar.e(i10, i11);
        } else {
            dVar.c(i10, i11);
        }
        q qVar = this.Q;
        if (qVar != null) {
            int i12 = this.N;
            if (i12 == 4 || i12 == 3) {
                qVar.f73982j.d(i10, i11, null, null);
            } else if (i10 != 188) {
                int i13 = this.R + 1;
                if (i13 > this.S) {
                    this.S = i13;
                }
                this.R = i13;
            }
        }
    }

    @Override
    public void m(String str, String str2, o oVar, Object... objArr) {
        this.Z = this.f73999k.f73879b;
        w wVarO = this.f73991c.o(str, str2, oVar, objArr);
        this.f73999k.e(186, wVarO.f74041a);
        this.f73999k.k(0);
        q qVar = this.Q;
        if (qVar != null) {
            int i10 = this.N;
            if (i10 == 4 || i10 == 3) {
                qVar.f73982j.d(186, 0, wVarO, this.f73991c);
                return;
            }
            int iA = wVarO.a();
            int i11 = this.R + ((iA & 3) - (iA >> 2)) + 1;
            if (i11 > this.S) {
                this.S = i11;
            }
            this.R = i11;
        }
    }

    @Override
    public void n(int i10, q qVar) {
        boolean z10;
        d dVar = this.f73999k;
        int i11 = dVar.f73879b;
        this.Z = i11;
        int i12 = i10 >= 200 ? i10 - 33 : i10;
        if ((qVar.f73973a & 4) == 0 || qVar.f73976d - i11 >= -32768) {
            if (i12 != i10) {
                dVar.g(i10);
                d dVar2 = this.f73999k;
                qVar.h(dVar2, dVar2.f73879b - 1, true);
            } else {
                dVar.g(i12);
                d dVar3 = this.f73999k;
                qVar.h(dVar3, dVar3.f73879b - 1, false);
            }
            z10 = false;
        } else {
            if (i12 == 167) {
                dVar.g(200);
            } else {
                if (i12 == 168) {
                    dVar.g(201);
                } else {
                    dVar.g(i12 >= 198 ? i12 ^ 1 : ((i12 + 1) ^ 1) - 1);
                    this.f73999k.k(8);
                    this.f73999k.g(Sdk$SDKError.Reason.AD_RESPONSE_RETRY_AFTER_VALUE);
                    this.Y = true;
                    z10 = true;
                }
                d dVar4 = this.f73999k;
                qVar.h(dVar4, dVar4.f73879b - 1, true);
            }
            z10 = false;
            d dVar5 = this.f73999k;
            qVar.h(dVar5, dVar5.f73879b - 1, true);
        }
        q qVar2 = this.Q;
        if (qVar2 != null) {
            int i13 = this.N;
            q qVar3 = null;
            if (i13 == 4) {
                qVar2.f73982j.d(i12, 0, null, null);
                q qVarE = qVar.e();
                qVarE.f73973a = (short) (qVarE.f73973a | 2);
                G(0, qVar);
                if (i12 != 167) {
                    qVar3 = new q();
                }
            } else if (i13 == 3) {
                qVar2.f73982j.d(i12, 0, null, null);
            } else if (i13 == 2) {
                this.R += f73988c0[i12];
            } else if (i12 == 168) {
                short s10 = qVar.f73973a;
                if ((s10 & 32) == 0) {
                    qVar.f73973a = (short) (s10 | 32);
                    this.X = true;
                }
                qVar2.f73973a = (short) (qVar2.f73973a | 16);
                G(this.R + 1, qVar);
                qVar3 = new q();
            } else {
                int i14 = this.R + f73988c0[i12];
                this.R = i14;
                G(i14, qVar);
            }
            if (qVar3 != null) {
                if (z10) {
                    qVar3.f73973a = (short) (qVar3.f73973a | 2);
                }
                o(qVar3);
            }
            if (i12 == 167) {
                M();
            }
        }
    }

    @Override
    public void o(q qVar) {
        boolean z10 = this.Y;
        d dVar = this.f73999k;
        this.Y = z10 | qVar.i(dVar.f73878a, dVar.f73879b);
        short s10 = qVar.f73973a;
        if ((s10 & 1) != 0) {
            return;
        }
        int i10 = this.N;
        if (i10 == 4) {
            q qVar2 = this.Q;
            if (qVar2 != null) {
                if (qVar.f73976d == qVar2.f73976d) {
                    qVar2.f73973a = (short) ((s10 & 2) | qVar2.f73973a);
                    qVar.f73982j = qVar2.f73982j;
                    return;
                }
                G(0, qVar);
            }
            q qVar3 = this.P;
            if (qVar3 != null) {
                if (qVar.f73976d == qVar3.f73976d) {
                    qVar3.f73973a = (short) (qVar3.f73973a | (qVar.f73973a & 2));
                    qVar.f73982j = qVar3.f73982j;
                    this.Q = qVar3;
                    return;
                }
                qVar3.f73983k = qVar;
            }
            this.P = qVar;
            this.Q = qVar;
            qVar.f73982j = new n(qVar);
            return;
        }
        if (i10 == 3) {
            q qVar4 = this.Q;
            if (qVar4 == null) {
                this.Q = qVar;
                return;
            } else {
                qVar4.f73982j.f73952a = qVar;
                return;
            }
        }
        if (i10 != 1) {
            if (i10 == 2 && this.Q == null) {
                this.Q = qVar;
                return;
            }
            return;
        }
        q qVar5 = this.Q;
        if (qVar5 != null) {
            qVar5.f73980h = (short) this.S;
            G(this.R, qVar);
        }
        this.Q = qVar;
        this.R = 0;
        this.S = 0;
        q qVar6 = this.P;
        if (qVar6 != null) {
            qVar6.f73983k = qVar;
        }
        this.P = qVar;
    }

    @Override
    public void p(Object obj) {
        char cCharAt;
        this.Z = this.f73999k.f73879b;
        w wVarD = this.f73991c.d(obj);
        int i10 = wVarD.f74041a;
        int i11 = wVarD.f74042b;
        boolean z10 = i11 == 5 || i11 == 6 || (i11 == 17 && ((cCharAt = wVarD.f74045e.charAt(0)) == 'J' || cCharAt == 'D'));
        if (z10) {
            this.f73999k.e(20, i10);
        } else if (i10 >= 256) {
            this.f73999k.e(19, i10);
        } else {
            this.f73999k.c(18, i10);
        }
        q qVar = this.Q;
        if (qVar != null) {
            int i12 = this.N;
            if (i12 == 4 || i12 == 3) {
                qVar.f73982j.d(18, 0, wVarD, this.f73991c);
                return;
            }
            int i13 = this.R + (z10 ? 2 : 1);
            if (i13 > this.S) {
                this.S = i13;
            }
            this.R = i13;
        }
    }

    @Override
    public void q(int i10, q qVar) {
        if (this.f74003o == null) {
            this.f74003o = new d();
        }
        this.f74002n++;
        this.f74003o.k(qVar.f73976d);
        this.f74003o.k(i10);
    }

    @Override
    public void r(String str, String str2, String str3, q qVar, q qVar2, int i10) {
        if (str3 != null) {
            if (this.f74007s == null) {
                this.f74007s = new d();
            }
            this.f74006r++;
            this.f74007s.k(qVar.f73976d).k(qVar2.f73976d - qVar.f73976d).k(this.f73991c.D(str)).k(this.f73991c.D(str3)).k(i10);
        }
        if (this.f74005q == null) {
            this.f74005q = new d();
        }
        this.f74004p++;
        this.f74005q.k(qVar.f73976d).k(qVar2.f73976d - qVar.f73976d).k(this.f73991c.D(str)).k(this.f73991c.D(str2)).k(i10);
        if (this.N != 0) {
            char cCharAt = str2.charAt(0);
            int i11 = i10 + ((cCharAt == 'J' || cCharAt == 'D') ? 2 : 1);
            if (i11 > this.f73998j) {
                this.f73998j = i11;
            }
        }
    }

    @Override
    public a s(int i10, z zVar, q[] qVarArr, q[] qVarArr2, int[] iArr, String str, boolean z10) {
        d dVar = new d();
        dVar.g(i10 >>> 24).k(qVarArr.length);
        for (int i11 = 0; i11 < qVarArr.length; i11++) {
            dVar.k(qVarArr[i11].f73976d).k(qVarArr2[i11].f73976d - qVarArr[i11].f73976d).k(iArr[i11]);
        }
        z.d(zVar, dVar);
        dVar.k(this.f73991c.D(str)).k(0);
        if (z10) {
            b bVar = new b(this.f73991c, dVar, this.f74010v);
            this.f74010v = bVar;
            return bVar;
        }
        b bVar2 = new b(this.f73991c, dVar, this.f74011w);
        this.f74011w = bVar2;
        return bVar2;
    }

    @Override
    public void t(q qVar, int[] iArr, q[] qVarArr) {
        d dVar = this.f73999k;
        this.Z = dVar.f73879b;
        dVar.g(171).h(null, 0, (4 - (this.f73999k.f73879b % 4)) % 4);
        qVar.h(this.f73999k, this.Z, true);
        this.f73999k.i(qVarArr.length);
        for (int i10 = 0; i10 < qVarArr.length; i10++) {
            this.f73999k.i(iArr[i10]);
            qVarArr[i10].h(this.f73999k, this.Z, true);
        }
        W(qVar, qVarArr);
    }

    @Override
    public void u(int i10, int i11) {
        int i12 = this.N;
        if (i12 == 4) {
            J();
            return;
        }
        if (i12 == 1) {
            K();
        } else if (i12 == 2) {
            this.f73997i = this.S;
        } else {
            this.f73997i = i10;
            this.f73998j = i11;
        }
    }

    @Override
    public void w(int i10, String str, String str2, String str3, boolean z10) {
        this.Z = this.f73999k.f73879b;
        w wVarX = this.f73991c.x(str, str2, str3, z10);
        if (i10 == 185) {
            this.f73999k.e(185, wVarX.f74041a).c(wVarX.a() >> 2, 0);
        } else {
            this.f73999k.e(i10, wVarX.f74041a);
        }
        q qVar = this.Q;
        if (qVar != null) {
            int i11 = this.N;
            if (i11 == 4 || i11 == 3) {
                qVar.f73982j.d(i10, 0, wVarX, this.f73991c);
                return;
            }
            int iA = wVarX.a();
            int i12 = (iA & 3) - (iA >> 2);
            int i13 = i10 == 184 ? this.R + i12 + 1 : this.R + i12;
            if (i13 > this.S) {
                this.S = i13;
            }
            this.R = i13;
        }
    }

    @Override
    public void x(String str, int i10) {
        this.Z = this.f73999k.f73879b;
        w wVarE = this.f73991c.e(str);
        this.f73999k.e(197, wVarE.f74041a).g(i10);
        q qVar = this.Q;
        if (qVar != null) {
            int i11 = this.N;
            if (i11 == 4 || i11 == 3) {
                qVar.f73982j.d(197, i10, wVarE, this.f73991c);
            } else {
                this.R += 1 - i10;
            }
        }
    }

    @Override
    public void y(String str, int i10) {
        if (this.L == null) {
            this.L = new d();
        }
        this.K++;
        this.L.k(str == null ? 0 : this.f73991c.D(str)).k(i10);
    }

    @Override
    public a z(int i10, String str, boolean z10) {
        d dVar = new d();
        dVar.k(this.f73991c.D(str)).k(0);
        if (z10) {
            if (this.E == null) {
                this.E = new b[y.b(this.f73996h).length];
            }
            b[] bVarArr = this.E;
            b bVar = new b(this.f73991c, dVar, bVarArr[i10]);
            bVarArr[i10] = bVar;
            return bVar;
        }
        if (this.G == null) {
            this.G = new b[y.b(this.f73996h).length];
        }
        b[] bVarArr2 = this.G;
        b bVar2 = new b(this.f73991c, dVar, bVarArr2[i10]);
        bVarArr2[i10] = bVar2;
        return bVar2;
    }

    @Override
    public void e() {
    }

    @Override
    public void f() {
    }
}
