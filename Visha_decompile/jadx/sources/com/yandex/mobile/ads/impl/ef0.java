package com.yandex.mobile.ads.impl;

import android.util.SparseArray;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import java.util.ArrayList;
import java.util.Arrays;

public final class ef0 implements b50 {
    private final jx1 a;
    private final boolean b;
    private final boolean c;
    private long g;
    private String i;
    private a62 j;
    private a k;
    private boolean l;
    private boolean n;
    private final boolean[] h = new boolean[3];
    private final d41 d = new d41(7);
    private final d41 e = new d41(8);
    private final d41 f = new d41(6);
    private long m = C.TIME_UNSET;
    private final ag1 o = new ag1();

    public static final class a {
        private final a62 a;
        private final boolean b;
        private final boolean c;
        private final SparseArray<e41.c> d = new SparseArray<>();
        private final SparseArray<e41.b> e = new SparseArray<>();
        private final bg1 f;
        private byte[] g;
        private int h;
        private int i;
        private long j;
        private boolean k;
        private long l;
        private C0313a m;
        private C0313a n;
        private boolean o;
        private long p;
        private long q;
        private boolean r;

        public static final class C0313a {
            private boolean a;
            private boolean b;

            @Nullable
            private e41.c c;
            private int d;
            private int e;
            private int f;
            private int g;
            private boolean h;
            private boolean i;
            private boolean j;
            private boolean k;
            private int l;
            private int m;
            private int n;
            private int o;
            private int p;

            private C0313a() {
            }
        }

        public a(a62 a62Var, boolean z, boolean z2) {
            this.a = a62Var;
            this.b = z;
            this.c = z2;
            this.m = new C0313a();
            this.n = new C0313a();
            byte[] bArr = new byte[128];
            this.g = bArr;
            this.f = new bg1(bArr, 0, 0);
            a();
        }

        /* JADX WARN: Code duplicated, block: B:53:0x00fb  */
        /* JADX WARN: Code duplicated, block: B:54:0x00fd  */
        /* JADX WARN: Code duplicated, block: B:56:0x0100  */
        /* JADX WARN: Code duplicated, block: B:58:0x0108 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:59:0x0109  */
        /* JADX WARN: Code duplicated, block: B:60:0x0110  */
        /* JADX WARN: Code duplicated, block: B:63:0x0115  */
        /* JADX WARN: Code duplicated, block: B:65:0x011f A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:66:0x0120  */
        /* JADX WARN: Code duplicated, block: B:73:0x0140  */
        /* JADX WARN: Code duplicated, block: B:74:0x0144  */
        /* JADX WARN: Code duplicated, block: B:88:0x0178  */
        public final void a(byte[] bArr, int i, int i2) {
            boolean zC;
            boolean zC2;
            boolean z;
            boolean z2;
            int iE;
            int i3;
            int iD;
            int iD2;
            int i4;
            int iB;
            if (this.k) {
                int i5 = i2 - i;
                byte[] bArr2 = this.g;
                int length = bArr2.length;
                int i6 = this.h + i5;
                if (length < i6) {
                    this.g = Arrays.copyOf(bArr2, i6 * 2);
                }
                System.arraycopy(bArr, i, this.g, this.h, i5);
                int i7 = this.h + i5;
                this.h = i7;
                int i8 = 0;
                this.f.a(this.g, 0, i7);
                if (this.f.a(8)) {
                    this.f.f();
                    int iB2 = this.f.b(2);
                    this.f.d(5);
                    if (this.f.b()) {
                        this.f.e();
                        if (this.f.b()) {
                            int iE2 = this.f.e();
                            if (!this.c) {
                                this.k = false;
                                C0313a c0313a = this.n;
                                c0313a.e = iE2;
                                c0313a.b = true;
                                return;
                            }
                            if (this.f.b()) {
                                int iE3 = this.f.e();
                                if (this.e.indexOfKey(iE3) < 0) {
                                    this.k = false;
                                    return;
                                }
                                e41.b bVar = this.e.get(iE3);
                                e41.c cVar = this.d.get(bVar.a);
                                if (cVar.h) {
                                    if (!this.f.a(2)) {
                                        return;
                                    } else {
                                        this.f.d(2);
                                    }
                                }
                                if (this.f.a(cVar.j)) {
                                    int iB3 = this.f.b(cVar.j);
                                    if (!cVar.i) {
                                        if (this.f.a(1)) {
                                            zC = this.f.c();
                                            if (!zC) {
                                                zC2 = false;
                                            } else {
                                                if (!this.f.a(1)) {
                                                    return;
                                                }
                                                zC2 = this.f.c();
                                                z = true;
                                            }
                                            if (this.i == 5) {
                                                z2 = true;
                                            } else {
                                                z2 = false;
                                            }
                                            if (z2) {
                                                iE = 0;
                                            } else if (!this.f.b()) {
                                                return;
                                            } else {
                                                iE = this.f.e();
                                            }
                                            i3 = cVar.k;
                                            if (i3 == 0) {
                                                if (!this.f.a(cVar.l)) {
                                                    return;
                                                }
                                                iB = this.f.b(cVar.l);
                                                if (bVar.b || zC) {
                                                    iD = 0;
                                                    i4 = iB;
                                                    iD2 = 0;
                                                } else {
                                                    if (!this.f.b()) {
                                                        return;
                                                    }
                                                    iD = this.f.d();
                                                    i4 = iB;
                                                    iD2 = 0;
                                                }
                                            } else if (i3 == 1 || cVar.m) {
                                                iD = 0;
                                                iD2 = 0;
                                                i4 = 0;
                                            } else {
                                                if (!this.f.b()) {
                                                    return;
                                                }
                                                int iD3 = this.f.d();
                                                if (!bVar.b || zC) {
                                                    iD = 0;
                                                    i4 = 0;
                                                    i8 = iD3;
                                                    iD2 = 0;
                                                } else {
                                                    if (!this.f.b()) {
                                                        return;
                                                    }
                                                    i4 = 0;
                                                    i8 = iD3;
                                                    iD2 = this.f.d();
                                                    iD = 0;
                                                }
                                            }
                                            C0313a c0313a2 = this.n;
                                            c0313a2.c = cVar;
                                            c0313a2.d = iB2;
                                            c0313a2.e = iE2;
                                            c0313a2.f = iB3;
                                            c0313a2.g = iE3;
                                            c0313a2.h = zC;
                                            c0313a2.i = z;
                                            c0313a2.j = zC2;
                                            c0313a2.k = z2;
                                            c0313a2.l = iE;
                                            c0313a2.m = i4;
                                            c0313a2.n = iD;
                                            c0313a2.o = i8;
                                            c0313a2.p = iD2;
                                            c0313a2.a = true;
                                            c0313a2.b = true;
                                            this.k = false;
                                        }
                                        return;
                                    }
                                    zC = false;
                                    zC2 = false;
                                    z = zC2;
                                    if (this.i == 5) {
                                        z2 = true;
                                    } else {
                                        z2 = false;
                                    }
                                    if (z2) {
                                        iE = 0;
                                    } else if (!this.f.b()) {
                                        return;
                                    } else {
                                        iE = this.f.e();
                                    }
                                    i3 = cVar.k;
                                    if (i3 == 0) {
                                        if (!this.f.a(cVar.l)) {
                                            return;
                                        }
                                        iB = this.f.b(cVar.l);
                                        if (bVar.b) {
                                            iD = 0;
                                            i4 = iB;
                                            iD2 = 0;
                                        } else {
                                            iD = 0;
                                            i4 = iB;
                                            iD2 = 0;
                                        }
                                    } else if (i3 == 1) {
                                        iD = 0;
                                        iD2 = 0;
                                        i4 = 0;
                                    } else {
                                        iD = 0;
                                        iD2 = 0;
                                        i4 = 0;
                                    }
                                    C0313a c0313a3 = this.n;
                                    c0313a3.c = cVar;
                                    c0313a3.d = iB2;
                                    c0313a3.e = iE2;
                                    c0313a3.f = iB3;
                                    c0313a3.g = iE3;
                                    c0313a3.h = zC;
                                    c0313a3.i = z;
                                    c0313a3.j = zC2;
                                    c0313a3.k = z2;
                                    c0313a3.l = iE;
                                    c0313a3.m = i4;
                                    c0313a3.n = iD;
                                    c0313a3.o = i8;
                                    c0313a3.p = iD2;
                                    c0313a3.a = true;
                                    c0313a3.b = true;
                                    this.k = false;
                                }
                            }
                        }
                    }
                }
            }
        }

        public final void a() {
            this.k = false;
            this.o = false;
            C0313a c0313a = this.n;
            c0313a.b = false;
            c0313a.a = false;
        }
    }

    public ef0(jx1 jx1Var, boolean z, boolean z2) {
        this.a = jx1Var;
        this.b = z;
        this.c = z2;
    }

    /* JADX WARN: Code duplicated, block: B:104:0x02dd  */
    /* JADX WARN: Code duplicated, block: B:105:0x02df  */
    /* JADX WARN: Code duplicated, block: B:110:0x02fc  */
    /* JADX WARN: Code duplicated, block: B:148:0x03a0  */
    /* JADX WARN: Code duplicated, block: B:31:0x0098  */
    @Override
    public final void a(ag1 ag1Var) {
        int i;
        byte[] bArr;
        int i2;
        int i3;
        long j;
        int i4;
        long j2;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        boolean z;
        int i10 = 3;
        if (this.j == null) {
            throw new IllegalStateException();
        }
        int i11 = f92.a;
        int iD = ag1Var.d();
        int iE = ag1Var.e();
        byte[] bArrC = ag1Var.c();
        this.g += (long) ag1Var.a();
        this.j.a(ag1Var.a(), ag1Var);
        while (true) {
            int iA = e41.a(bArrC, iD, iE, this.h);
            if (iA == iE) {
                if (!this.l || this.k.c) {
                    this.d.a(bArrC, iD, iE);
                    this.e.a(bArrC, iD, iE);
                }
                this.f.a(bArrC, iD, iE);
                this.k.a(bArrC, iD, iE);
                return;
            }
            int i12 = iA + 3;
            int i13 = bArrC[i12] & 31;
            int i14 = iA - iD;
            if (i14 > 0) {
                if (!this.l || this.k.c) {
                    this.d.a(bArrC, iD, iA);
                    this.e.a(bArrC, iD, iA);
                }
                this.f.a(bArrC, iD, iA);
                this.k.a(bArrC, iD, iA);
            }
            int i15 = iE - iA;
            long j3 = this.g - ((long) i15);
            int i16 = i14 < 0 ? -i14 : 0;
            long j4 = this.m;
            if (!this.l || this.k.c) {
                this.d.a(i16);
                this.e.a(i16);
                if (this.l) {
                    i = iE;
                    bArr = bArrC;
                    i2 = i12;
                    if (this.d.a()) {
                        d41 d41Var = this.d;
                        i3 = 3;
                        e41.c cVarB = e41.b(d41Var.d, 3, d41Var.e);
                        this.k.d.append(cVarB.d, cVarB);
                        this.d.b();
                    } else {
                        i3 = 3;
                        if (this.e.a()) {
                            d41 d41Var2 = this.e;
                            bg1 bg1Var = new bg1(d41Var2.d, 4, d41Var2.e);
                            int iE2 = bg1Var.e();
                            int iE3 = bg1Var.e();
                            bg1Var.f();
                            this.k.e.append(iE2, new e41.b(iE2, iE3, bg1Var.c()));
                            this.e.b();
                        }
                    }
                } else if (this.d.a() && this.e.a()) {
                    ArrayList arrayList = new ArrayList();
                    d41 d41Var3 = this.d;
                    arrayList.add(Arrays.copyOf(d41Var3.d, d41Var3.e));
                    d41 d41Var4 = this.e;
                    arrayList.add(Arrays.copyOf(d41Var4.d, d41Var4.e));
                    d41 d41Var5 = this.d;
                    e41.c cVarB2 = e41.b(d41Var5.d, i10, d41Var5.e);
                    d41 d41Var6 = this.e;
                    i = iE;
                    bg1 bg1Var2 = new bg1(d41Var6.d, 4, d41Var6.e);
                    int iE4 = bg1Var2.e();
                    int iE5 = bg1Var2.e();
                    bg1Var2.f();
                    e41.b bVar = new e41.b(iE4, iE5, bg1Var2.c());
                    bArr = bArrC;
                    i2 = i12;
                    this.j.a(new jc0.a().b(this.i).e("video/avc").a(String.format("avc1.%02X%02X%02X", Integer.valueOf(cVarB2.a), Integer.valueOf(cVarB2.b), Integer.valueOf(cVarB2.c))).o(cVarB2.e).f(cVarB2.f).b(cVarB2.g).a(arrayList).a());
                    this.l = true;
                    this.k.d.append(cVarB2.d, cVarB2);
                    this.k.e.append(iE4, bVar);
                    this.d.b();
                    this.e.b();
                    i3 = 3;
                } else {
                    i = iE;
                    bArr = bArrC;
                    i2 = i12;
                    i3 = i10;
                }
            } else {
                i = iE;
                bArr = bArrC;
                i2 = i12;
                i3 = i10;
            }
            if (this.f.a(i16)) {
                d41 d41Var7 = this.f;
                this.o.a(e41.a(d41Var7.e, d41Var7.d), this.f.d);
                this.o.e(4);
                this.a.a(j4, this.o);
            }
            a aVar = this.k;
            boolean z2 = this.l;
            boolean z3 = this.n;
            if (aVar.i == 9) {
                if (z2 && aVar.o) {
                    j = aVar.j;
                    i4 = i15 + ((int) (j3 - j));
                    j2 = aVar.q;
                    if (j2 != C.TIME_UNSET) {
                        aVar.a.a(j2, aVar.r ? 1 : 0, (int) (j - aVar.p), i4, null);
                    }
                }
                aVar.p = aVar.j;
                aVar.q = aVar.l;
                aVar.r = false;
                aVar.o = true;
            } else if (aVar.c) {
                a.C0313a c0313a = aVar.n;
                a.C0313a c0313a2 = aVar.m;
                if (c0313a.a) {
                    if (c0313a2.a) {
                        e41.c cVar = c0313a.c;
                        if (cVar == null) {
                            throw new IllegalStateException();
                        }
                        e41.c cVar2 = c0313a2.c;
                        if (cVar2 == null) {
                            throw new IllegalStateException();
                        }
                        if (c0313a.f != c0313a2.f || c0313a.g != c0313a2.g || c0313a.h != c0313a2.h || ((c0313a.i && c0313a2.i && c0313a.j != c0313a2.j) || (((i7 = c0313a.d) != (i8 = c0313a2.d) && (i7 == 0 || i8 == 0)) || (((i9 = cVar.k) == 0 && cVar2.k == 0 && (c0313a.m != c0313a2.m || c0313a.n != c0313a2.n)) || ((i9 == 1 && cVar2.k == 1 && (c0313a.o != c0313a2.o || c0313a.p != c0313a2.p)) || (z = c0313a.k) != c0313a2.k || (z && c0313a.l != c0313a2.l)))))) {
                            if (z2) {
                                j = aVar.j;
                                i4 = i15 + ((int) (j3 - j));
                                j2 = aVar.q;
                                if (j2 != C.TIME_UNSET) {
                                    aVar.a.a(j2, aVar.r ? 1 : 0, (int) (j - aVar.p), i4, null);
                                }
                            }
                            aVar.p = aVar.j;
                            aVar.q = aVar.l;
                            aVar.r = false;
                            aVar.o = true;
                        }
                    } else {
                        if (z2) {
                            j = aVar.j;
                            i4 = i15 + ((int) (j3 - j));
                            j2 = aVar.q;
                            if (j2 != C.TIME_UNSET) {
                                aVar.a.a(j2, aVar.r ? 1 : 0, (int) (j - aVar.p), i4, null);
                            }
                        }
                        aVar.p = aVar.j;
                        aVar.q = aVar.l;
                        aVar.r = false;
                        aVar.o = true;
                    }
                }
            }
            if (aVar.b) {
                a.C0313a c0313a3 = aVar.n;
                z3 = c0313a3.b && ((i6 = c0313a3.e) == 7 || i6 == 2);
            }
            boolean z4 = aVar.r;
            int i17 = aVar.i;
            boolean z5 = z4 | (i17 == 5 || (z3 && i17 == 1));
            aVar.r = z5;
            if (z5) {
                this.n = false;
            }
            long j5 = this.m;
            if (!this.l || this.k.c) {
                this.d.b(i13);
                this.e.b(i13);
            }
            this.f.b(i13);
            a aVar2 = this.k;
            aVar2.i = i13;
            aVar2.l = j5;
            aVar2.j = j3;
            if (aVar2.b) {
                i5 = 1;
                if (i13 == 1) {
                    a.C0313a c0313a4 = aVar2.m;
                    aVar2.m = aVar2.n;
                    aVar2.n = c0313a4;
                    c0313a4.b = false;
                    c0313a4.a = false;
                    aVar2.h = 0;
                    aVar2.k = true;
                }
                i10 = i3;
                iE = i;
                bArrC = bArr;
                iD = i2;
            } else {
                i5 = 1;
            }
            if (aVar2.c && (i13 == 5 || i13 == i5 || i13 == 2)) {
                a.C0313a c0313a5 = aVar2.m;
                aVar2.m = aVar2.n;
                aVar2.n = c0313a5;
                c0313a5.b = false;
                c0313a5.a = false;
                aVar2.h = 0;
                aVar2.k = true;
            }
            i10 = i3;
            iE = i;
            bArrC = bArr;
            iD = i2;
        }
    }

    @Override
    public final void b() {
    }

    @Override
    public final void a(b80 b80Var, p72.d dVar) {
        dVar.a();
        this.i = dVar.b();
        a62 a62VarA = b80Var.a(dVar.c(), 2);
        this.j = a62VarA;
        this.k = new a(a62VarA, this.b, this.c);
        this.a.a(b80Var, dVar);
    }

    @Override
    public final void a(int i, long j) {
        if (j != C.TIME_UNSET) {
            this.m = j;
        }
        this.n = ((i & 2) != 0) | this.n;
    }

    @Override
    public final void a() {
        this.g = 0L;
        this.n = false;
        this.m = C.TIME_UNSET;
        e41.a(this.h);
        this.d.b();
        this.e.b();
        this.f.b();
        a aVar = this.k;
        if (aVar != null) {
            aVar.a();
        }
    }
}
