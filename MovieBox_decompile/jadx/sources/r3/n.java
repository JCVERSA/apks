package r3;

import android.util.Pair;
import androidx.media3.common.util.a1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.Arrays;
import java.util.Collections;
import k2.s0;

public final class n implements m {

    private static final double[] f70591r = {23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};

    private String f70592a;

    private s0 f70593b;

    private final n0 f70594c;

    private final String f70595d;

    private final androidx.media3.common.util.j0 f70596e;

    private final w f70597f;

    private final boolean[] f70598g;

    private final a f70599h;

    private long f70600i;

    private boolean f70601j;

    private boolean f70602k;

    private long f70603l;

    private long f70604m;

    private long f70605n;

    private long f70606o;

    private boolean f70607p;

    private boolean f70608q;

    private static final class a {

        private static final byte[] f70609e = {0, 0, 1};

        private boolean f70610a;

        public int f70611b;

        public int f70612c;

        public byte[] f70613d;

        public a(int i10) {
            this.f70613d = new byte[i10];
        }

        public void a(byte[] bArr, int i10, int i11) {
            if (this.f70610a) {
                int i12 = i11 - i10;
                byte[] bArr2 = this.f70613d;
                int length = bArr2.length;
                int i13 = this.f70611b;
                if (length < i13 + i12) {
                    this.f70613d = Arrays.copyOf(bArr2, (i13 + i12) * 2);
                }
                System.arraycopy(bArr, i10, this.f70613d, this.f70611b, i12);
                this.f70611b += i12;
            }
        }

        public boolean b(int i10, int i11) {
            if (this.f70610a) {
                int i12 = this.f70611b - i11;
                this.f70611b = i12;
                if (this.f70612c != 0 || i10 != 181) {
                    this.f70610a = false;
                    return true;
                }
                this.f70612c = i12;
            } else if (i10 == 179) {
                this.f70610a = true;
            }
            byte[] bArr = f70609e;
            a(bArr, 0, bArr.length);
            return false;
        }

        public void c() {
            this.f70610a = false;
            this.f70611b = 0;
            this.f70612c = 0;
        }
    }

    public n(String str) {
        this(null, str);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0077  */
    /* JADX WARN: Code duplicated, block: B:16:0x007c  */
    /* JADX WARN: Code duplicated, block: B:18:0x008b  */
    /* JADX WARN: Code duplicated, block: B:20:0x009c  */
    private static Pair b(a aVar, String str, String str2) {
        float f10;
        int i10;
        float f11;
        int i11;
        long j10;
        double[] dArr;
        double d10;
        int i12;
        int i13;
        byte[] bArrCopyOf = Arrays.copyOf(aVar.f70613d, aVar.f70611b);
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
                androidx.media3.common.r rVarN = new androidx.media3.common.r.b().f0(str).U(str2).u0(MimeTypes.VIDEO_MPEG2).B0(i15).d0(i16).q0(f11).g0(Collections.singletonList(bArrCopyOf)).N();
                i11 = (bArrCopyOf[7] & 15) - 1;
                if (i11 >= 0) {
                    dArr = f70591r;
                    if (i11 < dArr.length) {
                        d10 = dArr[i11];
                        byte b11 = bArrCopyOf[aVar.f70612c + 9];
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
                return Pair.create(rVarN, Long.valueOf(j10));
            }
            f10 = i16 * 16;
            i10 = i15 * 9;
        }
        f11 = f10 / i10;
        androidx.media3.common.r rVarN2 = new androidx.media3.common.r.b().f0(str).U(str2).u0(MimeTypes.VIDEO_MPEG2).B0(i15).d0(i16).q0(f11).g0(Collections.singletonList(bArrCopyOf)).N();
        i11 = (bArrCopyOf[7] & 15) - 1;
        if (i11 >= 0) {
            dArr = f70591r;
            if (i11 < dArr.length) {
                d10 = dArr[i11];
                byte b12 = bArrCopyOf[aVar.f70612c + 9];
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
        return Pair.create(rVarN2, Long.valueOf(j10));
    }

    /* JADX WARN: Code duplicated, block: B:49:0x0114  */
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
    public void a(androidx.media3.common.util.j0 j0Var) {
        boolean z10;
        int i10;
        androidx.media3.common.util.a.i(this.f70593b);
        int iF = j0Var.f();
        int iG = j0Var.g();
        byte[] bArrE = j0Var.e();
        this.f70600i += (long) j0Var.a();
        this.f70593b.c(j0Var, j0Var.a());
        while (true) {
            int iE = androidx.media3.container.g.e(bArrE, iF, iG, this.f70598g);
            if (iE == iG) {
                break;
            }
            int i11 = iE + 3;
            int i12 = j0Var.e()[i11] & 255;
            int i13 = iE - iF;
            if (!this.f70602k) {
                if (i13 > 0) {
                    this.f70599h.a(bArrE, iF, iE);
                }
                if (this.f70599h.b(i12, i13 < 0 ? -i13 : 0)) {
                    Pair pairB = b(this.f70599h, (String) androidx.media3.common.util.a.e(this.f70592a), this.f70595d);
                    this.f70593b.d((androidx.media3.common.r) pairB.first);
                    this.f70603l = ((Long) pairB.second).longValue();
                    this.f70602k = true;
                }
            }
            w wVar = this.f70597f;
            if (wVar != null) {
                if (i13 > 0) {
                    wVar.a(bArrE, iF, iE);
                    i10 = 0;
                } else {
                    i10 = -i13;
                }
                if (this.f70597f.b(i10)) {
                    w wVar2 = this.f70597f;
                    ((androidx.media3.common.util.j0) a1.i(this.f70596e)).U(this.f70597f.f70799d, androidx.media3.container.g.L(wVar2.f70799d, wVar2.f70800e));
                    ((n0) a1.i(this.f70594c)).a(this.f70606o, this.f70596e);
                }
                if (i12 == 178 && j0Var.e()[iE + 2] == 1) {
                    this.f70597f.e(i12);
                }
            }
            if (i12 == 0 || i12 == 179) {
                int i14 = iG - iE;
                if (this.f70608q && this.f70602k) {
                    long j10 = this.f70606o;
                    if (j10 != C.TIME_UNSET) {
                        this.f70593b.b(j10, this.f70607p ? 1 : 0, ((int) (this.f70600i - this.f70605n)) - i14, i14, null);
                    }
                }
                if (!this.f70601j || this.f70608q) {
                    this.f70605n = this.f70600i - ((long) i14);
                    long j11 = this.f70604m;
                    if (j11 == C.TIME_UNSET) {
                        long j12 = this.f70606o;
                        j11 = j12 != C.TIME_UNSET ? j12 + this.f70603l : -9223372036854775807L;
                    }
                    this.f70606o = j11;
                    this.f70607p = false;
                    this.f70604m = C.TIME_UNSET;
                    z10 = true;
                    this.f70601j = true;
                } else {
                    z10 = true;
                }
                this.f70608q = i12 == 0 ? z10 : false;
            } else if (i12 == 184) {
                this.f70607p = true;
            }
            iF = i11;
        }
        if (!this.f70602k) {
            this.f70599h.a(bArrE, iF, iG);
        }
        w wVar3 = this.f70597f;
        if (wVar3 != null) {
            wVar3.a(bArrE, iF, iG);
        }
    }

    @Override
    public void c(long j10, int i10) {
        this.f70604m = j10;
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
    @Override
    public void d(boolean z10) {
        androidx.media3.common.util.a.i(this.f70593b);
        if (z10) {
            boolean z11 = this.f70607p;
            this.f70593b.b(this.f70606o, z11 ? 1 : 0, (int) (this.f70600i - this.f70605n), 0, null);
        }
    }

    @Override
    public void e(k2.t tVar, l0.d dVar) {
        dVar.a();
        this.f70592a = dVar.b();
        this.f70593b = tVar.track(dVar.c(), 2);
        n0 n0Var = this.f70594c;
        if (n0Var != null) {
            n0Var.b(tVar, dVar);
        }
    }

    @Override
    public void seek() {
        androidx.media3.container.g.c(this.f70598g);
        this.f70599h.c();
        w wVar = this.f70597f;
        if (wVar != null) {
            wVar.d();
        }
        this.f70600i = 0L;
        this.f70601j = false;
        this.f70604m = C.TIME_UNSET;
        this.f70606o = C.TIME_UNSET;
    }

    n(n0 n0Var, String str) {
        this.f70594c = n0Var;
        this.f70595d = str;
        this.f70598g = new boolean[4];
        this.f70599h = new a(128);
        if (n0Var != null) {
            this.f70597f = new w(178, 128);
            this.f70596e = new androidx.media3.common.util.j0();
        } else {
            this.f70597f = null;
            this.f70596e = null;
        }
        this.f70604m = C.TIME_UNSET;
        this.f70606o = C.TIME_UNSET;
    }
}
