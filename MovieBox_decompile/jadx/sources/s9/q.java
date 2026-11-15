package s9;

import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Collections;

public final class q implements m {

    private final d0 f71880a;

    private String f71881b;

    private i9.e0 f71882c;

    private a f71883d;

    private boolean f71884e;

    private long f71891l;

    private final boolean[] f71885f = new boolean[3];

    private final u f71886g = new u(32, 128);

    private final u f71887h = new u(33, 128);

    private final u f71888i = new u(34, 128);

    private final u f71889j = new u(39, 128);

    private final u f71890k = new u(40, 128);

    private long f71892m = C.TIME_UNSET;

    private final com.google.android.exoplayer2.util.d0 f71893n = new com.google.android.exoplayer2.util.d0();

    private static final class a {

        private final i9.e0 f71894a;

        private long f71895b;

        private boolean f71896c;

        private int f71897d;

        private long f71898e;

        private boolean f71899f;

        private boolean f71900g;

        private boolean f71901h;

        private boolean f71902i;

        private boolean f71903j;

        private long f71904k;

        private long f71905l;

        private boolean f71906m;

        public a(i9.e0 e0Var) {
            this.f71894a = e0Var;
        }

        private static boolean b(int i10) {
            return (32 <= i10 && i10 <= 35) || i10 == 39;
        }

        private static boolean c(int i10) {
            return i10 < 32 || i10 == 40;
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
            long j10 = this.f71905l;
            if (j10 == C.TIME_UNSET) {
                return;
            }
            boolean z10 = this.f71906m;
            this.f71894a.e(j10, z10 ? 1 : 0, (int) (this.f71895b - this.f71904k), i10, null);
        }

        public void a(long j10, int i10, boolean z10) {
            if (this.f71903j && this.f71900g) {
                this.f71906m = this.f71896c;
                this.f71903j = false;
            } else if (this.f71901h || this.f71900g) {
                if (z10 && this.f71902i) {
                    d(i10 + ((int) (j10 - this.f71895b)));
                }
                this.f71904k = this.f71895b;
                this.f71905l = this.f71898e;
                this.f71906m = this.f71896c;
                this.f71902i = true;
            }
        }

        public void e(byte[] bArr, int i10, int i11) {
            if (this.f71899f) {
                int i12 = this.f71897d;
                int i13 = (i10 + 2) - i12;
                if (i13 >= i11) {
                    this.f71897d = i12 + (i11 - i10);
                } else {
                    this.f71900g = (bArr[i13] & 128) != 0;
                    this.f71899f = false;
                }
            }
        }

        public void f() {
            this.f71899f = false;
            this.f71900g = false;
            this.f71901h = false;
            this.f71902i = false;
            this.f71903j = false;
        }

        public void g(long j10, int i10, int i11, long j11, boolean z10) {
            this.f71900g = false;
            this.f71901h = false;
            this.f71898e = j11;
            this.f71897d = 0;
            this.f71895b = j10;
            if (!c(i11)) {
                if (this.f71902i && !this.f71903j) {
                    if (z10) {
                        d(i10);
                    }
                    this.f71902i = false;
                }
                if (b(i11)) {
                    this.f71901h = !this.f71903j;
                    this.f71903j = true;
                }
            }
            boolean z11 = i11 >= 16 && i11 <= 21;
            this.f71896c = z11;
            this.f71899f = z11 || i11 <= 9;
        }
    }

    public q(d0 d0Var) {
        this.f71880a = d0Var;
    }

    private void a() {
        com.google.android.exoplayer2.util.a.i(this.f71882c);
        p0.j(this.f71883d);
    }

    private void e(long j10, int i10, int i11, long j11) {
        this.f71883d.a(j10, i10, this.f71884e);
        if (!this.f71884e) {
            this.f71886g.b(i11);
            this.f71887h.b(i11);
            this.f71888i.b(i11);
            if (this.f71886g.c() && this.f71887h.c() && this.f71888i.c()) {
                this.f71882c.d(g(this.f71881b, this.f71886g, this.f71887h, this.f71888i));
                this.f71884e = true;
            }
        }
        if (this.f71889j.b(i11)) {
            u uVar = this.f71889j;
            this.f71893n.N(this.f71889j.f71949d, com.google.android.exoplayer2.util.x.q(uVar.f71949d, uVar.f71950e));
            this.f71893n.Q(5);
            this.f71880a.a(j11, this.f71893n);
        }
        if (this.f71890k.b(i11)) {
            u uVar2 = this.f71890k;
            this.f71893n.N(this.f71890k.f71949d, com.google.android.exoplayer2.util.x.q(uVar2.f71949d, uVar2.f71950e));
            this.f71893n.Q(5);
            this.f71880a.a(j11, this.f71893n);
        }
    }

    private void f(byte[] bArr, int i10, int i11) {
        this.f71883d.e(bArr, i10, i11);
        if (!this.f71884e) {
            this.f71886g.a(bArr, i10, i11);
            this.f71887h.a(bArr, i10, i11);
            this.f71888i.a(bArr, i10, i11);
        }
        this.f71889j.a(bArr, i10, i11);
        this.f71890k.a(bArr, i10, i11);
    }

    private static p1 g(String str, u uVar, u uVar2, u uVar3) {
        int i10 = uVar.f71950e;
        byte[] bArr = new byte[uVar2.f71950e + i10 + uVar3.f71950e];
        int i11 = 0;
        System.arraycopy(uVar.f71949d, 0, bArr, 0, i10);
        System.arraycopy(uVar2.f71949d, 0, bArr, uVar.f71950e, uVar2.f71950e);
        System.arraycopy(uVar3.f71949d, 0, bArr, uVar.f71950e + uVar2.f71950e, uVar3.f71950e);
        com.google.android.exoplayer2.util.e0 e0Var = new com.google.android.exoplayer2.util.e0(uVar2.f71949d, 0, uVar2.f71950e);
        e0Var.l(44);
        int iE = e0Var.e(3);
        e0Var.k();
        int iE2 = e0Var.e(2);
        boolean zD = e0Var.d();
        int iE3 = e0Var.e(5);
        int i12 = 0;
        int i13 = 0;
        while (true) {
            if (i13 >= 32) {
                break;
            }
            if (e0Var.d()) {
                i12 |= 1 << i13;
            }
            i13++;
        }
        int[] iArr = new int[6];
        for (int i14 = 0; i14 < 6; i14++) {
            iArr[i14] = e0Var.e(8);
        }
        int iE4 = e0Var.e(8);
        for (int i15 = 0; i15 < iE; i15++) {
            if (e0Var.d()) {
                i11 += 89;
            }
            if (e0Var.d()) {
                i11 += 8;
            }
        }
        e0Var.l(i11);
        if (iE > 0) {
            e0Var.l((8 - iE) * 2);
        }
        e0Var.h();
        int iH = e0Var.h();
        if (iH == 3) {
            e0Var.k();
        }
        int iH2 = e0Var.h();
        int iH3 = e0Var.h();
        if (e0Var.d()) {
            int iH4 = e0Var.h();
            int iH5 = e0Var.h();
            int iH6 = e0Var.h();
            int iH7 = e0Var.h();
            iH2 -= ((iH == 1 || iH == 2) ? 2 : 1) * (iH4 + iH5);
            iH3 -= (iH == 1 ? 2 : 1) * (iH6 + iH7);
        }
        e0Var.h();
        e0Var.h();
        int iH8 = e0Var.h();
        for (int i16 = e0Var.d() ? 0 : iE; i16 <= iE; i16++) {
            e0Var.h();
            e0Var.h();
            e0Var.h();
        }
        e0Var.h();
        e0Var.h();
        e0Var.h();
        e0Var.h();
        e0Var.h();
        e0Var.h();
        if (e0Var.d() && e0Var.d()) {
            h(e0Var);
        }
        e0Var.l(2);
        if (e0Var.d()) {
            e0Var.l(8);
            e0Var.h();
            e0Var.h();
            e0Var.k();
        }
        i(e0Var);
        if (e0Var.d()) {
            for (int i17 = 0; i17 < e0Var.h(); i17++) {
                e0Var.l(iH8 + 5);
            }
        }
        e0Var.l(2);
        float f10 = 1.0f;
        if (e0Var.d()) {
            if (e0Var.d()) {
                int iE5 = e0Var.e(8);
                if (iE5 == 255) {
                    int iE6 = e0Var.e(16);
                    int iE7 = e0Var.e(16);
                    if (iE6 != 0 && iE7 != 0) {
                        f10 = iE6 / iE7;
                    }
                } else {
                    float[] fArr = com.google.android.exoplayer2.util.x.f26893b;
                    if (iE5 < fArr.length) {
                        f10 = fArr[iE5];
                    } else {
                        com.google.android.exoplayer2.util.s.i("H265Reader", "Unexpected aspect_ratio_idc value: " + iE5);
                    }
                }
            }
            if (e0Var.d()) {
                e0Var.k();
            }
            if (e0Var.d()) {
                e0Var.l(4);
                if (e0Var.d()) {
                    e0Var.l(24);
                }
            }
            if (e0Var.d()) {
                e0Var.h();
                e0Var.h();
            }
            e0Var.k();
            if (e0Var.d()) {
                iH3 *= 2;
            }
        }
        return new p1.b().S(str).e0(MimeTypes.VIDEO_H265).I(com.google.android.exoplayer2.util.f.c(iE2, zD, iE3, i12, iArr, iE4)).j0(iH2).Q(iH3).a0(f10).T(Collections.singletonList(bArr)).E();
    }

    private static void h(com.google.android.exoplayer2.util.e0 e0Var) {
        for (int i10 = 0; i10 < 4; i10++) {
            int i11 = 0;
            while (i11 < 6) {
                int i12 = 1;
                if (e0Var.d()) {
                    int iMin = Math.min(64, 1 << ((i10 << 1) + 4));
                    if (i10 > 1) {
                        e0Var.g();
                    }
                    for (int i13 = 0; i13 < iMin; i13++) {
                        e0Var.g();
                    }
                } else {
                    e0Var.h();
                }
                if (i10 == 3) {
                    i12 = 3;
                }
                i11 += i12;
            }
        }
    }

    private static void i(com.google.android.exoplayer2.util.e0 e0Var) {
        int iH = e0Var.h();
        boolean zD = false;
        int i10 = 0;
        for (int i11 = 0; i11 < iH; i11++) {
            if (i11 != 0) {
                zD = e0Var.d();
            }
            if (zD) {
                e0Var.k();
                e0Var.h();
                for (int i12 = 0; i12 <= i10; i12++) {
                    if (e0Var.d()) {
                        e0Var.k();
                    }
                }
            } else {
                int iH2 = e0Var.h();
                int iH3 = e0Var.h();
                int i13 = iH2 + iH3;
                for (int i14 = 0; i14 < iH2; i14++) {
                    e0Var.h();
                    e0Var.k();
                }
                for (int i15 = 0; i15 < iH3; i15++) {
                    e0Var.h();
                    e0Var.k();
                }
                i10 = i13;
            }
        }
    }

    private void j(long j10, int i10, int i11, long j11) {
        this.f71883d.g(j10, i10, i11, j11, this.f71884e);
        if (!this.f71884e) {
            this.f71886g.e(i11);
            this.f71887h.e(i11);
            this.f71888i.e(i11);
        }
        this.f71889j.e(i11);
        this.f71890k.e(i11);
    }

    @Override
    public void b(com.google.android.exoplayer2.util.d0 d0Var) {
        a();
        while (d0Var.a() > 0) {
            int iE = d0Var.e();
            int iF = d0Var.f();
            byte[] bArrD = d0Var.d();
            this.f71891l += (long) d0Var.a();
            this.f71882c.c(d0Var, d0Var.a());
            while (iE < iF) {
                int iC = com.google.android.exoplayer2.util.x.c(bArrD, iE, iF, this.f71885f);
                if (iC == iF) {
                    f(bArrD, iE, iF);
                    return;
                }
                int iE2 = com.google.android.exoplayer2.util.x.e(bArrD, iC);
                int i10 = iC - iE;
                if (i10 > 0) {
                    f(bArrD, iE, iC);
                }
                int i11 = iF - iC;
                long j10 = this.f71891l - ((long) i11);
                e(j10, i11, i10 < 0 ? -i10 : 0, this.f71892m);
                j(j10, i11, iE2, this.f71892m);
                iE = iC + 3;
            }
        }
    }

    @Override
    public void c(long j10, int i10) {
        if (j10 != C.TIME_UNSET) {
            this.f71892m = j10;
        }
    }

    @Override
    public void d(i9.n nVar, i0.d dVar) {
        dVar.a();
        this.f71881b = dVar.b();
        i9.e0 e0VarTrack = nVar.track(dVar.c(), 2);
        this.f71882c = e0VarTrack;
        this.f71883d = new a(e0VarTrack);
        this.f71880a.b(nVar, dVar);
    }

    @Override
    public void seek() {
        this.f71891l = 0L;
        this.f71892m = C.TIME_UNSET;
        com.google.android.exoplayer2.util.x.a(this.f71885f);
        this.f71886g.d();
        this.f71887h.d();
        this.f71888i.d();
        this.f71889j.d();
        this.f71890k.d();
        a aVar = this.f71883d;
        if (aVar != null) {
            aVar.f();
        }
    }

    @Override
    public void packetFinished() {
    }
}
