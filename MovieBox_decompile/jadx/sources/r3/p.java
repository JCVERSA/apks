package r3;

import android.util.SparseArray;
import androidx.media3.common.util.a1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.ArrayList;
import java.util.Arrays;
import k2.s0;

public final class p implements m {

    private final g0 f70644a;

    private final boolean f70645b;

    private final boolean f70646c;

    private final String f70647d;

    private long f70651h;

    private String f70653j;

    private s0 f70654k;

    private b f70655l;

    private boolean f70656m;

    private boolean f70658o;

    private final boolean[] f70652i = new boolean[3];

    private final w f70648e = new w(7, 128);

    private final w f70649f = new w(8, 128);

    private final w f70650g = new w(6, 128);

    private long f70657n = C.TIME_UNSET;

    private final androidx.media3.common.util.j0 f70659p = new androidx.media3.common.util.j0();

    private static final class b {

        private final s0 f70660a;

        private final boolean f70661b;

        private final boolean f70662c;

        private final SparseArray f70663d = new SparseArray();

        private final SparseArray f70664e = new SparseArray();

        private final androidx.media3.container.h f70665f;

        private byte[] f70666g;

        private int f70667h;

        private int f70668i;

        private long f70669j;

        private boolean f70670k;

        private long f70671l;

        private a f70672m;

        private a f70673n;

        private boolean f70674o;

        private long f70675p;

        private long f70676q;

        private boolean f70677r;

        private boolean f70678s;

        private static final class a {

            private boolean f70679a;

            private boolean f70680b;

            private androidx.media3.container.g.m f70681c;

            private int f70682d;

            private int f70683e;

            private int f70684f;

            private int f70685g;

            private boolean f70686h;

            private boolean f70687i;

            private boolean f70688j;

            private boolean f70689k;

            private int f70690l;

            private int f70691m;

            private int f70692n;

            private int f70693o;

            private int f70694p;

            private a() {
            }

            public boolean c(a aVar) {
                int i10;
                int i11;
                int i12;
                boolean z10;
                if (!this.f70679a) {
                    return false;
                }
                if (!aVar.f70679a) {
                    return true;
                }
                androidx.media3.container.g.m mVar = (androidx.media3.container.g.m) androidx.media3.common.util.a.i(this.f70681c);
                androidx.media3.container.g.m mVar2 = (androidx.media3.container.g.m) androidx.media3.common.util.a.i(aVar.f70681c);
                return (this.f70684f == aVar.f70684f && this.f70685g == aVar.f70685g && this.f70686h == aVar.f70686h && (!this.f70687i || !aVar.f70687i || this.f70688j == aVar.f70688j) && (((i10 = this.f70682d) == (i11 = aVar.f70682d) || (i10 != 0 && i11 != 0)) && (((i12 = mVar.f10354n) != 0 || mVar2.f10354n != 0 || (this.f70691m == aVar.f70691m && this.f70692n == aVar.f70692n)) && ((i12 != 1 || mVar2.f10354n != 1 || (this.f70693o == aVar.f70693o && this.f70694p == aVar.f70694p)) && (z10 = this.f70689k) == aVar.f70689k && (!z10 || this.f70690l == aVar.f70690l))))) ? false : true;
            }

            public void b() {
                this.f70680b = false;
                this.f70679a = false;
            }

            public boolean d() {
                int i10;
                return this.f70680b && ((i10 = this.f70683e) == 7 || i10 == 2);
            }

            public void e(androidx.media3.container.g.m mVar, int i10, int i11, int i12, int i13, boolean z10, boolean z11, boolean z12, boolean z13, int i14, int i15, int i16, int i17, int i18) {
                this.f70681c = mVar;
                this.f70682d = i10;
                this.f70683e = i11;
                this.f70684f = i12;
                this.f70685g = i13;
                this.f70686h = z10;
                this.f70687i = z11;
                this.f70688j = z12;
                this.f70689k = z13;
                this.f70690l = i14;
                this.f70691m = i15;
                this.f70692n = i16;
                this.f70693o = i17;
                this.f70694p = i18;
                this.f70679a = true;
                this.f70680b = true;
            }

            public void f(int i10) {
                this.f70683e = i10;
                this.f70680b = true;
            }
        }

        public b(s0 s0Var, boolean z10, boolean z11) {
            this.f70660a = s0Var;
            this.f70661b = z10;
            this.f70662c = z11;
            this.f70672m = new a();
            this.f70673n = new a();
            byte[] bArr = new byte[128];
            this.f70666g = bArr;
            this.f70665f = new androidx.media3.container.h(bArr, 0, 0);
            g();
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
        private void d(int i10) {
            long j10 = this.f70676q;
            if (j10 != C.TIME_UNSET) {
                long j11 = this.f70669j;
                long j12 = this.f70675p;
                if (j11 == j12) {
                    return;
                }
                boolean z10 = this.f70677r;
                this.f70660a.b(j10, z10 ? 1 : 0, (int) (j11 - j12), i10, null);
            }
        }

        private void h() {
            boolean zD = this.f70661b ? this.f70673n.d() : this.f70678s;
            boolean z10 = this.f70677r;
            int i10 = this.f70668i;
            boolean z11 = true;
            if (i10 != 5 && (!zD || i10 != 1)) {
                z11 = false;
            }
            this.f70677r = z10 | z11;
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
        public void a(byte[] bArr, int i10, int i11) {
            boolean z10;
            boolean z11;
            boolean zE;
            boolean z12;
            int i12;
            int i13;
            int i14;
            int iH;
            int i15;
            int iH2;
            int iF;
            if (this.f70670k) {
                int i16 = i11 - i10;
                byte[] bArr2 = this.f70666g;
                int length = bArr2.length;
                int i17 = this.f70667h;
                if (length < i17 + i16) {
                    this.f70666g = Arrays.copyOf(bArr2, (i17 + i16) * 2);
                }
                System.arraycopy(bArr, i10, this.f70666g, this.f70667h, i16);
                int i18 = this.f70667h + i16;
                this.f70667h = i18;
                this.f70665f.j(this.f70666g, 0, i18);
                if (this.f70665f.c(8)) {
                    this.f70665f.l();
                    int iF2 = this.f70665f.f(2);
                    this.f70665f.m(5);
                    if (this.f70665f.d()) {
                        this.f70665f.i();
                        if (this.f70665f.d()) {
                            int i19 = this.f70665f.i();
                            if (!this.f70662c) {
                                this.f70670k = false;
                                this.f70673n.f(i19);
                                return;
                            }
                            if (this.f70665f.d()) {
                                int i20 = this.f70665f.i();
                                if (this.f70664e.indexOfKey(i20) < 0) {
                                    this.f70670k = false;
                                    return;
                                }
                                androidx.media3.container.g.l lVar = (androidx.media3.container.g.l) this.f70664e.get(i20);
                                androidx.media3.container.g.m mVar = (androidx.media3.container.g.m) this.f70663d.get(lVar.f10339b);
                                if (mVar.f10351k) {
                                    if (!this.f70665f.c(2)) {
                                        return;
                                    } else {
                                        this.f70665f.m(2);
                                    }
                                }
                                if (this.f70665f.c(mVar.f10353m)) {
                                    int iF3 = this.f70665f.f(mVar.f10353m);
                                    if (!mVar.f10352l) {
                                        if (this.f70665f.c(1)) {
                                            boolean zE2 = this.f70665f.e();
                                            if (!zE2) {
                                                z10 = zE2;
                                                z11 = false;
                                            } else {
                                                if (!this.f70665f.c(1)) {
                                                    return;
                                                }
                                                z10 = zE2;
                                                z11 = true;
                                                zE = this.f70665f.e();
                                            }
                                            if (this.f70668i == 5) {
                                                z12 = true;
                                            } else {
                                                z12 = false;
                                            }
                                            if (z12) {
                                                i12 = 0;
                                            } else if (!this.f70665f.d()) {
                                                return;
                                            } else {
                                                i12 = this.f70665f.i();
                                            }
                                            i13 = mVar.f10354n;
                                            if (i13 != 0) {
                                                if (this.f70665f.c(mVar.f10355o)) {
                                                    iF = this.f70665f.f(mVar.f10355o);
                                                    if (lVar.f10340c || z10) {
                                                        i14 = iF;
                                                        iH = 0;
                                                    } else {
                                                        if (!this.f70665f.d()) {
                                                            return;
                                                        }
                                                        iH = this.f70665f.h();
                                                        i14 = iF;
                                                        i15 = 0;
                                                    }
                                                    iH2 = i15;
                                                    this.f70673n.e(mVar, iF2, i19, iF3, i20, z10, z11, zE, z12, i12, i14, iH, i15, iH2);
                                                    this.f70670k = false;
                                                }
                                                return;
                                            }
                                            if (i13 == 1 || mVar.f10356p) {
                                                i14 = 0;
                                                iH = 0;
                                            } else {
                                                if (!this.f70665f.d()) {
                                                    return;
                                                }
                                                int iH3 = this.f70665f.h();
                                                if (!lVar.f10340c || z10) {
                                                    i15 = iH3;
                                                    i14 = 0;
                                                    iH = 0;
                                                    iH2 = 0;
                                                } else {
                                                    if (!this.f70665f.d()) {
                                                        return;
                                                    }
                                                    iH2 = this.f70665f.h();
                                                    i15 = iH3;
                                                    i14 = 0;
                                                    iH = 0;
                                                }
                                            }
                                            this.f70673n.e(mVar, iF2, i19, iF3, i20, z10, z11, zE, z12, i12, i14, iH, i15, iH2);
                                            this.f70670k = false;
                                            i15 = iH;
                                            iH2 = i15;
                                            this.f70673n.e(mVar, iF2, i19, iF3, i20, z10, z11, zE, z12, i12, i14, iH, i15, iH2);
                                            this.f70670k = false;
                                        }
                                        return;
                                    }
                                    z10 = false;
                                    z11 = false;
                                    zE = z11;
                                    if (this.f70668i == 5) {
                                        z12 = true;
                                    } else {
                                        z12 = false;
                                    }
                                    if (z12) {
                                        i12 = 0;
                                    } else if (!this.f70665f.d()) {
                                        return;
                                    } else {
                                        i12 = this.f70665f.i();
                                    }
                                    i13 = mVar.f10354n;
                                    if (i13 != 0) {
                                        if (i13 == 1) {
                                        }
                                        i14 = 0;
                                        iH = 0;
                                    } else {
                                        if (this.f70665f.c(mVar.f10355o)) {
                                            return;
                                        }
                                        iF = this.f70665f.f(mVar.f10355o);
                                        if (lVar.f10340c) {
                                        }
                                        i14 = iF;
                                        iH = 0;
                                    }
                                    i15 = iH;
                                    iH2 = i15;
                                    this.f70673n.e(mVar, iF2, i19, iF3, i20, z10, z11, zE, z12, i12, i14, iH, i15, iH2);
                                    this.f70670k = false;
                                }
                            }
                        }
                    }
                }
            }
        }

        public boolean b(long j10, int i10, boolean z10) {
            if (this.f70668i == 9 || (this.f70662c && this.f70673n.c(this.f70672m))) {
                if (z10 && this.f70674o) {
                    d(i10 + ((int) (j10 - this.f70669j)));
                }
                this.f70675p = this.f70669j;
                this.f70676q = this.f70671l;
                this.f70677r = false;
                this.f70674o = true;
            }
            h();
            this.f70668i = 24;
            return this.f70677r;
        }

        public boolean c() {
            return this.f70662c;
        }

        public void e(androidx.media3.container.g.l lVar) {
            this.f70664e.append(lVar.f10338a, lVar);
        }

        public void f(androidx.media3.container.g.m mVar) {
            this.f70663d.append(mVar.f10344d, mVar);
        }

        public void g() {
            this.f70670k = false;
            this.f70674o = false;
            this.f70673n.b();
        }

        public void i(long j10, int i10, long j11, boolean z10) {
            this.f70668i = i10;
            this.f70671l = j11;
            this.f70669j = j10;
            this.f70678s = z10;
            if (!this.f70661b || i10 != 1) {
                if (!this.f70662c) {
                    return;
                }
                if (i10 != 5 && i10 != 1 && i10 != 2) {
                    return;
                }
            }
            a aVar = this.f70672m;
            this.f70672m = this.f70673n;
            this.f70673n = aVar;
            aVar.b();
            this.f70667h = 0;
            this.f70670k = true;
        }
    }

    public p(g0 g0Var, boolean z10, boolean z11, String str) {
        this.f70644a = g0Var;
        this.f70645b = z10;
        this.f70646c = z11;
        this.f70647d = str;
    }

    private void b() {
        androidx.media3.common.util.a.i(this.f70654k);
        a1.i(this.f70655l);
    }

    private void f(long j10, int i10, int i11, long j11) {
        if (!this.f70656m || this.f70655l.c()) {
            this.f70648e.b(i11);
            this.f70649f.b(i11);
            if (this.f70656m) {
                if (this.f70648e.c()) {
                    w wVar = this.f70648e;
                    androidx.media3.container.g.m mVarC = androidx.media3.container.g.C(wVar.f70799d, 3, wVar.f70800e);
                    this.f70644a.g(mVarC.f10360t);
                    this.f70655l.f(mVarC);
                    this.f70648e.d();
                } else if (this.f70649f.c()) {
                    w wVar2 = this.f70649f;
                    this.f70655l.e(androidx.media3.container.g.A(wVar2.f70799d, 3, wVar2.f70800e));
                    this.f70649f.d();
                }
            } else if (this.f70648e.c() && this.f70649f.c()) {
                ArrayList arrayList = new ArrayList();
                w wVar3 = this.f70648e;
                arrayList.add(Arrays.copyOf(wVar3.f70799d, wVar3.f70800e));
                w wVar4 = this.f70649f;
                arrayList.add(Arrays.copyOf(wVar4.f70799d, wVar4.f70800e));
                w wVar5 = this.f70648e;
                androidx.media3.container.g.m mVarC2 = androidx.media3.container.g.C(wVar5.f70799d, 3, wVar5.f70800e);
                w wVar6 = this.f70649f;
                androidx.media3.container.g.l lVarA = androidx.media3.container.g.A(wVar6.f70799d, 3, wVar6.f70800e);
                this.f70654k.d(new androidx.media3.common.r.b().f0(this.f70653j).U(this.f70647d).u0(MimeTypes.VIDEO_H264).S(androidx.media3.common.util.j.d(mVarC2.f10341a, mVarC2.f10342b, mVarC2.f10343c)).B0(mVarC2.f10346f).d0(mVarC2.f10347g).T(new androidx.media3.common.i.b().d(mVarC2.f10357q).c(mVarC2.f10358r).e(mVarC2.f10359s).g(mVarC2.f10349i + 8).b(mVarC2.f10350j + 8).a()).q0(mVarC2.f10348h).g0(arrayList).l0(mVarC2.f10360t).N());
                this.f70656m = true;
                this.f70644a.g(mVarC2.f10360t);
                this.f70655l.f(mVarC2);
                this.f70655l.e(lVarA);
                this.f70648e.d();
                this.f70649f.d();
            }
        }
        if (this.f70650g.b(i11)) {
            w wVar7 = this.f70650g;
            this.f70659p.U(this.f70650g.f70799d, androidx.media3.container.g.L(wVar7.f70799d, wVar7.f70800e));
            this.f70659p.W(4);
            this.f70644a.c(j11, this.f70659p);
        }
        if (this.f70655l.b(j10, i10, this.f70656m)) {
            this.f70658o = false;
        }
    }

    private void g(byte[] bArr, int i10, int i11) {
        if (!this.f70656m || this.f70655l.c()) {
            this.f70648e.a(bArr, i10, i11);
            this.f70649f.a(bArr, i10, i11);
        }
        this.f70650g.a(bArr, i10, i11);
        this.f70655l.a(bArr, i10, i11);
    }

    private void h(long j10, int i10, long j11) {
        if (!this.f70656m || this.f70655l.c()) {
            this.f70648e.e(i10);
            this.f70649f.e(i10);
        }
        this.f70650g.e(i10);
        this.f70655l.i(j10, i10, j11, this.f70658o);
    }

    @Override
    public void a(androidx.media3.common.util.j0 j0Var) {
        int i10;
        b();
        int iF = j0Var.f();
        int iG = j0Var.g();
        byte[] bArrE = j0Var.e();
        this.f70651h += (long) j0Var.a();
        this.f70654k.c(j0Var, j0Var.a());
        while (true) {
            int iE = androidx.media3.container.g.e(bArrE, iF, iG, this.f70652i);
            if (iE == iG) {
                g(bArrE, iF, iG);
                return;
            }
            int iJ = androidx.media3.container.g.j(bArrE, iE);
            if (iE <= 0 || bArrE[iE - 1] != 0) {
                i10 = 3;
            } else {
                iE--;
                i10 = 4;
            }
            int i11 = iE;
            int i12 = i10;
            int i13 = i11 - iF;
            if (i13 > 0) {
                g(bArrE, iF, i11);
            }
            int i14 = iG - i11;
            long j10 = this.f70651h - ((long) i14);
            f(j10, i14, i13 < 0 ? -i13 : 0, this.f70657n);
            h(j10, iJ, this.f70657n);
            iF = i11 + i12;
        }
    }

    @Override
    public void c(long j10, int i10) {
        this.f70657n = j10;
        this.f70658o |= (i10 & 2) != 0;
    }

    @Override
    public void d(boolean z10) {
        b();
        if (z10) {
            this.f70644a.e();
            f(this.f70651h, 0, 0, this.f70657n);
            h(this.f70651h, 9, this.f70657n);
            f(this.f70651h, 0, 0, this.f70657n);
        }
    }

    @Override
    public void e(k2.t tVar, l0.d dVar) {
        dVar.a();
        this.f70653j = dVar.b();
        s0 s0VarTrack = tVar.track(dVar.c(), 2);
        this.f70654k = s0VarTrack;
        this.f70655l = new b(s0VarTrack, this.f70645b, this.f70646c);
        this.f70644a.d(tVar, dVar);
    }

    @Override
    public void seek() {
        this.f70651h = 0L;
        this.f70658o = false;
        this.f70657n = C.TIME_UNSET;
        androidx.media3.container.g.c(this.f70652i);
        this.f70648e.d();
        this.f70649f.d();
        this.f70650g.d();
        this.f70644a.b();
        b bVar = this.f70655l;
        if (bVar != null) {
            bVar.g();
        }
    }
}
