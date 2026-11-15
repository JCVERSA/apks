package defpackage;

import androidx.media3.common.C;
import com.google.android.exoplayer2.k;
import java.util.Arrays;
import java.util.Collections;

public final class pk4 implements m83 {
    public static final float[] l = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 1.0f};
    public final ekb a;
    public final qw7 b;
    public final zx6 e;
    public b f;
    public long g;
    public String h;
    public fva i;
    public boolean j;
    public final boolean[] c = new boolean[4];
    public final a d = new a(128);
    public long k = C.TIME_UNSET;

    public static final class a {
        public static final byte[] f = {0, 0, 1};
        public boolean a;
        public int b;
        public int c;
        public int d;
        public byte[] e;

        public a(int i) {
            this.e = new byte[i];
        }

        public void a(byte[] bArr, int i, int i2) {
            if (this.a) {
                int i3 = i2 - i;
                byte[] bArr2 = this.e;
                int length = bArr2.length;
                int i4 = this.c;
                if (length < i4 + i3) {
                    this.e = Arrays.copyOf(bArr2, (i4 + i3) * 2);
                }
                System.arraycopy(bArr, i, this.e, this.c, i3);
                this.c += i3;
            }
        }

        public boolean b(int i, int i2) {
            int i3 = this.b;
            if (i3 != 0) {
                if (i3 != 1) {
                    if (i3 != 2) {
                        if (i3 != 3) {
                            if (i3 != 4) {
                                throw new IllegalStateException();
                            }
                            if (i == 179 || i == 181) {
                                this.c -= i2;
                                this.a = false;
                                return true;
                            }
                        } else if ((i & 240) != 32) {
                            op5.i("H263Reader", "Unexpected start code value");
                            c();
                        } else {
                            this.d = this.c;
                            this.b = 4;
                        }
                    } else if (i > 31) {
                        op5.i("H263Reader", "Unexpected start code value");
                        c();
                    } else {
                        this.b = 3;
                    }
                } else if (i != 181) {
                    op5.i("H263Reader", "Unexpected start code value");
                    c();
                } else {
                    this.b = 2;
                }
            } else if (i == 176) {
                this.b = 1;
                this.a = true;
            }
            byte[] bArr = f;
            a(bArr, 0, bArr.length);
            return false;
        }

        public void c() {
            this.a = false;
            this.c = 0;
            this.b = 0;
        }
    }

    public static final class b {
        public final fva a;
        public boolean b;
        public boolean c;
        public boolean d;
        public int e;
        public int f;
        public long g;
        public long h;

        public b(fva fvaVar) {
            this.a = fvaVar;
        }

        public void a(byte[] bArr, int i, int i2) {
            if (this.c) {
                int i3 = this.f;
                int i4 = (i + 1) - i3;
                if (i4 >= i2) {
                    this.f = i3 + (i2 - i);
                } else {
                    this.d = ((bArr[i4] & 192) >> 6) == 0;
                    this.c = false;
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
        public void b(long j, int i, boolean z) {
            if (this.e == 182 && z && this.b) {
                long j2 = this.h;
                if (j2 != C.TIME_UNSET) {
                    this.a.e(j2, this.d ? 1 : 0, (int) (j - this.g), i, null);
                }
            }
            if (this.e != 179) {
                this.g = j;
            }
        }

        public void c(int i, long j) {
            this.e = i;
            this.d = false;
            this.b = i == 182 || i == 179;
            this.c = i == 182;
            this.f = 0;
            this.h = j;
        }

        public void d() {
            this.b = false;
            this.c = false;
            this.d = false;
            this.e = -1;
        }
    }

    public pk4(ekb ekbVar) {
        this.a = ekbVar;
        if (ekbVar != null) {
            this.e = new zx6(178, 128);
            this.b = new qw7();
        } else {
            this.e = null;
            this.b = null;
        }
    }

    public static k d(a aVar, int i, String str) {
        byte[] bArrCopyOf = Arrays.copyOf(aVar.e, aVar.c);
        pw7 pw7Var = new pw7(bArrCopyOf);
        pw7Var.s(i);
        pw7Var.s(4);
        pw7Var.q();
        pw7Var.r(8);
        if (pw7Var.g()) {
            pw7Var.r(4);
            pw7Var.r(3);
        }
        int iH = pw7Var.h(4);
        float f = 1.0f;
        if (iH == 15) {
            int iH2 = pw7Var.h(8);
            int iH3 = pw7Var.h(8);
            if (iH3 == 0) {
                op5.i("H263Reader", "Invalid aspect ratio");
            } else {
                f = iH2 / iH3;
            }
        } else {
            float[] fArr = l;
            if (iH < fArr.length) {
                f = fArr[iH];
            } else {
                op5.i("H263Reader", "Invalid aspect ratio");
            }
        }
        if (pw7Var.g()) {
            pw7Var.r(2);
            pw7Var.r(1);
            if (pw7Var.g()) {
                pw7Var.r(15);
                pw7Var.q();
                pw7Var.r(15);
                pw7Var.q();
                pw7Var.r(15);
                pw7Var.q();
                pw7Var.r(3);
                pw7Var.r(11);
                pw7Var.q();
                pw7Var.r(15);
                pw7Var.q();
            }
        }
        if (pw7Var.h(2) != 0) {
            op5.i("H263Reader", "Unhandled video object layer shape");
        }
        pw7Var.q();
        int iH4 = pw7Var.h(16);
        pw7Var.q();
        if (pw7Var.g()) {
            if (iH4 == 0) {
                op5.i("H263Reader", "Invalid vop_increment_time_resolution");
            } else {
                int i2 = 0;
                for (int i3 = iH4 - 1; i3 > 0; i3 >>= 1) {
                    i2++;
                }
                pw7Var.r(i2);
            }
        }
        pw7Var.q();
        int iH5 = pw7Var.h(13);
        pw7Var.q();
        int iH6 = pw7Var.h(13);
        pw7Var.q();
        pw7Var.q();
        return new k.b().S(str).e0("video/mp4v-es").j0(iH5).Q(iH6).a0(f).T(Collections.singletonList(bArrCopyOf)).E();
    }

    @Override
    public void a(qw7 qw7Var) {
        zi.i(this.f);
        zi.i(this.i);
        int iE = qw7Var.e();
        int iF = qw7Var.f();
        byte[] bArrD = qw7Var.d();
        this.g += (long) qw7Var.a();
        this.i.d(qw7Var, qw7Var.a());
        while (true) {
            int iC = ay6.c(bArrD, iE, iF, this.c);
            if (iC == iF) {
                break;
            }
            int i = iC + 3;
            int i2 = qw7Var.d()[i] & 255;
            int i3 = iC - iE;
            int i4 = 0;
            if (!this.j) {
                if (i3 > 0) {
                    this.d.a(bArrD, iE, iC);
                }
                if (this.d.b(i2, i3 < 0 ? -i3 : 0)) {
                    fva fvaVar = this.i;
                    a aVar = this.d;
                    fvaVar.b(d(aVar, aVar.d, (String) zi.e(this.h)));
                    this.j = true;
                }
            }
            this.f.a(bArrD, iE, iC);
            zx6 zx6Var = this.e;
            if (zx6Var != null) {
                if (i3 > 0) {
                    zx6Var.a(bArrD, iE, iC);
                } else {
                    i4 = -i3;
                }
                if (this.e.b(i4)) {
                    zx6 zx6Var2 = this.e;
                    ((qw7) blb.j(this.b)).M(this.e.d, ay6.q(zx6Var2.d, zx6Var2.e));
                    ((ekb) blb.j(this.a)).a(this.k, this.b);
                }
                if (i2 == 178 && qw7Var.d()[iC + 2] == 1) {
                    this.e.e(i2);
                }
            }
            int i5 = iF - iC;
            this.f.b(this.g - ((long) i5), i5, this.j);
            this.f.c(i2, this.k);
            iE = i;
        }
        if (!this.j) {
            this.d.a(bArrD, iE, iF);
        }
        this.f.a(bArrD, iE, iF);
        zx6 zx6Var3 = this.e;
        if (zx6Var3 != null) {
            zx6Var3.a(bArrD, iE, iF);
        }
    }

    @Override
    public void b() {
    }

    @Override
    public void c(qk3 qk3Var, nab.d dVar) {
        dVar.a();
        this.h = dVar.b();
        fva fvaVarTrack = qk3Var.track(dVar.c(), 2);
        this.i = fvaVarTrack;
        this.f = new b(fvaVarTrack);
        ekb ekbVar = this.a;
        if (ekbVar != null) {
            ekbVar.b(qk3Var, dVar);
        }
    }

    @Override
    public void packetStarted(long j, int i) {
        if (j != C.TIME_UNSET) {
            this.k = j;
        }
    }

    @Override
    public void seek() {
        ay6.a(this.c);
        this.d.c();
        b bVar = this.f;
        if (bVar != null) {
            bVar.d();
        }
        zx6 zx6Var = this.e;
        if (zx6Var != null) {
            zx6Var.d();
        }
        this.g = 0L;
        this.k = C.TIME_UNSET;
    }
}
