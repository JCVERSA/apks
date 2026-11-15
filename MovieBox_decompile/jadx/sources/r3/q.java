package r3;

import androidx.media3.common.util.a1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Collections;
import k2.s0;

public final class q implements m {

    private final g0 f70695a;

    private final String f70696b;

    private String f70697c;

    private s0 f70698d;

    private a f70699e;

    private boolean f70700f;

    private long f70707m;

    private final boolean[] f70701g = new boolean[3];

    private final w f70702h = new w(32, 128);

    private final w f70703i = new w(33, 128);

    private final w f70704j = new w(34, 128);

    private final w f70705k = new w(39, 128);

    private final w f70706l = new w(40, 128);

    private long f70708n = C.TIME_UNSET;

    private final androidx.media3.common.util.j0 f70709o = new androidx.media3.common.util.j0();

    private static final class a {

        private final s0 f70710a;

        private long f70711b;

        private boolean f70712c;

        private int f70713d;

        private long f70714e;

        private boolean f70715f;

        private boolean f70716g;

        private boolean f70717h;

        private boolean f70718i;

        private boolean f70719j;

        private long f70720k;

        private long f70721l;

        private boolean f70722m;

        public a(s0 s0Var) {
            this.f70710a = s0Var;
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
            long j10 = this.f70721l;
            if (j10 != C.TIME_UNSET) {
                long j11 = this.f70711b;
                long j12 = this.f70720k;
                if (j11 == j12) {
                    return;
                }
                boolean z10 = this.f70722m;
                this.f70710a.b(j10, z10 ? 1 : 0, (int) (j11 - j12), i10, null);
            }
        }

        public void a(long j10, int i10, boolean z10) {
            if (this.f70719j && this.f70716g) {
                this.f70722m = this.f70712c;
                this.f70719j = false;
            } else if (this.f70717h || this.f70716g) {
                if (z10 && this.f70718i) {
                    d(i10 + ((int) (j10 - this.f70711b)));
                }
                this.f70720k = this.f70711b;
                this.f70721l = this.f70714e;
                this.f70722m = this.f70712c;
                this.f70718i = true;
            }
        }

        public void e(byte[] bArr, int i10, int i11) {
            if (this.f70715f) {
                int i12 = this.f70713d;
                int i13 = (i10 + 2) - i12;
                if (i13 >= i11) {
                    this.f70713d = i12 + (i11 - i10);
                } else {
                    this.f70716g = (bArr[i13] & 128) != 0;
                    this.f70715f = false;
                }
            }
        }

        public void f() {
            this.f70715f = false;
            this.f70716g = false;
            this.f70717h = false;
            this.f70718i = false;
            this.f70719j = false;
        }

        public void g(long j10, int i10, int i11, long j11, boolean z10) {
            this.f70716g = false;
            this.f70717h = false;
            this.f70714e = j11;
            this.f70713d = 0;
            this.f70711b = j10;
            if (!c(i11)) {
                if (this.f70718i && !this.f70719j) {
                    if (z10) {
                        d(i10);
                    }
                    this.f70718i = false;
                }
                if (b(i11)) {
                    this.f70717h = !this.f70719j;
                    this.f70719j = true;
                }
            }
            boolean z11 = i11 >= 16 && i11 <= 21;
            this.f70712c = z11;
            this.f70715f = z11 || i11 <= 9;
        }
    }

    public q(g0 g0Var, String str) {
        this.f70695a = g0Var;
        this.f70696b = str;
    }

    private void b() {
        androidx.media3.common.util.a.i(this.f70698d);
        a1.i(this.f70699e);
    }

    private void f(long j10, int i10, int i11, long j11) {
        this.f70699e.a(j10, i10, this.f70700f);
        if (!this.f70700f) {
            this.f70702h.b(i11);
            this.f70703i.b(i11);
            this.f70704j.b(i11);
            if (this.f70702h.c() && this.f70703i.c() && this.f70704j.c()) {
                androidx.media3.common.r rVarH = h(this.f70697c, this.f70702h, this.f70703i, this.f70704j, this.f70696b);
                this.f70698d.d(rVarH);
                com.google.common.base.m.u(rVarH.f9851q != -1);
                this.f70695a.g(rVarH.f9851q);
                this.f70700f = true;
            }
        }
        if (this.f70705k.b(i11)) {
            w wVar = this.f70705k;
            this.f70709o.U(this.f70705k.f70799d, androidx.media3.container.g.L(wVar.f70799d, wVar.f70800e));
            this.f70709o.X(5);
            this.f70695a.c(j11, this.f70709o);
        }
        if (this.f70706l.b(i11)) {
            w wVar2 = this.f70706l;
            this.f70709o.U(this.f70706l.f70799d, androidx.media3.container.g.L(wVar2.f70799d, wVar2.f70800e));
            this.f70709o.X(5);
            this.f70695a.c(j11, this.f70709o);
        }
    }

    private void g(byte[] bArr, int i10, int i11) {
        this.f70699e.e(bArr, i10, i11);
        if (!this.f70700f) {
            this.f70702h.a(bArr, i10, i11);
            this.f70703i.a(bArr, i10, i11);
            this.f70704j.a(bArr, i10, i11);
        }
        this.f70705k.a(bArr, i10, i11);
        this.f70706l.a(bArr, i10, i11);
    }

    private static androidx.media3.common.r h(String str, w wVar, w wVar2, w wVar3, String str2) {
        int i10 = wVar.f70800e;
        byte[] bArr = new byte[wVar2.f70800e + i10 + wVar3.f70800e];
        System.arraycopy(wVar.f70799d, 0, bArr, 0, i10);
        System.arraycopy(wVar2.f70799d, 0, bArr, wVar.f70800e, wVar2.f70800e);
        System.arraycopy(wVar3.f70799d, 0, bArr, wVar.f70800e + wVar2.f70800e, wVar3.f70800e);
        androidx.media3.container.g.h hVarU = androidx.media3.container.g.u(wVar2.f70799d, 3, wVar2.f70800e, null);
        androidx.media3.container.g.c cVar = hVarU.f10316c;
        return new androidx.media3.common.r.b().f0(str).U(str2).u0(MimeTypes.VIDEO_H265).S(cVar != null ? androidx.media3.common.util.j.f(cVar.f10290a, cVar.f10291b, cVar.f10292c, cVar.f10293d, cVar.f10294e, cVar.f10295f) : null).B0(hVarU.f10321h).d0(hVarU.f10322i).T(new androidx.media3.common.i.b().d(hVarU.f10325l).c(hVarU.f10326m).e(hVarU.f10327n).g(hVarU.f10318e + 8).b(hVarU.f10319f + 8).a()).q0(hVarU.f10323j).l0(hVarU.f10324k).m0(hVarU.f10315b + 1).g0(Collections.singletonList(bArr)).N();
    }

    private void i(long j10, int i10, int i11, long j11) {
        this.f70699e.g(j10, i10, i11, j11, this.f70700f);
        if (!this.f70700f) {
            this.f70702h.e(i11);
            this.f70703i.e(i11);
            this.f70704j.e(i11);
        }
        this.f70705k.e(i11);
        this.f70706l.e(i11);
    }

    @Override
    public void a(androidx.media3.common.util.j0 j0Var) {
        int i10;
        b();
        while (j0Var.a() > 0) {
            int iF = j0Var.f();
            int iG = j0Var.g();
            byte[] bArrE = j0Var.e();
            this.f70707m += (long) j0Var.a();
            this.f70698d.c(j0Var, j0Var.a());
            while (iF < iG) {
                int iE = androidx.media3.container.g.e(bArrE, iF, iG, this.f70701g);
                if (iE == iG) {
                    g(bArrE, iF, iG);
                    return;
                }
                int i11 = androidx.media3.container.g.i(bArrE, iE);
                if (iE <= 0 || bArrE[iE - 1] != 0) {
                    i10 = 3;
                } else {
                    iE--;
                    i10 = 4;
                }
                int i12 = iE;
                int i13 = i10;
                int i14 = i12 - iF;
                if (i14 > 0) {
                    g(bArrE, iF, i12);
                }
                int i15 = iG - i12;
                long j10 = this.f70707m - ((long) i15);
                f(j10, i15, i14 < 0 ? -i14 : 0, this.f70708n);
                i(j10, i15, i11, this.f70708n);
                iF = i12 + i13;
            }
        }
    }

    @Override
    public void c(long j10, int i10) {
        this.f70708n = j10;
    }

    @Override
    public void d(boolean z10) {
        b();
        if (z10) {
            this.f70695a.e();
            f(this.f70707m, 0, 0, this.f70708n);
            i(this.f70707m, 0, 48, this.f70708n);
        }
    }

    @Override
    public void e(k2.t tVar, l0.d dVar) {
        dVar.a();
        this.f70697c = dVar.b();
        s0 s0VarTrack = tVar.track(dVar.c(), 2);
        this.f70698d = s0VarTrack;
        this.f70699e = new a(s0VarTrack);
        this.f70695a.d(tVar, dVar);
    }

    @Override
    public void seek() {
        this.f70707m = 0L;
        this.f70708n = C.TIME_UNSET;
        androidx.media3.container.g.c(this.f70701g);
        this.f70702h.d();
        this.f70703i.d();
        this.f70704j.d();
        this.f70705k.d();
        this.f70706l.d();
        this.f70695a.b();
        a aVar = this.f70699e;
        if (aVar != null) {
            aVar.f();
        }
    }
}
