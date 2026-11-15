package r3;

import androidx.media3.common.util.a1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Arrays;
import java.util.Collections;
import k2.s0;

public final class o implements m {

    private static final float[] f70617m = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 1.0f};

    private final n0 f70618a;

    private final String f70619b;

    private final androidx.media3.common.util.j0 f70620c;

    private final w f70623f;

    private b f70624g;

    private long f70625h;

    private String f70626i;

    private s0 f70627j;

    private boolean f70628k;

    private final boolean[] f70621d = new boolean[4];

    private final a f70622e = new a(128);

    private long f70629l = C.TIME_UNSET;

    private static final class a {

        private static final byte[] f70630f = {0, 0, 1};

        private boolean f70631a;

        private int f70632b;

        public int f70633c;

        public int f70634d;

        public byte[] f70635e;

        public a(int i10) {
            this.f70635e = new byte[i10];
        }

        public void a(byte[] bArr, int i10, int i11) {
            if (this.f70631a) {
                int i12 = i11 - i10;
                byte[] bArr2 = this.f70635e;
                int length = bArr2.length;
                int i13 = this.f70633c;
                if (length < i13 + i12) {
                    this.f70635e = Arrays.copyOf(bArr2, (i13 + i12) * 2);
                }
                System.arraycopy(bArr, i10, this.f70635e, this.f70633c, i12);
                this.f70633c += i12;
            }
        }

        public boolean b(int i10, int i11) {
            int i12 = this.f70632b;
            if (i12 != 0) {
                if (i12 != 1) {
                    if (i12 != 2) {
                        if (i12 != 3) {
                            if (i12 != 4) {
                                throw new IllegalStateException();
                            }
                            if (i10 == 179 || i10 == 181) {
                                this.f70633c -= i11;
                                this.f70631a = false;
                                return true;
                            }
                        } else if ((i10 & 240) != 32) {
                            androidx.media3.common.util.u.h("H263Reader", "Unexpected start code value");
                            c();
                        } else {
                            this.f70634d = this.f70633c;
                            this.f70632b = 4;
                        }
                    } else if (i10 > 31) {
                        androidx.media3.common.util.u.h("H263Reader", "Unexpected start code value");
                        c();
                    } else {
                        this.f70632b = 3;
                    }
                } else if (i10 != 181) {
                    androidx.media3.common.util.u.h("H263Reader", "Unexpected start code value");
                    c();
                } else {
                    this.f70632b = 2;
                }
            } else if (i10 == 176) {
                this.f70632b = 1;
                this.f70631a = true;
            }
            byte[] bArr = f70630f;
            a(bArr, 0, bArr.length);
            return false;
        }

        public void c() {
            this.f70631a = false;
            this.f70633c = 0;
            this.f70632b = 0;
        }
    }

    private static final class b {

        private final s0 f70636a;

        private boolean f70637b;

        private boolean f70638c;

        private boolean f70639d;

        private int f70640e;

        private int f70641f;

        private long f70642g;

        private long f70643h;

        public b(s0 s0Var) {
            this.f70636a = s0Var;
        }

        public void a(byte[] bArr, int i10, int i11) {
            if (this.f70638c) {
                int i12 = this.f70641f;
                int i13 = (i10 + 1) - i12;
                if (i13 >= i11) {
                    this.f70641f = i12 + (i11 - i10);
                } else {
                    this.f70639d = ((bArr[i13] & 192) >> 6) == 0;
                    this.f70638c = false;
                }
            }
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
        public void b(long j10, int i10, boolean z10) {
            androidx.media3.common.util.a.g(this.f70643h != C.TIME_UNSET);
            if (this.f70640e == 182 && z10 && this.f70637b) {
                this.f70636a.b(this.f70643h, this.f70639d ? 1 : 0, (int) (j10 - this.f70642g), i10, null);
            }
            if (this.f70640e != 179) {
                this.f70642g = j10;
            }
        }

        public void c(int i10, long j10) {
            this.f70640e = i10;
            this.f70639d = false;
            this.f70637b = i10 == 182 || i10 == 179;
            this.f70638c = i10 == 182;
            this.f70641f = 0;
            this.f70643h = j10;
        }

        public void d() {
            this.f70637b = false;
            this.f70638c = false;
            this.f70639d = false;
            this.f70640e = -1;
        }
    }

    o(n0 n0Var, String str) {
        this.f70618a = n0Var;
        this.f70619b = str;
        if (n0Var != null) {
            this.f70623f = new w(178, 128);
            this.f70620c = new androidx.media3.common.util.j0();
        } else {
            this.f70623f = null;
            this.f70620c = null;
        }
    }

    private static androidx.media3.common.r b(a aVar, int i10, String str, String str2) {
        byte[] bArrCopyOf = Arrays.copyOf(aVar.f70635e, aVar.f70633c);
        androidx.media3.common.util.i0 i0Var = new androidx.media3.common.util.i0(bArrCopyOf);
        i0Var.s(i10);
        i0Var.s(4);
        i0Var.q();
        i0Var.r(8);
        if (i0Var.g()) {
            i0Var.r(4);
            i0Var.r(3);
        }
        int iH = i0Var.h(4);
        float f10 = 1.0f;
        if (iH == 15) {
            int iH2 = i0Var.h(8);
            int iH3 = i0Var.h(8);
            if (iH3 == 0) {
                androidx.media3.common.util.u.h("H263Reader", "Invalid aspect ratio");
            } else {
                f10 = iH2 / iH3;
            }
        } else {
            float[] fArr = f70617m;
            if (iH < fArr.length) {
                f10 = fArr[iH];
            } else {
                androidx.media3.common.util.u.h("H263Reader", "Invalid aspect ratio");
            }
        }
        if (i0Var.g()) {
            i0Var.r(2);
            i0Var.r(1);
            if (i0Var.g()) {
                i0Var.r(15);
                i0Var.q();
                i0Var.r(15);
                i0Var.q();
                i0Var.r(15);
                i0Var.q();
                i0Var.r(3);
                i0Var.r(11);
                i0Var.q();
                i0Var.r(15);
                i0Var.q();
            }
        }
        if (i0Var.h(2) != 0) {
            androidx.media3.common.util.u.h("H263Reader", "Unhandled video object layer shape");
        }
        i0Var.q();
        int iH4 = i0Var.h(16);
        i0Var.q();
        if (i0Var.g()) {
            if (iH4 == 0) {
                androidx.media3.common.util.u.h("H263Reader", "Invalid vop_increment_time_resolution");
            } else {
                int i11 = 0;
                for (int i12 = iH4 - 1; i12 > 0; i12 >>= 1) {
                    i11++;
                }
                i0Var.r(i11);
            }
        }
        i0Var.q();
        int iH5 = i0Var.h(13);
        i0Var.q();
        int iH6 = i0Var.h(13);
        i0Var.q();
        i0Var.q();
        return new androidx.media3.common.r.b().f0(str).U(str2).u0(MimeTypes.VIDEO_MP4V).B0(iH5).d0(iH6).q0(f10).g0(Collections.singletonList(bArrCopyOf)).N();
    }

    @Override
    public void a(androidx.media3.common.util.j0 j0Var) {
        androidx.media3.common.util.a.i(this.f70624g);
        androidx.media3.common.util.a.i(this.f70627j);
        int iF = j0Var.f();
        int iG = j0Var.g();
        byte[] bArrE = j0Var.e();
        this.f70625h += (long) j0Var.a();
        this.f70627j.c(j0Var, j0Var.a());
        while (true) {
            int iE = androidx.media3.container.g.e(bArrE, iF, iG, this.f70621d);
            if (iE == iG) {
                break;
            }
            int i10 = iE + 3;
            int i11 = j0Var.e()[i10] & 255;
            int i12 = iE - iF;
            int i13 = 0;
            if (!this.f70628k) {
                if (i12 > 0) {
                    this.f70622e.a(bArrE, iF, iE);
                }
                if (this.f70622e.b(i11, i12 < 0 ? -i12 : 0)) {
                    s0 s0Var = this.f70627j;
                    a aVar = this.f70622e;
                    s0Var.d(b(aVar, aVar.f70634d, (String) androidx.media3.common.util.a.e(this.f70626i), this.f70619b));
                    this.f70628k = true;
                }
            }
            this.f70624g.a(bArrE, iF, iE);
            w wVar = this.f70623f;
            if (wVar != null) {
                if (i12 > 0) {
                    wVar.a(bArrE, iF, iE);
                } else {
                    i13 = -i12;
                }
                if (this.f70623f.b(i13)) {
                    w wVar2 = this.f70623f;
                    ((androidx.media3.common.util.j0) a1.i(this.f70620c)).U(this.f70623f.f70799d, androidx.media3.container.g.L(wVar2.f70799d, wVar2.f70800e));
                    ((n0) a1.i(this.f70618a)).a(this.f70629l, this.f70620c);
                }
                if (i11 == 178 && j0Var.e()[iE + 2] == 1) {
                    this.f70623f.e(i11);
                }
            }
            int i14 = iG - iE;
            this.f70624g.b(this.f70625h - ((long) i14), i14, this.f70628k);
            this.f70624g.c(i11, this.f70629l);
            iF = i10;
        }
        if (!this.f70628k) {
            this.f70622e.a(bArrE, iF, iG);
        }
        this.f70624g.a(bArrE, iF, iG);
        w wVar3 = this.f70623f;
        if (wVar3 != null) {
            wVar3.a(bArrE, iF, iG);
        }
    }

    @Override
    public void c(long j10, int i10) {
        this.f70629l = j10;
    }

    @Override
    public void d(boolean z10) {
        androidx.media3.common.util.a.i(this.f70624g);
        if (z10) {
            this.f70624g.b(this.f70625h, 0, this.f70628k);
            this.f70624g.d();
        }
    }

    @Override
    public void e(k2.t tVar, l0.d dVar) {
        dVar.a();
        this.f70626i = dVar.b();
        s0 s0VarTrack = tVar.track(dVar.c(), 2);
        this.f70627j = s0VarTrack;
        this.f70624g = new b(s0VarTrack);
        n0 n0Var = this.f70618a;
        if (n0Var != null) {
            n0Var.b(tVar, dVar);
        }
    }

    @Override
    public void seek() {
        androidx.media3.container.g.c(this.f70621d);
        this.f70622e.c();
        b bVar = this.f70624g;
        if (bVar != null) {
            bVar.d();
        }
        w wVar = this.f70623f;
        if (wVar != null) {
            wVar.d();
        }
        this.f70625h = 0L;
        this.f70629l = C.TIME_UNSET;
    }
}
