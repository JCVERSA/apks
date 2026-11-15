package com.yandex.mobile.ads.impl;

import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import java.util.Arrays;
import java.util.Collections;

public final class cf0 implements b50 {
    private static final double[] q = {23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};
    private String a;
    private a62 b;

    @Nullable
    private final e92 c;

    @Nullable
    private final ag1 d;

    @Nullable
    private final d41 e;
    private final boolean[] f = new boolean[4];
    private final a g = new a();
    private long h;
    private boolean i;
    private boolean j;
    private long k;
    private long l;
    private long m;
    private long n;
    private boolean o;
    private boolean p;

    public static final class a {
        private static final byte[] e = {0, 0, 1};
        private boolean a;
        public int b;
        public int c;
        public byte[] d = new byte[128];

        public final void a(byte[] bArr, int i, int i2) {
            if (this.a) {
                int i3 = i2 - i;
                byte[] bArr2 = this.d;
                int length = bArr2.length;
                int i4 = this.b + i3;
                if (length < i4) {
                    this.d = Arrays.copyOf(bArr2, i4 * 2);
                }
                System.arraycopy(bArr, i, this.d, this.b, i3);
                this.b += i3;
            }
        }
    }

    public cf0(@Nullable e92 e92Var) {
        this.c = e92Var;
        if (e92Var != null) {
            this.e = new d41(178);
            this.d = new ag1();
        } else {
            this.e = null;
            this.d = null;
        }
        this.l = C.TIME_UNSET;
        this.n = C.TIME_UNSET;
    }

    /* JADX WARN: Code duplicated, block: B:47:0x0124  */
    /* JADX WARN: Code duplicated, block: B:67:0x01a4  */
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
    public final void a(ag1 ag1Var) {
        boolean z;
        boolean z2;
        int i;
        float f;
        long j;
        float f2;
        int i2;
        int i3 = 4;
        char c = 3;
        if (this.b == null) {
            throw new IllegalStateException();
        }
        int iD = ag1Var.d();
        int iE = ag1Var.e();
        byte[] bArrC = ag1Var.c();
        this.h += (long) ag1Var.a();
        this.b.a(ag1Var.a(), ag1Var);
        while (true) {
            int iA = e41.a(bArrC, iD, iE, this.f);
            if (iA == iE) {
                break;
            }
            int i4 = iA + 3;
            int i5 = ag1Var.c()[i4] & 255;
            int i6 = iA - iD;
            if (this.j) {
                i4 = i4;
            } else {
                if (i6 > 0) {
                    this.g.a(bArrC, iD, iA);
                }
                int i7 = i6 < 0 ? -i6 : 0;
                a aVar = this.g;
                if (aVar.a) {
                    int i8 = aVar.b - i7;
                    aVar.b = i8;
                    if (aVar.c == 0 && i5 == 181) {
                        aVar.c = i8;
                        i4 = i4;
                    } else {
                        aVar.a = false;
                        String str = this.a;
                        str.getClass();
                        byte[] bArrCopyOf = Arrays.copyOf(aVar.d, aVar.b);
                        int i9 = bArrCopyOf[i3] & 255;
                        byte b = bArrCopyOf[5];
                        int i10 = ((b & 255) >> i3) | (i9 << i3);
                        int i11 = ((b & 15) << 8) | (bArrCopyOf[6] & 255);
                        int i12 = (bArrCopyOf[7] & 240) >> i3;
                        if (i12 != 2) {
                            if (i12 == 3) {
                                f2 = i11 * 16;
                                i2 = i10 * 9;
                            } else if (i12 != i3) {
                                f = 1.0f;
                            } else {
                                f2 = i11 * 121;
                                i2 = i10 * 100;
                            }
                            f = f2 / i2;
                        } else {
                            f = (i11 * 4) / (i10 * 3);
                        }
                        jc0 jc0VarA = new jc0.a().b(str).e("video/mpeg2").o(i10).f(i11).b(f).a(Collections.singletonList(bArrCopyOf)).a();
                        int i13 = (bArrCopyOf[7] & 15) - 1;
                        if (i13 >= 0) {
                            double[] dArr = q;
                            if (i13 < 8) {
                                double d = dArr[i13];
                                byte b2 = bArrCopyOf[aVar.c + 9];
                                int i14 = (b2 & 96) >> 5;
                                int i15 = b2 & 31;
                                if (i14 != i15) {
                                    d *= (((double) i14) + 1.0d) / ((double) (i15 + 1));
                                }
                                j = (long) (1000000.0d / d);
                            } else {
                                i4 = i4;
                                j = 0;
                            }
                        } else {
                            i4 = i4;
                            j = 0;
                        }
                        Pair pairCreate = Pair.create(jc0VarA, Long.valueOf(j));
                        this.b.a((jc0) pairCreate.first);
                        this.k = ((Long) pairCreate.second).longValue();
                        this.j = true;
                    }
                } else {
                    i4 = i4;
                    if (i5 == 179) {
                        aVar.a = true;
                    }
                }
                aVar.a(a.e, 0, 3);
            }
            d41 d41Var = this.e;
            if (d41Var != null) {
                if (i6 > 0) {
                    d41Var.a(bArrC, iD, iA);
                    i = 0;
                } else {
                    i = -i6;
                }
                if (this.e.a(i)) {
                    d41 d41Var2 = this.e;
                    int iA2 = e41.a(d41Var2.e, d41Var2.d);
                    ag1 ag1Var2 = this.d;
                    int i16 = f92.a;
                    ag1Var2.a(iA2, this.e.d);
                    this.c.a(this.n, this.d);
                }
                if (i5 == 178) {
                    if (ag1Var.c()[iA + 2] == 1) {
                        this.e.b(i5);
                    }
                }
            }
            if (i5 == 0 || i5 == 179) {
                int i17 = iE - iA;
                if (this.p && this.j) {
                    long j2 = this.n;
                    if (j2 != C.TIME_UNSET) {
                        this.b.a(j2, this.o ? 1 : 0, ((int) (this.h - this.m)) - i17, i17, null);
                    }
                }
                if (!this.i || this.p) {
                    this.m = this.h - ((long) i17);
                    long j3 = this.l;
                    if (j3 == C.TIME_UNSET) {
                        long j4 = this.n;
                        j3 = j4 != C.TIME_UNSET ? j4 + this.k : -9223372036854775807L;
                    }
                    this.n = j3;
                    z = false;
                    this.o = false;
                    this.l = C.TIME_UNSET;
                    z2 = true;
                    this.i = true;
                } else {
                    z = false;
                    z2 = true;
                }
                if (i5 == 0) {
                    z = z2;
                }
                this.p = z;
            } else if (i5 == 184) {
                this.o = true;
            }
            iD = i4;
            i3 = 4;
            c = 3;
        }
        if (!this.j) {
            this.g.a(bArrC, iD, iE);
        }
        d41 d41Var3 = this.e;
        if (d41Var3 != null) {
            d41Var3.a(bArrC, iD, iE);
        }
    }

    @Override
    public final void b() {
    }

    @Override
    public final void a(b80 b80Var, p72.d dVar) {
        dVar.a();
        this.a = dVar.b();
        this.b = b80Var.a(dVar.c(), 2);
        e92 e92Var = this.c;
        if (e92Var != null) {
            e92Var.a(b80Var, dVar);
        }
    }

    @Override
    public final void a(int i, long j) {
        this.l = j;
    }

    @Override
    public final void a() {
        e41.a(this.f);
        a aVar = this.g;
        aVar.a = false;
        aVar.b = 0;
        aVar.c = 0;
        d41 d41Var = this.e;
        if (d41Var != null) {
            d41Var.b();
        }
        this.h = 0L;
        this.i = false;
        this.l = C.TIME_UNSET;
        this.n = C.TIME_UNSET;
    }
}
