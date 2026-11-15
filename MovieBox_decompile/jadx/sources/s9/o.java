package s9;

import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Arrays;
import java.util.Collections;

public final class o implements m {

    private static final float[] f71805l = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 1.0f};

    private final k0 f71806a;

    private final com.google.android.exoplayer2.util.d0 f71807b;

    private final boolean[] f71808c;

    private final a f71809d;

    private final u f71810e;

    private b f71811f;

    private long f71812g;

    private String f71813h;

    private i9.e0 f71814i;

    private boolean f71815j;

    private long f71816k;

    private static final class a {

        private static final byte[] f71817f = {0, 0, 1};

        private boolean f71818a;

        private int f71819b;

        public int f71820c;

        public int f71821d;

        public byte[] f71822e;

        public a(int i10) {
            this.f71822e = new byte[i10];
        }

        public void a(byte[] bArr, int i10, int i11) {
            if (this.f71818a) {
                int i12 = i11 - i10;
                byte[] bArr2 = this.f71822e;
                int length = bArr2.length;
                int i13 = this.f71820c;
                if (length < i13 + i12) {
                    this.f71822e = Arrays.copyOf(bArr2, (i13 + i12) * 2);
                }
                System.arraycopy(bArr, i10, this.f71822e, this.f71820c, i12);
                this.f71820c += i12;
            }
        }

        public boolean b(int i10, int i11) {
            int i12 = this.f71819b;
            if (i12 != 0) {
                if (i12 != 1) {
                    if (i12 != 2) {
                        if (i12 != 3) {
                            if (i12 != 4) {
                                throw new IllegalStateException();
                            }
                            if (i10 == 179 || i10 == 181) {
                                this.f71820c -= i11;
                                this.f71818a = false;
                                return true;
                            }
                        } else if ((i10 & 240) != 32) {
                            com.google.android.exoplayer2.util.s.i("H263Reader", "Unexpected start code value");
                            c();
                        } else {
                            this.f71821d = this.f71820c;
                            this.f71819b = 4;
                        }
                    } else if (i10 > 31) {
                        com.google.android.exoplayer2.util.s.i("H263Reader", "Unexpected start code value");
                        c();
                    } else {
                        this.f71819b = 3;
                    }
                } else if (i10 != 181) {
                    com.google.android.exoplayer2.util.s.i("H263Reader", "Unexpected start code value");
                    c();
                } else {
                    this.f71819b = 2;
                }
            } else if (i10 == 176) {
                this.f71819b = 1;
                this.f71818a = true;
            }
            byte[] bArr = f71817f;
            a(bArr, 0, bArr.length);
            return false;
        }

        public void c() {
            this.f71818a = false;
            this.f71820c = 0;
            this.f71819b = 0;
        }
    }

    private static final class b {

        private final i9.e0 f71823a;

        private boolean f71824b;

        private boolean f71825c;

        private boolean f71826d;

        private int f71827e;

        private int f71828f;

        private long f71829g;

        private long f71830h;

        public b(i9.e0 e0Var) {
            this.f71823a = e0Var;
        }

        public void a(byte[] bArr, int i10, int i11) {
            if (this.f71825c) {
                int i12 = this.f71828f;
                int i13 = (i10 + 1) - i12;
                if (i13 >= i11) {
                    this.f71828f = i12 + (i11 - i10);
                } else {
                    this.f71826d = ((bArr[i13] & 192) >> 6) == 0;
                    this.f71825c = false;
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
            if (this.f71827e == 182 && z10 && this.f71824b) {
                long j11 = this.f71830h;
                if (j11 != C.TIME_UNSET) {
                    this.f71823a.e(j11, this.f71826d ? 1 : 0, (int) (j10 - this.f71829g), i10, null);
                }
            }
            if (this.f71827e != 179) {
                this.f71829g = j10;
            }
        }

        public void c(int i10, long j10) {
            this.f71827e = i10;
            this.f71826d = false;
            this.f71824b = i10 == 182 || i10 == 179;
            this.f71825c = i10 == 182;
            this.f71828f = 0;
            this.f71830h = j10;
        }

        public void d() {
            this.f71824b = false;
            this.f71825c = false;
            this.f71826d = false;
            this.f71827e = -1;
        }
    }

    public o() {
        this(null);
    }

    private static p1 a(a aVar, int i10, String str) {
        byte[] bArrCopyOf = Arrays.copyOf(aVar.f71822e, aVar.f71820c);
        com.google.android.exoplayer2.util.c0 c0Var = new com.google.android.exoplayer2.util.c0(bArrCopyOf);
        c0Var.s(i10);
        c0Var.s(4);
        c0Var.q();
        c0Var.r(8);
        if (c0Var.g()) {
            c0Var.r(4);
            c0Var.r(3);
        }
        int iH = c0Var.h(4);
        float f10 = 1.0f;
        if (iH == 15) {
            int iH2 = c0Var.h(8);
            int iH3 = c0Var.h(8);
            if (iH3 == 0) {
                com.google.android.exoplayer2.util.s.i("H263Reader", "Invalid aspect ratio");
            } else {
                f10 = iH2 / iH3;
            }
        } else {
            float[] fArr = f71805l;
            if (iH < fArr.length) {
                f10 = fArr[iH];
            } else {
                com.google.android.exoplayer2.util.s.i("H263Reader", "Invalid aspect ratio");
            }
        }
        if (c0Var.g()) {
            c0Var.r(2);
            c0Var.r(1);
            if (c0Var.g()) {
                c0Var.r(15);
                c0Var.q();
                c0Var.r(15);
                c0Var.q();
                c0Var.r(15);
                c0Var.q();
                c0Var.r(3);
                c0Var.r(11);
                c0Var.q();
                c0Var.r(15);
                c0Var.q();
            }
        }
        if (c0Var.h(2) != 0) {
            com.google.android.exoplayer2.util.s.i("H263Reader", "Unhandled video object layer shape");
        }
        c0Var.q();
        int iH4 = c0Var.h(16);
        c0Var.q();
        if (c0Var.g()) {
            if (iH4 == 0) {
                com.google.android.exoplayer2.util.s.i("H263Reader", "Invalid vop_increment_time_resolution");
            } else {
                int i11 = 0;
                for (int i12 = iH4 - 1; i12 > 0; i12 >>= 1) {
                    i11++;
                }
                c0Var.r(i11);
            }
        }
        c0Var.q();
        int iH5 = c0Var.h(13);
        c0Var.q();
        int iH6 = c0Var.h(13);
        c0Var.q();
        c0Var.q();
        return new p1.b().S(str).e0(MimeTypes.VIDEO_MP4V).j0(iH5).Q(iH6).a0(f10).T(Collections.singletonList(bArrCopyOf)).E();
    }

    @Override
    public void b(com.google.android.exoplayer2.util.d0 d0Var) {
        com.google.android.exoplayer2.util.a.i(this.f71811f);
        com.google.android.exoplayer2.util.a.i(this.f71814i);
        int iE = d0Var.e();
        int iF = d0Var.f();
        byte[] bArrD = d0Var.d();
        this.f71812g += (long) d0Var.a();
        this.f71814i.c(d0Var, d0Var.a());
        while (true) {
            int iC = com.google.android.exoplayer2.util.x.c(bArrD, iE, iF, this.f71808c);
            if (iC == iF) {
                break;
            }
            int i10 = iC + 3;
            int i11 = d0Var.d()[i10] & 255;
            int i12 = iC - iE;
            int i13 = 0;
            if (!this.f71815j) {
                if (i12 > 0) {
                    this.f71809d.a(bArrD, iE, iC);
                }
                if (this.f71809d.b(i11, i12 < 0 ? -i12 : 0)) {
                    i9.e0 e0Var = this.f71814i;
                    a aVar = this.f71809d;
                    e0Var.d(a(aVar, aVar.f71821d, (String) com.google.android.exoplayer2.util.a.e(this.f71813h)));
                    this.f71815j = true;
                }
            }
            this.f71811f.a(bArrD, iE, iC);
            u uVar = this.f71810e;
            if (uVar != null) {
                if (i12 > 0) {
                    uVar.a(bArrD, iE, iC);
                } else {
                    i13 = -i12;
                }
                if (this.f71810e.b(i13)) {
                    u uVar2 = this.f71810e;
                    ((com.google.android.exoplayer2.util.d0) p0.j(this.f71807b)).N(this.f71810e.f71949d, com.google.android.exoplayer2.util.x.q(uVar2.f71949d, uVar2.f71950e));
                    ((k0) p0.j(this.f71806a)).a(this.f71816k, this.f71807b);
                }
                if (i11 == 178 && d0Var.d()[iC + 2] == 1) {
                    this.f71810e.e(i11);
                }
            }
            int i14 = iF - iC;
            this.f71811f.b(this.f71812g - ((long) i14), i14, this.f71815j);
            this.f71811f.c(i11, this.f71816k);
            iE = i10;
        }
        if (!this.f71815j) {
            this.f71809d.a(bArrD, iE, iF);
        }
        this.f71811f.a(bArrD, iE, iF);
        u uVar3 = this.f71810e;
        if (uVar3 != null) {
            uVar3.a(bArrD, iE, iF);
        }
    }

    @Override
    public void c(long j10, int i10) {
        if (j10 != C.TIME_UNSET) {
            this.f71816k = j10;
        }
    }

    @Override
    public void d(i9.n nVar, i0.d dVar) {
        dVar.a();
        this.f71813h = dVar.b();
        i9.e0 e0VarTrack = nVar.track(dVar.c(), 2);
        this.f71814i = e0VarTrack;
        this.f71811f = new b(e0VarTrack);
        k0 k0Var = this.f71806a;
        if (k0Var != null) {
            k0Var.b(nVar, dVar);
        }
    }

    @Override
    public void seek() {
        com.google.android.exoplayer2.util.x.a(this.f71808c);
        this.f71809d.c();
        b bVar = this.f71811f;
        if (bVar != null) {
            bVar.d();
        }
        u uVar = this.f71810e;
        if (uVar != null) {
            uVar.d();
        }
        this.f71812g = 0L;
        this.f71816k = C.TIME_UNSET;
    }

    o(k0 k0Var) {
        this.f71806a = k0Var;
        this.f71808c = new boolean[4];
        this.f71809d = new a(128);
        this.f71816k = C.TIME_UNSET;
        if (k0Var != null) {
            this.f71810e = new u(178, 128);
            this.f71807b = new com.google.android.exoplayer2.util.d0();
        } else {
            this.f71810e = null;
            this.f71807b = null;
        }
    }

    @Override
    public void packetFinished() {
    }
}
