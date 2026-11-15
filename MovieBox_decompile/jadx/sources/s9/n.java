package s9;

import android.util.Pair;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.Arrays;
import java.util.Collections;

public final class n implements m {

    private static final double[] f71783q = {23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};

    private String f71784a;

    private i9.e0 f71785b;

    private final k0 f71786c;

    private final com.google.android.exoplayer2.util.d0 f71787d;

    private final u f71788e;

    private final boolean[] f71789f;

    private final a f71790g;

    private long f71791h;

    private boolean f71792i;

    private boolean f71793j;

    private long f71794k;

    private long f71795l;

    private long f71796m;

    private long f71797n;

    private boolean f71798o;

    private boolean f71799p;

    private static final class a {

        private static final byte[] f71800e = {0, 0, 1};

        private boolean f71801a;

        public int f71802b;

        public int f71803c;

        public byte[] f71804d;

        public a(int i10) {
            this.f71804d = new byte[i10];
        }

        public void a(byte[] bArr, int i10, int i11) {
            if (this.f71801a) {
                int i12 = i11 - i10;
                byte[] bArr2 = this.f71804d;
                int length = bArr2.length;
                int i13 = this.f71802b;
                if (length < i13 + i12) {
                    this.f71804d = Arrays.copyOf(bArr2, (i13 + i12) * 2);
                }
                System.arraycopy(bArr, i10, this.f71804d, this.f71802b, i12);
                this.f71802b += i12;
            }
        }

        public boolean b(int i10, int i11) {
            if (this.f71801a) {
                int i12 = this.f71802b - i11;
                this.f71802b = i12;
                if (this.f71803c != 0 || i10 != 181) {
                    this.f71801a = false;
                    return true;
                }
                this.f71803c = i12;
            } else if (i10 == 179) {
                this.f71801a = true;
            }
            byte[] bArr = f71800e;
            a(bArr, 0, bArr.length);
            return false;
        }

        public void c() {
            this.f71801a = false;
            this.f71802b = 0;
            this.f71803c = 0;
        }
    }

    public n() {
        this(null);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0073  */
    /* JADX WARN: Code duplicated, block: B:16:0x0078  */
    /* JADX WARN: Code duplicated, block: B:18:0x0087  */
    /* JADX WARN: Code duplicated, block: B:20:0x0098  */
    private static Pair a(a aVar, String str) {
        float f10;
        int i10;
        float f11;
        int i11;
        long j10;
        double[] dArr;
        double d10;
        int i12;
        int i13;
        byte[] bArrCopyOf = Arrays.copyOf(aVar.f71804d, aVar.f71802b);
        int i14 = bArrCopyOf[4] & 255;
        byte b10 = bArrCopyOf[5];
        int i15 = (i14 << 4) | ((b10 & 255) >> 4);
        int i16 = ((b10 & 15) << 8) | (bArrCopyOf[6] & 255);
        int i17 = (bArrCopyOf[7] & 240) >> 4;
        if (i17 == 2) {
            f10 = i16 * 4;
            i10 = i15 * 3;
        } else {
            if (i17 != 3) {
                if (i17 != 4) {
                    f11 = 1.0f;
                } else {
                    f10 = i16 * Sdk$SDKError.Reason.TPAT_ERROR_VALUE;
                    i10 = i15 * 100;
                }
                p1 p1VarE = new p1.b().S(str).e0(MimeTypes.VIDEO_MPEG2).j0(i15).Q(i16).a0(f11).T(Collections.singletonList(bArrCopyOf)).E();
                i11 = (bArrCopyOf[7] & 15) - 1;
                if (i11 >= 0) {
                    dArr = f71783q;
                    if (i11 < dArr.length) {
                        d10 = dArr[i11];
                        byte b11 = bArrCopyOf[aVar.f71803c + 9];
                        i12 = (b11 & 96) >> 5;
                        i13 = b11 & 31;
                        if (i12 != i13) {
                            d10 *= (((double) i12) + 1.0d) / ((double) (i13 + 1));
                        }
                        j10 = (long) (1000000.0d / d10);
                    } else {
                        j10 = 0;
                    }
                } else {
                    j10 = 0;
                }
                return Pair.create(p1VarE, Long.valueOf(j10));
            }
            f10 = i16 * 16;
            i10 = i15 * 9;
        }
        f11 = f10 / i10;
        p1 p1VarE2 = new p1.b().S(str).e0(MimeTypes.VIDEO_MPEG2).j0(i15).Q(i16).a0(f11).T(Collections.singletonList(bArrCopyOf)).E();
        i11 = (bArrCopyOf[7] & 15) - 1;
        if (i11 >= 0) {
            dArr = f71783q;
            if (i11 < dArr.length) {
                d10 = dArr[i11];
                byte b12 = bArrCopyOf[aVar.f71803c + 9];
                i12 = (b12 & 96) >> 5;
                i13 = b12 & 31;
                if (i12 != i13) {
                    d10 *= (((double) i12) + 1.0d) / ((double) (i13 + 1));
                }
                j10 = (long) (1000000.0d / d10);
            } else {
                j10 = 0;
            }
        } else {
            j10 = 0;
        }
        return Pair.create(p1VarE2, Long.valueOf(j10));
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
    public void b(com.google.android.exoplayer2.util.d0 d0Var) {
        boolean z10;
        int i10;
        com.google.android.exoplayer2.util.a.i(this.f71785b);
        int iE = d0Var.e();
        int iF = d0Var.f();
        byte[] bArrD = d0Var.d();
        this.f71791h += (long) d0Var.a();
        this.f71785b.c(d0Var, d0Var.a());
        while (true) {
            int iC = com.google.android.exoplayer2.util.x.c(bArrD, iE, iF, this.f71789f);
            if (iC == iF) {
                break;
            }
            int i11 = iC + 3;
            int i12 = d0Var.d()[i11] & 255;
            int i13 = iC - iE;
            if (!this.f71793j) {
                if (i13 > 0) {
                    this.f71790g.a(bArrD, iE, iC);
                }
                if (this.f71790g.b(i12, i13 < 0 ? -i13 : 0)) {
                    Pair pairA = a(this.f71790g, (String) com.google.android.exoplayer2.util.a.e(this.f71784a));
                    this.f71785b.d((p1) pairA.first);
                    this.f71794k = ((Long) pairA.second).longValue();
                    this.f71793j = true;
                }
            }
            u uVar = this.f71788e;
            if (uVar != null) {
                if (i13 > 0) {
                    uVar.a(bArrD, iE, iC);
                    i10 = 0;
                } else {
                    i10 = -i13;
                }
                if (this.f71788e.b(i10)) {
                    u uVar2 = this.f71788e;
                    ((com.google.android.exoplayer2.util.d0) p0.j(this.f71787d)).N(this.f71788e.f71949d, com.google.android.exoplayer2.util.x.q(uVar2.f71949d, uVar2.f71950e));
                    ((k0) p0.j(this.f71786c)).a(this.f71797n, this.f71787d);
                }
                if (i12 == 178 && d0Var.d()[iC + 2] == 1) {
                    this.f71788e.e(i12);
                }
            }
            if (i12 == 0 || i12 == 179) {
                int i14 = iF - iC;
                if (this.f71799p && this.f71793j) {
                    long j10 = this.f71797n;
                    if (j10 != C.TIME_UNSET) {
                        this.f71785b.e(j10, this.f71798o ? 1 : 0, ((int) (this.f71791h - this.f71796m)) - i14, i14, null);
                    }
                }
                if (!this.f71792i || this.f71799p) {
                    this.f71796m = this.f71791h - ((long) i14);
                    long j11 = this.f71795l;
                    if (j11 == C.TIME_UNSET) {
                        long j12 = this.f71797n;
                        j11 = j12 != C.TIME_UNSET ? j12 + this.f71794k : -9223372036854775807L;
                    }
                    this.f71797n = j11;
                    this.f71798o = false;
                    this.f71795l = C.TIME_UNSET;
                    z10 = true;
                    this.f71792i = true;
                } else {
                    z10 = true;
                }
                this.f71799p = i12 == 0 ? z10 : false;
            } else if (i12 == 184) {
                this.f71798o = true;
            }
            iE = i11;
        }
        if (!this.f71793j) {
            this.f71790g.a(bArrD, iE, iF);
        }
        u uVar3 = this.f71788e;
        if (uVar3 != null) {
            uVar3.a(bArrD, iE, iF);
        }
    }

    @Override
    public void c(long j10, int i10) {
        this.f71795l = j10;
    }

    @Override
    public void d(i9.n nVar, i0.d dVar) {
        dVar.a();
        this.f71784a = dVar.b();
        this.f71785b = nVar.track(dVar.c(), 2);
        k0 k0Var = this.f71786c;
        if (k0Var != null) {
            k0Var.b(nVar, dVar);
        }
    }

    @Override
    public void seek() {
        com.google.android.exoplayer2.util.x.a(this.f71789f);
        this.f71790g.c();
        u uVar = this.f71788e;
        if (uVar != null) {
            uVar.d();
        }
        this.f71791h = 0L;
        this.f71792i = false;
        this.f71795l = C.TIME_UNSET;
        this.f71797n = C.TIME_UNSET;
    }

    n(k0 k0Var) {
        this.f71786c = k0Var;
        this.f71789f = new boolean[4];
        this.f71790g = new a(128);
        if (k0Var != null) {
            this.f71788e = new u(178, 128);
            this.f71787d = new com.google.android.exoplayer2.util.d0();
        } else {
            this.f71788e = null;
            this.f71787d = null;
        }
        this.f71795l = C.TIME_UNSET;
        this.f71797n = C.TIME_UNSET;
    }

    @Override
    public void packetFinished() {
    }
}
