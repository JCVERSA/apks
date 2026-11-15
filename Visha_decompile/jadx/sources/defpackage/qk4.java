package defpackage;

import android.util.SparseArray;
import androidx.media3.common.C;
import com.google.android.exoplayer2.k;
import java.util.ArrayList;
import java.util.Arrays;

public final class qk4 implements m83 {
    public final ra9 a;
    public final boolean b;
    public final boolean c;
    public long g;
    public String i;
    public fva j;
    public b k;
    public boolean l;
    public boolean n;
    public final boolean[] h = new boolean[3];
    public final zx6 d = new zx6(7, 128);
    public final zx6 e = new zx6(8, 128);
    public final zx6 f = new zx6(6, 128);
    public long m = C.TIME_UNSET;
    public final qw7 o = new qw7();

    public static final class b {
        public final fva a;
        public final boolean b;
        public final boolean c;
        public final SparseArray d = new SparseArray();
        public final SparseArray e = new SparseArray();
        public final rw7 f;
        public byte[] g;
        public int h;
        public int i;
        public long j;
        public boolean k;
        public long l;
        public a m;
        public a n;
        public boolean o;
        public long p;
        public long q;
        public boolean r;

        public static final class a {
            public boolean a;
            public boolean b;
            public ay6.c c;
            public int d;
            public int e;
            public int f;
            public int g;
            public boolean h;
            public boolean i;
            public boolean j;
            public boolean k;
            public int l;
            public int m;
            public int n;
            public int o;
            public int p;

            public a() {
            }

            public void b() {
                this.b = false;
                this.a = false;
            }

            public final boolean c(a aVar) {
                int i;
                int i2;
                int i3;
                boolean z;
                if (!this.a) {
                    return false;
                }
                if (!aVar.a) {
                    return true;
                }
                ay6.c cVar = (ay6.c) zi.i(this.c);
                ay6.c cVar2 = (ay6.c) zi.i(aVar.c);
                return (this.f == aVar.f && this.g == aVar.g && this.h == aVar.h && (!this.i || !aVar.i || this.j == aVar.j) && (((i = this.d) == (i2 = aVar.d) || (i != 0 && i2 != 0)) && (((i3 = cVar.l) != 0 || cVar2.l != 0 || (this.m == aVar.m && this.n == aVar.n)) && ((i3 != 1 || cVar2.l != 1 || (this.o == aVar.o && this.p == aVar.p)) && (z = this.k) == aVar.k && (!z || this.l == aVar.l))))) ? false : true;
            }

            public boolean d() {
                int i;
                return this.b && ((i = this.e) == 7 || i == 2);
            }

            public void e(ay6.c cVar, int i, int i2, int i3, int i4, boolean z, boolean z2, boolean z3, boolean z4, int i5, int i6, int i7, int i8, int i9) {
                this.c = cVar;
                this.d = i;
                this.e = i2;
                this.f = i3;
                this.g = i4;
                this.h = z;
                this.i = z2;
                this.j = z3;
                this.k = z4;
                this.l = i5;
                this.m = i6;
                this.n = i7;
                this.o = i8;
                this.p = i9;
                this.a = true;
                this.b = true;
            }

            public void f(int i) {
                this.e = i;
                this.b = true;
            }
        }

        public b(fva fvaVar, boolean z, boolean z2) {
            this.a = fvaVar;
            this.b = z;
            this.c = z2;
            this.m = new a();
            this.n = new a();
            byte[] bArr = new byte[128];
            this.g = bArr;
            this.f = new rw7(bArr, 0, 0);
            g();
        }

        /* JADX WARN: Code duplicated, block: B:53:0x0100  */
        /* JADX WARN: Code duplicated, block: B:54:0x0103  */
        /* JADX WARN: Code duplicated, block: B:56:0x0107  */
        /* JADX WARN: Code duplicated, block: B:58:0x010f A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:59:0x0110  */
        /* JADX WARN: Code duplicated, block: B:60:0x0119  */
        /* JADX WARN: Code duplicated, block: B:63:0x011f  */
        /* JADX WARN: Code duplicated, block: B:65:0x0129 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:66:0x012a  */
        /* JADX WARN: Code duplicated, block: B:76:0x0157  */
        public void a(byte[] bArr, int i, int i2) {
            boolean z;
            boolean z2;
            boolean zD;
            boolean z3;
            int iH;
            int i3;
            int i4;
            int iG;
            int i5;
            int iG2;
            int iE;
            if (this.k) {
                int i6 = i2 - i;
                byte[] bArr2 = this.g;
                int length = bArr2.length;
                int i7 = this.h;
                if (length < i7 + i6) {
                    this.g = Arrays.copyOf(bArr2, (i7 + i6) * 2);
                }
                System.arraycopy(bArr, i, this.g, this.h, i6);
                int i8 = this.h + i6;
                this.h = i8;
                this.f.i(this.g, 0, i8);
                if (this.f.b(8)) {
                    this.f.k();
                    int iE2 = this.f.e(2);
                    this.f.l(5);
                    if (this.f.c()) {
                        this.f.h();
                        if (this.f.c()) {
                            int iH2 = this.f.h();
                            if (!this.c) {
                                this.k = false;
                                this.n.f(iH2);
                                return;
                            }
                            if (this.f.c()) {
                                int iH3 = this.f.h();
                                if (this.e.indexOfKey(iH3) < 0) {
                                    this.k = false;
                                    return;
                                }
                                ay6.b bVar = (ay6.b) this.e.get(iH3);
                                ay6.c cVar = (ay6.c) this.d.get(bVar.b);
                                if (cVar.i) {
                                    if (!this.f.b(2)) {
                                        return;
                                    } else {
                                        this.f.l(2);
                                    }
                                }
                                if (this.f.b(cVar.k)) {
                                    int iE3 = this.f.e(cVar.k);
                                    if (!cVar.j) {
                                        if (this.f.b(1)) {
                                            boolean zD2 = this.f.d();
                                            if (!zD2) {
                                                z = zD2;
                                                z2 = false;
                                            } else {
                                                if (!this.f.b(1)) {
                                                    return;
                                                }
                                                z = zD2;
                                                z2 = true;
                                                zD = this.f.d();
                                            }
                                            if (this.i == 5) {
                                                z3 = true;
                                            } else {
                                                z3 = false;
                                            }
                                            if (z3) {
                                                iH = 0;
                                            } else if (!this.f.c()) {
                                                return;
                                            } else {
                                                iH = this.f.h();
                                            }
                                            i3 = cVar.l;
                                            if (i3 != 0) {
                                                if (this.f.b(cVar.m)) {
                                                    iE = this.f.e(cVar.m);
                                                    if (bVar.c || z) {
                                                        i4 = iE;
                                                        iG = 0;
                                                    } else {
                                                        if (!this.f.c()) {
                                                            return;
                                                        }
                                                        iG = this.f.g();
                                                        i4 = iE;
                                                        i5 = 0;
                                                    }
                                                    iG2 = i5;
                                                    this.n.e(cVar, iE2, iH2, iE3, iH3, z, z2, zD, z3, iH, i4, iG, i5, iG2);
                                                    this.k = false;
                                                }
                                                return;
                                            }
                                            if (i3 == 1 || cVar.n) {
                                                i4 = 0;
                                                iG = 0;
                                            } else {
                                                if (!this.f.c()) {
                                                    return;
                                                }
                                                int iG3 = this.f.g();
                                                if (!bVar.c || z) {
                                                    i5 = iG3;
                                                    i4 = 0;
                                                    iG = 0;
                                                    iG2 = 0;
                                                } else {
                                                    if (!this.f.c()) {
                                                        return;
                                                    }
                                                    iG2 = this.f.g();
                                                    i5 = iG3;
                                                    i4 = 0;
                                                    iG = 0;
                                                }
                                            }
                                            this.n.e(cVar, iE2, iH2, iE3, iH3, z, z2, zD, z3, iH, i4, iG, i5, iG2);
                                            this.k = false;
                                            i5 = iG;
                                            iG2 = i5;
                                            this.n.e(cVar, iE2, iH2, iE3, iH3, z, z2, zD, z3, iH, i4, iG, i5, iG2);
                                            this.k = false;
                                        }
                                        return;
                                    }
                                    z = false;
                                    z2 = false;
                                    zD = z2;
                                    if (this.i == 5) {
                                        z3 = true;
                                    } else {
                                        z3 = false;
                                    }
                                    if (z3) {
                                        iH = 0;
                                    } else if (!this.f.c()) {
                                        return;
                                    } else {
                                        iH = this.f.h();
                                    }
                                    i3 = cVar.l;
                                    if (i3 != 0) {
                                        if (i3 == 1) {
                                        }
                                        i4 = 0;
                                        iG = 0;
                                    } else {
                                        if (this.f.b(cVar.m)) {
                                            return;
                                        }
                                        iE = this.f.e(cVar.m);
                                        if (bVar.c) {
                                        }
                                        i4 = iE;
                                        iG = 0;
                                    }
                                    i5 = iG;
                                    iG2 = i5;
                                    this.n.e(cVar, iE2, iH2, iE3, iH3, z, z2, zD, z3, iH, i4, iG, i5, iG2);
                                    this.k = false;
                                }
                            }
                        }
                    }
                }
            }
        }

        public boolean b(long j, int i, boolean z, boolean z2) {
            boolean z3 = false;
            if (this.i == 9 || (this.c && this.n.c(this.m))) {
                if (z && this.o) {
                    d(i + ((int) (j - this.j)));
                }
                this.p = this.j;
                this.q = this.l;
                this.r = false;
                this.o = true;
            }
            if (this.b) {
                z2 = this.n.d();
            }
            boolean z4 = this.r;
            int i2 = this.i;
            if (i2 == 5 || (z2 && i2 == 1)) {
                z3 = true;
            }
            boolean z5 = z4 | z3;
            this.r = z5;
            return z5;
        }

        public boolean c() {
            return this.c;
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        public final void d(int i) {
            long j = this.q;
            if (j == C.TIME_UNSET) {
                return;
            }
            boolean z = this.r;
            this.a.e(j, z ? 1 : 0, (int) (this.j - this.p), i, null);
        }

        public void e(ay6.b bVar) {
            this.e.append(bVar.a, bVar);
        }

        public void f(ay6.c cVar) {
            this.d.append(cVar.d, cVar);
        }

        public void g() {
            this.k = false;
            this.o = false;
            this.n.b();
        }

        public void h(long j, int i, long j2) {
            this.i = i;
            this.l = j2;
            this.j = j;
            if (!this.b || i != 1) {
                if (!this.c) {
                    return;
                }
                if (i != 5 && i != 1 && i != 2) {
                    return;
                }
            }
            a aVar = this.m;
            this.m = this.n;
            this.n = aVar;
            aVar.b();
            this.h = 0;
            this.k = true;
        }
    }

    public qk4(ra9 ra9Var, boolean z, boolean z2) {
        this.a = ra9Var;
        this.b = z;
        this.c = z2;
    }

    private void d() {
        zi.i(this.j);
        blb.j(this.k);
    }

    @Override
    public void a(qw7 qw7Var) {
        d();
        int iE = qw7Var.e();
        int iF = qw7Var.f();
        byte[] bArrD = qw7Var.d();
        this.g += (long) qw7Var.a();
        this.j.d(qw7Var, qw7Var.a());
        while (true) {
            int iC = ay6.c(bArrD, iE, iF, this.h);
            if (iC == iF) {
                f(bArrD, iE, iF);
                return;
            }
            int iF2 = ay6.f(bArrD, iC);
            int i = iC - iE;
            if (i > 0) {
                f(bArrD, iE, iC);
            }
            int i2 = iF - iC;
            long j = this.g - ((long) i2);
            e(j, i2, i < 0 ? -i : 0, this.m);
            g(j, iF2, this.m);
            iE = iC + 3;
        }
    }

    @Override
    public void b() {
    }

    @Override
    public void c(qk3 qk3Var, nab.d dVar) {
        dVar.a();
        this.i = dVar.b();
        fva fvaVarTrack = qk3Var.track(dVar.c(), 2);
        this.j = fvaVarTrack;
        this.k = new b(fvaVarTrack, this.b, this.c);
        this.a.b(qk3Var, dVar);
    }

    public final void e(long j, int i, int i2, long j2) {
        if (!this.l || this.k.c()) {
            this.d.b(i2);
            this.e.b(i2);
            if (this.l) {
                if (this.d.c()) {
                    zx6 zx6Var = this.d;
                    this.k.f(ay6.l(zx6Var.d, 3, zx6Var.e));
                    this.d.d();
                } else if (this.e.c()) {
                    zx6 zx6Var2 = this.e;
                    this.k.e(ay6.j(zx6Var2.d, 3, zx6Var2.e));
                    this.e.d();
                }
            } else if (this.d.c() && this.e.c()) {
                ArrayList arrayList = new ArrayList();
                zx6 zx6Var3 = this.d;
                arrayList.add(Arrays.copyOf(zx6Var3.d, zx6Var3.e));
                zx6 zx6Var4 = this.e;
                arrayList.add(Arrays.copyOf(zx6Var4.d, zx6Var4.e));
                zx6 zx6Var5 = this.d;
                ay6.c cVarL = ay6.l(zx6Var5.d, 3, zx6Var5.e);
                zx6 zx6Var6 = this.e;
                ay6.b bVarJ = ay6.j(zx6Var6.d, 3, zx6Var6.e);
                this.j.b(new k.b().S(this.i).e0("video/avc").I(b51.a(cVarL.a, cVarL.b, cVarL.c)).j0(cVarL.f).Q(cVarL.g).a0(cVarL.h).T(arrayList).E());
                this.l = true;
                this.k.f(cVarL);
                this.k.e(bVarJ);
                this.d.d();
                this.e.d();
            }
        }
        if (this.f.b(i2)) {
            zx6 zx6Var7 = this.f;
            this.o.M(this.f.d, ay6.q(zx6Var7.d, zx6Var7.e));
            this.o.O(4);
            this.a.a(j2, this.o);
        }
        if (this.k.b(j, i, this.l, this.n)) {
            this.n = false;
        }
    }

    public final void f(byte[] bArr, int i, int i2) {
        if (!this.l || this.k.c()) {
            this.d.a(bArr, i, i2);
            this.e.a(bArr, i, i2);
        }
        this.f.a(bArr, i, i2);
        this.k.a(bArr, i, i2);
    }

    public final void g(long j, int i, long j2) {
        if (!this.l || this.k.c()) {
            this.d.e(i);
            this.e.e(i);
        }
        this.f.e(i);
        this.k.h(j, i, j2);
    }

    @Override
    public void packetStarted(long j, int i) {
        if (j != C.TIME_UNSET) {
            this.m = j;
        }
        this.n |= (i & 2) != 0;
    }

    @Override
    public void seek() {
        this.g = 0L;
        this.n = false;
        this.m = C.TIME_UNSET;
        ay6.a(this.h);
        this.d.d();
        this.e.d();
        this.f.d();
        b bVar = this.k;
        if (bVar != null) {
            bVar.g();
        }
    }
}
