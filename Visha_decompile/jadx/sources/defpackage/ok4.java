package defpackage;

import android.util.Pair;
import androidx.media3.common.C;
import com.google.android.exoplayer2.k;
import java.util.Arrays;
import java.util.Collections;

public final class ok4 implements m83 {
    public static final double[] q = {23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};
    public String a;
    public fva b;
    public final ekb c;
    public final qw7 d;
    public final zx6 e;
    public final boolean[] f;
    public final a g;
    public long h;
    public boolean i;
    public boolean j;
    public long k;
    public long l;
    public long m;
    public long n;
    public boolean o;
    public boolean p;

    public static final class a {
        public static final byte[] e = {0, 0, 1};
        public boolean a;
        public int b;
        public int c;
        public byte[] d;

        public a(int i) {
            this.d = new byte[i];
        }

        public void a(byte[] bArr, int i, int i2) {
            if (this.a) {
                int i3 = i2 - i;
                byte[] bArr2 = this.d;
                int length = bArr2.length;
                int i4 = this.b;
                if (length < i4 + i3) {
                    this.d = Arrays.copyOf(bArr2, (i4 + i3) * 2);
                }
                System.arraycopy(bArr, i, this.d, this.b, i3);
                this.b += i3;
            }
        }

        public boolean b(int i, int i2) {
            if (this.a) {
                int i3 = this.b - i2;
                this.b = i3;
                if (this.c != 0 || i != 181) {
                    this.a = false;
                    return true;
                }
                this.c = i3;
            } else if (i == 179) {
                this.a = true;
            }
            byte[] bArr = e;
            a(bArr, 0, bArr.length);
            return false;
        }

        public void c() {
            this.a = false;
            this.b = 0;
            this.c = 0;
        }
    }

    public ok4() {
        this(null);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0074  */
    /* JADX WARN: Code duplicated, block: B:16:0x0079  */
    /* JADX WARN: Code duplicated, block: B:18:0x0088  */
    /* JADX WARN: Code duplicated, block: B:20:0x0099  */
    public static Pair d(a aVar, String str) {
        float f;
        int i;
        float f2;
        int i2;
        long j;
        double[] dArr;
        double d;
        int i3;
        int i4;
        byte[] bArrCopyOf = Arrays.copyOf(aVar.d, aVar.b);
        int i5 = bArrCopyOf[4] & 255;
        byte b = bArrCopyOf[5];
        int i6 = (i5 << 4) | ((b & 255) >> 4);
        int i7 = ((b & 15) << 8) | (bArrCopyOf[6] & 255);
        int i8 = (bArrCopyOf[7] & 240) >> 4;
        if (i8 == 2) {
            f = i7 * 4;
            i = i6 * 3;
        } else {
            if (i8 != 3) {
                if (i8 != 4) {
                    f2 = 1.0f;
                } else {
                    f = i7 * 121;
                    i = i6 * 100;
                }
                k kVarE = new k.b().S(str).e0("video/mpeg2").j0(i6).Q(i7).a0(f2).T(Collections.singletonList(bArrCopyOf)).E();
                i2 = (bArrCopyOf[7] & 15) - 1;
                if (i2 >= 0) {
                    dArr = q;
                    if (i2 < dArr.length) {
                        d = dArr[i2];
                        byte b2 = bArrCopyOf[aVar.c + 9];
                        i3 = (b2 & 96) >> 5;
                        i4 = b2 & 31;
                        if (i3 != i4) {
                            d *= (((double) i3) + 1.0d) / ((double) (i4 + 1));
                        }
                        j = (long) (1000000.0d / d);
                    } else {
                        j = 0;
                    }
                } else {
                    j = 0;
                }
                return Pair.create(kVarE, Long.valueOf(j));
            }
            f = i7 * 16;
            i = i6 * 9;
        }
        f2 = f / i;
        k kVarE2 = new k.b().S(str).e0("video/mpeg2").j0(i6).Q(i7).a0(f2).T(Collections.singletonList(bArrCopyOf)).E();
        i2 = (bArrCopyOf[7] & 15) - 1;
        if (i2 >= 0) {
            dArr = q;
            if (i2 < dArr.length) {
                d = dArr[i2];
                byte b3 = bArrCopyOf[aVar.c + 9];
                i3 = (b3 & 96) >> 5;
                i4 = b3 & 31;
                if (i3 != i4) {
                    d *= (((double) i3) + 1.0d) / ((double) (i4 + 1));
                }
                j = (long) (1000000.0d / d);
            } else {
                j = 0;
            }
        } else {
            j = 0;
        }
        return Pair.create(kVarE2, Long.valueOf(j));
    }

    /* JADX WARN: Code duplicated, block: B:49:0x0112  */
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
    @Override
    public void a(qw7 qw7Var) {
        boolean z;
        int i;
        zi.i(this.b);
        int iE = qw7Var.e();
        int iF = qw7Var.f();
        byte[] bArrD = qw7Var.d();
        this.h += (long) qw7Var.a();
        this.b.d(qw7Var, qw7Var.a());
        while (true) {
            int iC = ay6.c(bArrD, iE, iF, this.f);
            if (iC == iF) {
                break;
            }
            int i2 = iC + 3;
            int i3 = qw7Var.d()[i2] & 255;
            int i4 = iC - iE;
            if (!this.j) {
                if (i4 > 0) {
                    this.g.a(bArrD, iE, iC);
                }
                if (this.g.b(i3, i4 < 0 ? -i4 : 0)) {
                    Pair pairD = d(this.g, (String) zi.e(this.a));
                    this.b.b((k) pairD.first);
                    this.k = ((Long) pairD.second).longValue();
                    this.j = true;
                }
            }
            zx6 zx6Var = this.e;
            if (zx6Var != null) {
                if (i4 > 0) {
                    zx6Var.a(bArrD, iE, iC);
                    i = 0;
                } else {
                    i = -i4;
                }
                if (this.e.b(i)) {
                    zx6 zx6Var2 = this.e;
                    ((qw7) blb.j(this.d)).M(this.e.d, ay6.q(zx6Var2.d, zx6Var2.e));
                    ((ekb) blb.j(this.c)).a(this.n, this.d);
                }
                if (i3 == 178 && qw7Var.d()[iC + 2] == 1) {
                    this.e.e(i3);
                }
            }
            if (i3 == 0 || i3 == 179) {
                int i5 = iF - iC;
                if (this.p && this.j) {
                    long j = this.n;
                    if (j != C.TIME_UNSET) {
                        this.b.e(j, this.o ? 1 : 0, ((int) (this.h - this.m)) - i5, i5, null);
                    }
                }
                if (!this.i || this.p) {
                    this.m = this.h - ((long) i5);
                    long j2 = this.l;
                    if (j2 == C.TIME_UNSET) {
                        long j3 = this.n;
                        j2 = j3 != C.TIME_UNSET ? j3 + this.k : -9223372036854775807L;
                    }
                    this.n = j2;
                    this.o = false;
                    this.l = C.TIME_UNSET;
                    z = true;
                    this.i = true;
                } else {
                    z = true;
                }
                this.p = i3 == 0 ? z : false;
            } else if (i3 == 184) {
                this.o = true;
            }
            iE = i2;
        }
        if (!this.j) {
            this.g.a(bArrD, iE, iF);
        }
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
        this.a = dVar.b();
        this.b = qk3Var.track(dVar.c(), 2);
        ekb ekbVar = this.c;
        if (ekbVar != null) {
            ekbVar.b(qk3Var, dVar);
        }
    }

    @Override
    public void packetStarted(long j, int i) {
        this.l = j;
    }

    @Override
    public void seek() {
        ay6.a(this.f);
        this.g.c();
        zx6 zx6Var = this.e;
        if (zx6Var != null) {
            zx6Var.d();
        }
        this.h = 0L;
        this.i = false;
        this.l = C.TIME_UNSET;
        this.n = C.TIME_UNSET;
    }

    public ok4(ekb ekbVar) {
        this.c = ekbVar;
        this.f = new boolean[4];
        this.g = new a(128);
        if (ekbVar != null) {
            this.e = new zx6(178, 128);
            this.d = new qw7();
        } else {
            this.e = null;
            this.d = null;
        }
        this.l = C.TIME_UNSET;
        this.n = C.TIME_UNSET;
    }
}
