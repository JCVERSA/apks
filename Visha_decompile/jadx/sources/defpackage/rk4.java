package defpackage;

import androidx.media3.common.C;
import com.google.android.exoplayer2.k;
import com.transsion.socket.pkgdata.SocketData;
import java.util.Collections;

public final class rk4 implements m83 {
    public final ra9 a;
    public String b;
    public fva c;
    public a d;
    public boolean e;
    public long l;
    public final boolean[] f = new boolean[3];
    public final zx6 g = new zx6(32, 128);
    public final zx6 h = new zx6(33, 128);
    public final zx6 i = new zx6(34, 128);
    public final zx6 j = new zx6(39, 128);
    public final zx6 k = new zx6(40, 128);
    public long m = C.TIME_UNSET;
    public final qw7 n = new qw7();

    public static final class a {
        public final fva a;
        public long b;
        public boolean c;
        public int d;
        public long e;
        public boolean f;
        public boolean g;
        public boolean h;
        public boolean i;
        public boolean j;
        public long k;
        public long l;
        public boolean m;

        public a(fva fvaVar) {
            this.a = fvaVar;
        }

        public static boolean b(int i) {
            return (32 <= i && i <= 35) || i == 39;
        }

        public static boolean c(int i) {
            return i < 32 || i == 40;
        }

        public void a(long j, int i, boolean z) {
            if (this.j && this.g) {
                this.m = this.c;
                this.j = false;
            } else if (this.h || this.g) {
                if (z && this.i) {
                    d(i + ((int) (j - this.b)));
                }
                this.k = this.b;
                this.l = this.e;
                this.m = this.c;
                this.i = true;
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
        public final void d(int i) {
            long j = this.l;
            if (j == C.TIME_UNSET) {
                return;
            }
            boolean z = this.m;
            this.a.e(j, z ? 1 : 0, (int) (this.b - this.k), i, null);
        }

        public void e(byte[] bArr, int i, int i2) {
            if (this.f) {
                int i3 = this.d;
                int i4 = (i + 2) - i3;
                if (i4 >= i2) {
                    this.d = i3 + (i2 - i);
                } else {
                    this.g = (bArr[i4] & SocketData.CLAZZ_TYPE_END_SOCKET) != 0;
                    this.f = false;
                }
            }
        }

        public void f() {
            this.f = false;
            this.g = false;
            this.h = false;
            this.i = false;
            this.j = false;
        }

        public void g(long j, int i, int i2, long j2, boolean z) {
            this.g = false;
            this.h = false;
            this.e = j2;
            this.d = 0;
            this.b = j;
            if (!c(i2)) {
                if (this.i && !this.j) {
                    if (z) {
                        d(i);
                    }
                    this.i = false;
                }
                if (b(i2)) {
                    this.h = !this.j;
                    this.j = true;
                }
            }
            boolean z2 = i2 >= 16 && i2 <= 21;
            this.c = z2;
            this.f = z2 || i2 <= 9;
        }
    }

    public rk4(ra9 ra9Var) {
        this.a = ra9Var;
    }

    private void d() {
        zi.i(this.c);
        blb.j(this.d);
    }

    private void e(long j, int i, int i2, long j2) {
        this.d.a(j, i, this.e);
        if (!this.e) {
            this.g.b(i2);
            this.h.b(i2);
            this.i.b(i2);
            if (this.g.c() && this.h.c() && this.i.c()) {
                this.c.b(g(this.b, this.g, this.h, this.i));
                this.e = true;
            }
        }
        if (this.j.b(i2)) {
            zx6 zx6Var = this.j;
            this.n.M(this.j.d, ay6.q(zx6Var.d, zx6Var.e));
            this.n.P(5);
            this.a.a(j2, this.n);
        }
        if (this.k.b(i2)) {
            zx6 zx6Var2 = this.k;
            this.n.M(this.k.d, ay6.q(zx6Var2.d, zx6Var2.e));
            this.n.P(5);
            this.a.a(j2, this.n);
        }
    }

    private void f(byte[] bArr, int i, int i2) {
        this.d.e(bArr, i, i2);
        if (!this.e) {
            this.g.a(bArr, i, i2);
            this.h.a(bArr, i, i2);
            this.i.a(bArr, i, i2);
        }
        this.j.a(bArr, i, i2);
        this.k.a(bArr, i, i2);
    }

    public static k g(String str, zx6 zx6Var, zx6 zx6Var2, zx6 zx6Var3) {
        int i = zx6Var.e;
        byte[] bArr = new byte[zx6Var2.e + i + zx6Var3.e];
        int i2 = 0;
        System.arraycopy(zx6Var.d, 0, bArr, 0, i);
        System.arraycopy(zx6Var2.d, 0, bArr, zx6Var.e, zx6Var2.e);
        System.arraycopy(zx6Var3.d, 0, bArr, zx6Var.e + zx6Var2.e, zx6Var3.e);
        rw7 rw7Var = new rw7(zx6Var2.d, 0, zx6Var2.e);
        rw7Var.l(44);
        int iE = rw7Var.e(3);
        rw7Var.k();
        int iE2 = rw7Var.e(2);
        boolean zD = rw7Var.d();
        int iE3 = rw7Var.e(5);
        int i3 = 0;
        int i4 = 0;
        while (true) {
            if (i4 >= 32) {
                break;
            }
            if (rw7Var.d()) {
                i3 |= 1 << i4;
            }
            i4++;
        }
        int[] iArr = new int[6];
        for (int i5 = 0; i5 < 6; i5++) {
            iArr[i5] = rw7Var.e(8);
        }
        int iE4 = rw7Var.e(8);
        for (int i6 = 0; i6 < iE; i6++) {
            if (rw7Var.d()) {
                i2 += 89;
            }
            if (rw7Var.d()) {
                i2 += 8;
            }
        }
        rw7Var.l(i2);
        if (iE > 0) {
            rw7Var.l((8 - iE) * 2);
        }
        rw7Var.h();
        int iH = rw7Var.h();
        if (iH == 3) {
            rw7Var.k();
        }
        int iH2 = rw7Var.h();
        int iH3 = rw7Var.h();
        if (rw7Var.d()) {
            int iH4 = rw7Var.h();
            int iH5 = rw7Var.h();
            int iH6 = rw7Var.h();
            int iH7 = rw7Var.h();
            iH2 -= ((iH == 1 || iH == 2) ? 2 : 1) * (iH4 + iH5);
            iH3 -= (iH == 1 ? 2 : 1) * (iH6 + iH7);
        }
        rw7Var.h();
        rw7Var.h();
        int iH8 = rw7Var.h();
        for (int i7 = rw7Var.d() ? 0 : iE; i7 <= iE; i7++) {
            rw7Var.h();
            rw7Var.h();
            rw7Var.h();
        }
        rw7Var.h();
        rw7Var.h();
        rw7Var.h();
        rw7Var.h();
        rw7Var.h();
        rw7Var.h();
        if (rw7Var.d() && rw7Var.d()) {
            h(rw7Var);
        }
        rw7Var.l(2);
        if (rw7Var.d()) {
            rw7Var.l(8);
            rw7Var.h();
            rw7Var.h();
            rw7Var.k();
        }
        i(rw7Var);
        if (rw7Var.d()) {
            for (int i8 = 0; i8 < rw7Var.h(); i8++) {
                rw7Var.l(iH8 + 5);
            }
        }
        rw7Var.l(2);
        float f = 1.0f;
        if (rw7Var.d()) {
            if (rw7Var.d()) {
                int iE5 = rw7Var.e(8);
                if (iE5 == 255) {
                    int iE6 = rw7Var.e(16);
                    int iE7 = rw7Var.e(16);
                    if (iE6 != 0 && iE7 != 0) {
                        f = iE6 / iE7;
                    }
                } else {
                    float[] fArr = ay6.b;
                    if (iE5 < fArr.length) {
                        f = fArr[iE5];
                    } else {
                        op5.i("H265Reader", "Unexpected aspect_ratio_idc value: " + iE5);
                    }
                }
            }
            if (rw7Var.d()) {
                rw7Var.k();
            }
            if (rw7Var.d()) {
                rw7Var.l(4);
                if (rw7Var.d()) {
                    rw7Var.l(24);
                }
            }
            if (rw7Var.d()) {
                rw7Var.h();
                rw7Var.h();
            }
            rw7Var.k();
            if (rw7Var.d()) {
                iH3 *= 2;
            }
        }
        return new k.b().S(str).e0("video/hevc").I(b51.c(iE2, zD, iE3, i3, iArr, iE4)).j0(iH2).Q(iH3).a0(f).T(Collections.singletonList(bArr)).E();
    }

    public static void h(rw7 rw7Var) {
        for (int i = 0; i < 4; i++) {
            int i2 = 0;
            while (i2 < 6) {
                int i3 = 1;
                if (rw7Var.d()) {
                    int iMin = Math.min(64, 1 << ((i << 1) + 4));
                    if (i > 1) {
                        rw7Var.g();
                    }
                    for (int i4 = 0; i4 < iMin; i4++) {
                        rw7Var.g();
                    }
                } else {
                    rw7Var.h();
                }
                if (i == 3) {
                    i3 = 3;
                }
                i2 += i3;
            }
        }
    }

    public static void i(rw7 rw7Var) {
        int iH = rw7Var.h();
        boolean zD = false;
        int i = 0;
        for (int i2 = 0; i2 < iH; i2++) {
            if (i2 != 0) {
                zD = rw7Var.d();
            }
            if (zD) {
                rw7Var.k();
                rw7Var.h();
                for (int i3 = 0; i3 <= i; i3++) {
                    if (rw7Var.d()) {
                        rw7Var.k();
                    }
                }
            } else {
                int iH2 = rw7Var.h();
                int iH3 = rw7Var.h();
                int i4 = iH2 + iH3;
                for (int i5 = 0; i5 < iH2; i5++) {
                    rw7Var.h();
                    rw7Var.k();
                }
                for (int i6 = 0; i6 < iH3; i6++) {
                    rw7Var.h();
                    rw7Var.k();
                }
                i = i4;
            }
        }
    }

    @Override
    public void a(qw7 qw7Var) {
        d();
        while (qw7Var.a() > 0) {
            int iE = qw7Var.e();
            int iF = qw7Var.f();
            byte[] bArrD = qw7Var.d();
            this.l += (long) qw7Var.a();
            this.c.d(qw7Var, qw7Var.a());
            while (iE < iF) {
                int iC = ay6.c(bArrD, iE, iF, this.f);
                if (iC == iF) {
                    f(bArrD, iE, iF);
                    return;
                }
                int iE2 = ay6.e(bArrD, iC);
                int i = iC - iE;
                if (i > 0) {
                    f(bArrD, iE, iC);
                }
                int i2 = iF - iC;
                long j = this.l - ((long) i2);
                e(j, i2, i < 0 ? -i : 0, this.m);
                j(j, i2, iE2, this.m);
                iE = iC + 3;
            }
        }
    }

    @Override
    public void b() {
    }

    @Override
    public void c(qk3 qk3Var, nab.d dVar) {
        dVar.a();
        this.b = dVar.b();
        fva fvaVarTrack = qk3Var.track(dVar.c(), 2);
        this.c = fvaVarTrack;
        this.d = new a(fvaVarTrack);
        this.a.b(qk3Var, dVar);
    }

    public final void j(long j, int i, int i2, long j2) {
        this.d.g(j, i, i2, j2, this.e);
        if (!this.e) {
            this.g.e(i2);
            this.h.e(i2);
            this.i.e(i2);
        }
        this.j.e(i2);
        this.k.e(i2);
    }

    @Override
    public void packetStarted(long j, int i) {
        if (j != C.TIME_UNSET) {
            this.m = j;
        }
    }

    @Override
    public void seek() {
        this.l = 0L;
        this.m = C.TIME_UNSET;
        ay6.a(this.f);
        this.g.d();
        this.h.d();
        this.i.d();
        this.j.d();
        this.k.d();
        a aVar = this.d;
        if (aVar != null) {
            aVar.f();
        }
    }
}
