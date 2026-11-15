package defpackage;

import android.util.Pair;
import androidx.media3.common.C;
import java.util.Arrays;
import java.util.Collections;

public final class nje implements lje {
    public static final double[] r = {23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};
    public String a;
    public rae b;
    public final fle c;
    public final String d;
    public final u4h e;
    public final dke f;
    public final boolean[] g = new boolean[4];
    public final mje h = new mje(128);
    public long i;
    public boolean j;
    public boolean k;
    public long l;
    public long m;
    public long n;
    public long o;
    public boolean p;
    public boolean q;

    public nje(fle fleVar, String str) {
        u4h u4hVar;
        this.c = fleVar;
        this.d = str;
        if (fleVar != null) {
            this.f = new dke(178, 128);
            u4hVar = new u4h();
        } else {
            u4hVar = null;
            this.f = null;
        }
        this.e = u4hVar;
        this.m = C.TIME_UNSET;
        this.o = C.TIME_UNSET;
    }

    /* JADX WARN: Code duplicated, block: B:40:0x0131  */
    /* JADX WARN: Code duplicated, block: B:55:0x0174  */
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
    public final void a(u4h u4hVar) {
        boolean z;
        boolean z2;
        int i;
        float f;
        int i2;
        int i3;
        char c = 4;
        n7g.b(this.b);
        int iW = u4hVar.w();
        int iX = u4hVar.x();
        byte[] bArrN = u4hVar.n();
        this.i += (long) u4hVar.u();
        this.b.d(u4hVar, u4hVar.u());
        while (true) {
            int iA = jzh.a(bArrN, iW, iX, this.g);
            if (iA == iX) {
                break;
            }
            int i4 = iA + 3;
            int i5 = u4hVar.n()[i4] & 255;
            int i6 = iA - iW;
            if (!this.k) {
                if (i6 > 0) {
                    this.h.a(bArrN, iW, iA);
                }
                int i7 = i6 < 0 ? -i6 : 0;
                mje mjeVar = this.h;
                if (mjeVar.c(i5, i7)) {
                    String str = this.a;
                    str.getClass();
                    String str2 = this.d;
                    byte[] bArrCopyOf = Arrays.copyOf(mjeVar.d, mjeVar.b);
                    int i8 = bArrCopyOf[c] & 255;
                    byte b = bArrCopyOf[5];
                    int i9 = bArrCopyOf[6] & 255;
                    int i10 = ((b & 255) >> 4) | (i8 << 4);
                    int i11 = (bArrCopyOf[7] & 240) >> 4;
                    int i12 = ((b & 15) << 8) | i9;
                    if (i11 != 2) {
                        if (i11 == 3) {
                            i2 = i12 * 16;
                            i3 = i10 * 9;
                        } else if (i11 != 4) {
                            f = 1.0f;
                        } else {
                            i2 = i12 * 121;
                            i3 = i10 * 100;
                        }
                        f = i2 / i3;
                    } else {
                        f = (i12 * 4) / (i10 * 3);
                    }
                    gpj gpjVar = new gpj();
                    gpjVar.o(str);
                    gpjVar.e(str2);
                    gpjVar.E("video/mpeg2");
                    gpjVar.J(i10);
                    gpjVar.m(i12);
                    gpjVar.z(f);
                    gpjVar.p(Collections.singletonList(bArrCopyOf));
                    erj erjVarK = gpjVar.K();
                    int i13 = (bArrCopyOf[7] & 15) - 1;
                    long j = 0;
                    if (i13 >= 0 && i13 < 8) {
                        double d = r[i13];
                        byte b2 = bArrCopyOf[mjeVar.c + 9];
                        int i14 = (b2 & 96) >> 5;
                        int i15 = b2 & 31;
                        if (i14 != i15) {
                            d *= (((double) i14) + 1.0d) / ((double) (i15 + 1));
                        }
                        j = (long) (1000000.0d / d);
                    }
                    Pair pairCreate = Pair.create(erjVarK, Long.valueOf(j));
                    this.b.f((erj) pairCreate.first);
                    this.l = ((Long) pairCreate.second).longValue();
                    this.k = true;
                }
            }
            dke dkeVar = this.f;
            if (dkeVar != null) {
                if (i6 > 0) {
                    dkeVar.a(bArrN, iW, iA);
                    i = 0;
                } else {
                    i = -i6;
                }
                if (dkeVar.d(i)) {
                    int iC = jzh.c(dkeVar.d, dkeVar.e);
                    u4h u4hVar2 = this.e;
                    int i16 = kfh.a;
                    u4hVar2.j(dkeVar.d, iC);
                    this.c.a(this.o, u4hVar2);
                }
                if (i5 == 178) {
                    if (u4hVar.n()[iA + 2] == 1) {
                        dkeVar.c(178);
                    }
                    i5 = 178;
                }
            }
            if (i5 == 0 || i5 == 179) {
                int i17 = iX - iA;
                if (this.q && this.k) {
                    long j2 = this.o;
                    if (j2 != C.TIME_UNSET) {
                        this.b.g(j2, this.p ? 1 : 0, ((int) (this.i - this.n)) - i17, i17, null);
                    }
                }
                if (!this.j || this.q) {
                    this.n = this.i - ((long) i17);
                    long j3 = this.m;
                    if (j3 == C.TIME_UNSET) {
                        long j4 = this.o;
                        j3 = j4 != C.TIME_UNSET ? j4 + this.l : -9223372036854775807L;
                    }
                    this.o = j3;
                    z = false;
                    this.p = false;
                    this.m = C.TIME_UNSET;
                    z2 = true;
                    this.j = true;
                } else {
                    z = false;
                    z2 = true;
                }
                this.q = i5 == 0 ? z2 : z;
            } else if (i5 == 184) {
                this.p = true;
            }
            iW = i4;
            iX = iX;
            c = 4;
        }
        if (!this.k) {
            this.h.a(bArrN, iW, iX);
        }
        dke dkeVar2 = this.f;
        if (dkeVar2 != null) {
            dkeVar2.a(bArrN, iW, iX);
        }
    }

    @Override
    public final void b(long j, int i) {
        this.m = j;
    }

    @Override
    public final void c(f9e f9eVar, cle cleVar) {
        cleVar.c();
        this.a = cleVar.b();
        this.b = f9eVar.j(cleVar.a(), 2);
        fle fleVar = this.c;
        if (fleVar != null) {
            fleVar.b(f9eVar, cleVar);
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
    @Override
    public final void zzc(boolean z) {
        n7g.b(this.b);
        if (z) {
            boolean z2 = this.p;
            long j = this.i - this.n;
            this.b.g(this.o, z2 ? 1 : 0, (int) j, 0, null);
        }
    }

    @Override
    public final void zze() {
        jzh.i(this.g);
        this.h.b();
        dke dkeVar = this.f;
        if (dkeVar != null) {
            dkeVar.b();
        }
        this.i = 0L;
        this.j = false;
        this.m = C.TIME_UNSET;
        this.o = C.TIME_UNSET;
    }
}
