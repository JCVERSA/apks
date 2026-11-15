package s9;

import android.util.SparseArray;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.ArrayList;
import java.util.Arrays;

public final class p implements m {

    private final d0 f71831a;

    private final boolean f71832b;

    private final boolean f71833c;

    private long f71837g;

    private String f71839i;

    private i9.e0 f71840j;

    private b f71841k;

    private boolean f71842l;

    private boolean f71844n;

    private final boolean[] f71838h = new boolean[3];

    private final u f71834d = new u(7, 128);

    private final u f71835e = new u(8, 128);

    private final u f71836f = new u(6, 128);

    private long f71843m = C.TIME_UNSET;

    private final com.google.android.exoplayer2.util.d0 f71845o = new com.google.android.exoplayer2.util.d0();

    private static final class b {

        private final i9.e0 f71846a;

        private final boolean f71847b;

        private final boolean f71848c;

        private final SparseArray f71849d = new SparseArray();

        private final SparseArray f71850e = new SparseArray();

        private final com.google.android.exoplayer2.util.e0 f71851f;

        private byte[] f71852g;

        private int f71853h;

        private int f71854i;

        private long f71855j;

        private boolean f71856k;

        private long f71857l;

        private a f71858m;

        private a f71859n;

        private boolean f71860o;

        private long f71861p;

        private long f71862q;

        private boolean f71863r;

        private static final class a {

            private boolean f71864a;

            private boolean f71865b;

            private com.google.android.exoplayer2.util.x.c f71866c;

            private int f71867d;

            private int f71868e;

            private int f71869f;

            private int f71870g;

            private boolean f71871h;

            private boolean f71872i;

            private boolean f71873j;

            private boolean f71874k;

            private int f71875l;

            private int f71876m;

            private int f71877n;

            private int f71878o;

            private int f71879p;

            private a() {
            }

            public boolean c(a aVar) {
                int i10;
                int i11;
                int i12;
                boolean z10;
                if (!this.f71864a) {
                    return false;
                }
                if (!aVar.f71864a) {
                    return true;
                }
                com.google.android.exoplayer2.util.x.c cVar = (com.google.android.exoplayer2.util.x.c) com.google.android.exoplayer2.util.a.i(this.f71866c);
                com.google.android.exoplayer2.util.x.c cVar2 = (com.google.android.exoplayer2.util.x.c) com.google.android.exoplayer2.util.a.i(aVar.f71866c);
                return (this.f71869f == aVar.f71869f && this.f71870g == aVar.f71870g && this.f71871h == aVar.f71871h && (!this.f71872i || !aVar.f71872i || this.f71873j == aVar.f71873j) && (((i10 = this.f71867d) == (i11 = aVar.f71867d) || (i10 != 0 && i11 != 0)) && (((i12 = cVar.f26920l) != 0 || cVar2.f26920l != 0 || (this.f71876m == aVar.f71876m && this.f71877n == aVar.f71877n)) && ((i12 != 1 || cVar2.f26920l != 1 || (this.f71878o == aVar.f71878o && this.f71879p == aVar.f71879p)) && (z10 = this.f71874k) == aVar.f71874k && (!z10 || this.f71875l == aVar.f71875l))))) ? false : true;
            }

            public void b() {
                this.f71865b = false;
                this.f71864a = false;
            }

            public boolean d() {
                int i10;
                return this.f71865b && ((i10 = this.f71868e) == 7 || i10 == 2);
            }

            public void e(com.google.android.exoplayer2.util.x.c cVar, int i10, int i11, int i12, int i13, boolean z10, boolean z11, boolean z12, boolean z13, int i14, int i15, int i16, int i17, int i18) {
                this.f71866c = cVar;
                this.f71867d = i10;
                this.f71868e = i11;
                this.f71869f = i12;
                this.f71870g = i13;
                this.f71871h = z10;
                this.f71872i = z11;
                this.f71873j = z12;
                this.f71874k = z13;
                this.f71875l = i14;
                this.f71876m = i15;
                this.f71877n = i16;
                this.f71878o = i17;
                this.f71879p = i18;
                this.f71864a = true;
                this.f71865b = true;
            }

            public void f(int i10) {
                this.f71868e = i10;
                this.f71865b = true;
            }
        }

        public b(i9.e0 e0Var, boolean z10, boolean z11) {
            this.f71846a = e0Var;
            this.f71847b = z10;
            this.f71848c = z11;
            this.f71858m = new a();
            this.f71859n = new a();
            byte[] bArr = new byte[128];
            this.f71852g = bArr;
            this.f71851f = new com.google.android.exoplayer2.util.e0(bArr, 0, 0);
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
            long j10 = this.f71862q;
            if (j10 == C.TIME_UNSET) {
                return;
            }
            boolean z10 = this.f71863r;
            this.f71846a.e(j10, z10 ? 1 : 0, (int) (this.f71855j - this.f71861p), i10, null);
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
            boolean zD;
            boolean z12;
            int iH;
            int i12;
            int i13;
            int iG;
            int i14;
            int iG2;
            int iE;
            if (this.f71856k) {
                int i15 = i11 - i10;
                byte[] bArr2 = this.f71852g;
                int length = bArr2.length;
                int i16 = this.f71853h;
                if (length < i16 + i15) {
                    this.f71852g = Arrays.copyOf(bArr2, (i16 + i15) * 2);
                }
                System.arraycopy(bArr, i10, this.f71852g, this.f71853h, i15);
                int i17 = this.f71853h + i15;
                this.f71853h = i17;
                this.f71851f.i(this.f71852g, 0, i17);
                if (this.f71851f.b(8)) {
                    this.f71851f.k();
                    int iE2 = this.f71851f.e(2);
                    this.f71851f.l(5);
                    if (this.f71851f.c()) {
                        this.f71851f.h();
                        if (this.f71851f.c()) {
                            int iH2 = this.f71851f.h();
                            if (!this.f71848c) {
                                this.f71856k = false;
                                this.f71859n.f(iH2);
                                return;
                            }
                            if (this.f71851f.c()) {
                                int iH3 = this.f71851f.h();
                                if (this.f71850e.indexOfKey(iH3) < 0) {
                                    this.f71856k = false;
                                    return;
                                }
                                com.google.android.exoplayer2.util.x.b bVar = (com.google.android.exoplayer2.util.x.b) this.f71850e.get(iH3);
                                com.google.android.exoplayer2.util.x.c cVar = (com.google.android.exoplayer2.util.x.c) this.f71849d.get(bVar.f26907b);
                                if (cVar.f26917i) {
                                    if (!this.f71851f.b(2)) {
                                        return;
                                    } else {
                                        this.f71851f.l(2);
                                    }
                                }
                                if (this.f71851f.b(cVar.f26919k)) {
                                    int iE3 = this.f71851f.e(cVar.f26919k);
                                    if (!cVar.f26918j) {
                                        if (this.f71851f.b(1)) {
                                            boolean zD2 = this.f71851f.d();
                                            if (!zD2) {
                                                z10 = zD2;
                                                z11 = false;
                                            } else {
                                                if (!this.f71851f.b(1)) {
                                                    return;
                                                }
                                                z10 = zD2;
                                                z11 = true;
                                                zD = this.f71851f.d();
                                            }
                                            if (this.f71854i == 5) {
                                                z12 = true;
                                            } else {
                                                z12 = false;
                                            }
                                            if (z12) {
                                                iH = 0;
                                            } else if (!this.f71851f.c()) {
                                                return;
                                            } else {
                                                iH = this.f71851f.h();
                                            }
                                            i12 = cVar.f26920l;
                                            if (i12 != 0) {
                                                if (this.f71851f.b(cVar.f26921m)) {
                                                    iE = this.f71851f.e(cVar.f26921m);
                                                    if (bVar.f26908c || z10) {
                                                        i13 = iE;
                                                        iG = 0;
                                                    } else {
                                                        if (!this.f71851f.c()) {
                                                            return;
                                                        }
                                                        iG = this.f71851f.g();
                                                        i13 = iE;
                                                        i14 = 0;
                                                    }
                                                    iG2 = i14;
                                                    this.f71859n.e(cVar, iE2, iH2, iE3, iH3, z10, z11, zD, z12, iH, i13, iG, i14, iG2);
                                                    this.f71856k = false;
                                                }
                                                return;
                                            }
                                            if (i12 == 1 || cVar.f26922n) {
                                                i13 = 0;
                                                iG = 0;
                                            } else {
                                                if (!this.f71851f.c()) {
                                                    return;
                                                }
                                                int iG3 = this.f71851f.g();
                                                if (!bVar.f26908c || z10) {
                                                    i14 = iG3;
                                                    i13 = 0;
                                                    iG = 0;
                                                    iG2 = 0;
                                                } else {
                                                    if (!this.f71851f.c()) {
                                                        return;
                                                    }
                                                    iG2 = this.f71851f.g();
                                                    i14 = iG3;
                                                    i13 = 0;
                                                    iG = 0;
                                                }
                                            }
                                            this.f71859n.e(cVar, iE2, iH2, iE3, iH3, z10, z11, zD, z12, iH, i13, iG, i14, iG2);
                                            this.f71856k = false;
                                            i14 = iG;
                                            iG2 = i14;
                                            this.f71859n.e(cVar, iE2, iH2, iE3, iH3, z10, z11, zD, z12, iH, i13, iG, i14, iG2);
                                            this.f71856k = false;
                                        }
                                        return;
                                    }
                                    z10 = false;
                                    z11 = false;
                                    zD = z11;
                                    if (this.f71854i == 5) {
                                        z12 = true;
                                    } else {
                                        z12 = false;
                                    }
                                    if (z12) {
                                        iH = 0;
                                    } else if (!this.f71851f.c()) {
                                        return;
                                    } else {
                                        iH = this.f71851f.h();
                                    }
                                    i12 = cVar.f26920l;
                                    if (i12 != 0) {
                                        if (i12 == 1) {
                                        }
                                        i13 = 0;
                                        iG = 0;
                                    } else {
                                        if (this.f71851f.b(cVar.f26921m)) {
                                            return;
                                        }
                                        iE = this.f71851f.e(cVar.f26921m);
                                        if (bVar.f26908c) {
                                        }
                                        i13 = iE;
                                        iG = 0;
                                    }
                                    i14 = iG;
                                    iG2 = i14;
                                    this.f71859n.e(cVar, iE2, iH2, iE3, iH3, z10, z11, zD, z12, iH, i13, iG, i14, iG2);
                                    this.f71856k = false;
                                }
                            }
                        }
                    }
                }
            }
        }

        public boolean b(long j10, int i10, boolean z10, boolean z11) {
            boolean z12 = false;
            if (this.f71854i == 9 || (this.f71848c && this.f71859n.c(this.f71858m))) {
                if (z10 && this.f71860o) {
                    d(i10 + ((int) (j10 - this.f71855j)));
                }
                this.f71861p = this.f71855j;
                this.f71862q = this.f71857l;
                this.f71863r = false;
                this.f71860o = true;
            }
            if (this.f71847b) {
                z11 = this.f71859n.d();
            }
            boolean z13 = this.f71863r;
            int i11 = this.f71854i;
            if (i11 == 5 || (z11 && i11 == 1)) {
                z12 = true;
            }
            boolean z14 = z13 | z12;
            this.f71863r = z14;
            return z14;
        }

        public boolean c() {
            return this.f71848c;
        }

        public void e(com.google.android.exoplayer2.util.x.b bVar) {
            this.f71850e.append(bVar.f26906a, bVar);
        }

        public void f(com.google.android.exoplayer2.util.x.c cVar) {
            this.f71849d.append(cVar.f26912d, cVar);
        }

        public void g() {
            this.f71856k = false;
            this.f71860o = false;
            this.f71859n.b();
        }

        public void h(long j10, int i10, long j11) {
            this.f71854i = i10;
            this.f71857l = j11;
            this.f71855j = j10;
            if (!this.f71847b || i10 != 1) {
                if (!this.f71848c) {
                    return;
                }
                if (i10 != 5 && i10 != 1 && i10 != 2) {
                    return;
                }
            }
            a aVar = this.f71858m;
            this.f71858m = this.f71859n;
            this.f71859n = aVar;
            aVar.b();
            this.f71853h = 0;
            this.f71856k = true;
        }
    }

    public p(d0 d0Var, boolean z10, boolean z11) {
        this.f71831a = d0Var;
        this.f71832b = z10;
        this.f71833c = z11;
    }

    private void a() {
        com.google.android.exoplayer2.util.a.i(this.f71840j);
        p0.j(this.f71841k);
    }

    private void e(long j10, int i10, int i11, long j11) {
        if (!this.f71842l || this.f71841k.c()) {
            this.f71834d.b(i11);
            this.f71835e.b(i11);
            if (this.f71842l) {
                if (this.f71834d.c()) {
                    u uVar = this.f71834d;
                    this.f71841k.f(com.google.android.exoplayer2.util.x.l(uVar.f71949d, 3, uVar.f71950e));
                    this.f71834d.d();
                } else if (this.f71835e.c()) {
                    u uVar2 = this.f71835e;
                    this.f71841k.e(com.google.android.exoplayer2.util.x.j(uVar2.f71949d, 3, uVar2.f71950e));
                    this.f71835e.d();
                }
            } else if (this.f71834d.c() && this.f71835e.c()) {
                ArrayList arrayList = new ArrayList();
                u uVar3 = this.f71834d;
                arrayList.add(Arrays.copyOf(uVar3.f71949d, uVar3.f71950e));
                u uVar4 = this.f71835e;
                arrayList.add(Arrays.copyOf(uVar4.f71949d, uVar4.f71950e));
                u uVar5 = this.f71834d;
                com.google.android.exoplayer2.util.x.c cVarL = com.google.android.exoplayer2.util.x.l(uVar5.f71949d, 3, uVar5.f71950e);
                u uVar6 = this.f71835e;
                com.google.android.exoplayer2.util.x.b bVarJ = com.google.android.exoplayer2.util.x.j(uVar6.f71949d, 3, uVar6.f71950e);
                this.f71840j.d(new p1.b().S(this.f71839i).e0(MimeTypes.VIDEO_H264).I(com.google.android.exoplayer2.util.f.a(cVarL.f26909a, cVarL.f26910b, cVarL.f26911c)).j0(cVarL.f26914f).Q(cVarL.f26915g).a0(cVarL.f26916h).T(arrayList).E());
                this.f71842l = true;
                this.f71841k.f(cVarL);
                this.f71841k.e(bVarJ);
                this.f71834d.d();
                this.f71835e.d();
            }
        }
        if (this.f71836f.b(i11)) {
            u uVar7 = this.f71836f;
            this.f71845o.N(this.f71836f.f71949d, com.google.android.exoplayer2.util.x.q(uVar7.f71949d, uVar7.f71950e));
            this.f71845o.P(4);
            this.f71831a.a(j11, this.f71845o);
        }
        if (this.f71841k.b(j10, i10, this.f71842l, this.f71844n)) {
            this.f71844n = false;
        }
    }

    private void f(byte[] bArr, int i10, int i11) {
        if (!this.f71842l || this.f71841k.c()) {
            this.f71834d.a(bArr, i10, i11);
            this.f71835e.a(bArr, i10, i11);
        }
        this.f71836f.a(bArr, i10, i11);
        this.f71841k.a(bArr, i10, i11);
    }

    private void g(long j10, int i10, long j11) {
        if (!this.f71842l || this.f71841k.c()) {
            this.f71834d.e(i10);
            this.f71835e.e(i10);
        }
        this.f71836f.e(i10);
        this.f71841k.h(j10, i10, j11);
    }

    @Override
    public void b(com.google.android.exoplayer2.util.d0 d0Var) {
        a();
        int iE = d0Var.e();
        int iF = d0Var.f();
        byte[] bArrD = d0Var.d();
        this.f71837g += (long) d0Var.a();
        this.f71840j.c(d0Var, d0Var.a());
        while (true) {
            int iC = com.google.android.exoplayer2.util.x.c(bArrD, iE, iF, this.f71838h);
            if (iC == iF) {
                f(bArrD, iE, iF);
                return;
            }
            int iF2 = com.google.android.exoplayer2.util.x.f(bArrD, iC);
            int i10 = iC - iE;
            if (i10 > 0) {
                f(bArrD, iE, iC);
            }
            int i11 = iF - iC;
            long j10 = this.f71837g - ((long) i11);
            e(j10, i11, i10 < 0 ? -i10 : 0, this.f71843m);
            g(j10, iF2, this.f71843m);
            iE = iC + 3;
        }
    }

    @Override
    public void c(long j10, int i10) {
        if (j10 != C.TIME_UNSET) {
            this.f71843m = j10;
        }
        this.f71844n |= (i10 & 2) != 0;
    }

    @Override
    public void d(i9.n nVar, i0.d dVar) {
        dVar.a();
        this.f71839i = dVar.b();
        i9.e0 e0VarTrack = nVar.track(dVar.c(), 2);
        this.f71840j = e0VarTrack;
        this.f71841k = new b(e0VarTrack, this.f71832b, this.f71833c);
        this.f71831a.b(nVar, dVar);
    }

    @Override
    public void seek() {
        this.f71837g = 0L;
        this.f71844n = false;
        this.f71843m = C.TIME_UNSET;
        com.google.android.exoplayer2.util.x.a(this.f71838h);
        this.f71834d.d();
        this.f71835e.d();
        this.f71836f.d();
        b bVar = this.f71841k;
        if (bVar != null) {
            bVar.g();
        }
    }

    @Override
    public void packetFinished() {
    }
}
