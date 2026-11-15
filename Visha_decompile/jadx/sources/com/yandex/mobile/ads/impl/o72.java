package com.yandex.mobile.ads.impl;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import androidx.media3.extractor.ts.TsExtractor;
import com.yandex.mobile.ads.impl.o72;
import com.yandex.mobile.ads.impl.z70;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public final class o72 implements z70 {
    private final int a;
    private final int b;
    private final List<p52> c;
    private final ag1 d;
    private final SparseIntArray e;
    private final p72.c f;
    private final SparseArray<p72> g;
    private final SparseBooleanArray h;
    private final SparseBooleanArray i;
    private final n72 j;
    private m72 k;
    private b80 l;
    private int m;
    private boolean n;
    private boolean o;
    private boolean p;

    @Nullable
    private p72 q;
    private int r;
    private int s;

    public class a implements cx1 {
        private final zf1 a = new zf1(new byte[4]);

        public a() {
        }

        @Override
        public final void a(p52 p52Var, b80 b80Var, p72.d dVar) {
        }

        @Override
        public final void a(ag1 ag1Var) {
            if (ag1Var.t() == 0 && (ag1Var.t() & 128) != 0) {
                ag1Var.f(6);
                int iA = ag1Var.a() / 4;
                for (int i = 0; i < iA; i++) {
                    zf1 zf1Var = this.a;
                    ag1Var.a(zf1Var.a, 0, 4);
                    zf1Var.c(0);
                    int iB = this.a.b(16);
                    this.a.d(3);
                    if (iB == 0) {
                        this.a.d(13);
                    } else {
                        int iB2 = this.a.b(13);
                        if (o72.this.g.get(iB2) == null) {
                            o72 o72Var = o72.this;
                            o72Var.g.put(iB2, new dx1(o72Var.new b(iB2)));
                            o72.this.m++;
                        }
                    }
                }
                o72 o72Var2 = o72.this;
                if (o72Var2.a != 2) {
                    o72Var2.g.remove(0);
                }
            }
        }
    }

    public class b implements cx1 {
        private final zf1 a = new zf1(new byte[5]);
        private final SparseArray<p72> b = new SparseArray<>();
        private final SparseIntArray c = new SparseIntArray();
        private final int d;

        public b(int i) {
            this.d = i;
        }

        @Override
        public final void a(p52 p52Var, b80 b80Var, p72.d dVar) {
        }

        /* JADX WARN: Code duplicated, block: B:47:0x015b  */
        /* JADX WARN: Code duplicated, block: B:50:0x0162  */
        /* JADX WARN: Code duplicated, block: B:55:0x016f  */
        /* JADX WARN: Code duplicated, block: B:97:0x023a  */
        @Override
        public final void a(ag1 ag1Var) {
            p52 p52Var;
            int i;
            int i2;
            p72 p72VarA;
            int i3;
            if (ag1Var.t() != 2) {
                return;
            }
            o72 o72Var = o72.this;
            int i4 = o72Var.a;
            int i5 = 0;
            if (i4 == 1 || i4 == 2 || o72Var.m == 1) {
                p52Var = (p52) o72Var.c.get(0);
            } else {
                p52Var = new p52(((p52) o72Var.c.get(0)).a());
                o72.this.c.add(p52Var);
            }
            if ((ag1Var.t() & 128) == 0) {
                return;
            }
            ag1Var.f(1);
            int iZ = ag1Var.z();
            int i6 = 3;
            ag1Var.f(3);
            zf1 zf1Var = this.a;
            ag1Var.a(zf1Var.a, 0, 2);
            zf1Var.c(0);
            this.a.d(3);
            int i7 = 13;
            o72.this.s = this.a.b(13);
            zf1 zf1Var2 = this.a;
            ag1Var.a(zf1Var2.a, 0, 2);
            zf1Var2.c(0);
            int i8 = 4;
            this.a.d(4);
            int i9 = 12;
            ag1Var.f(this.a.b(12));
            o72 o72Var2 = o72.this;
            int i10 = 21;
            if (o72Var2.a == 2 && o72Var2.q == null) {
                p72.b bVar = new p72.b(21, null, null, f92.f);
                o72 o72Var3 = o72.this;
                o72Var3.q = o72Var3.f.a(21, bVar);
                o72 o72Var4 = o72.this;
                p72 p72Var = o72Var4.q;
                if (p72Var != null) {
                    p72Var.a(p52Var, o72Var4.l, new p72.d(iZ, 21, 8192));
                }
            }
            this.b.clear();
            this.c.clear();
            int iA = ag1Var.a();
            while (iA > 0) {
                zf1 zf1Var3 = this.a;
                int i11 = 5;
                ag1Var.a(zf1Var3.a, i5, 5);
                zf1Var3.c(i5);
                int iB = this.a.b(8);
                this.a.d(i6);
                int iB2 = this.a.b(i7);
                this.a.d(i8);
                int iB3 = this.a.b(i9);
                int iD = ag1Var.d();
                int i12 = iD + iB3;
                int i13 = -1;
                String strTrim = null;
                ArrayList arrayList = null;
                while (true) {
                    if (ag1Var.d() >= i12) {
                        i = i8;
                        break;
                    }
                    int iT = ag1Var.t();
                    int iD2 = ag1Var.d() + ag1Var.t();
                    if (iD2 > i12) {
                        i = 4;
                        break;
                    }
                    if (iT == i11) {
                        long jV = ag1Var.v();
                        if (jV == 1094921523) {
                            i13 = 129;
                        } else if (jV == 1161904947) {
                            i13 = 135;
                        } else if (jV == 1094921524) {
                            i13 = 172;
                        } else if (jV == 1212503619) {
                            i13 = 36;
                        }
                        i3 = 4;
                    } else {
                        if (iT == 106) {
                            i13 = 129;
                        } else if (iT == 122) {
                            i13 = 135;
                        } else if (iT == 127) {
                            if (ag1Var.t() == i10) {
                                i13 = 172;
                            }
                        } else if (iT == 123) {
                            i13 = 138;
                        } else if (iT == 10) {
                            strTrim = ag1Var.a(i6, lo.c).trim();
                        } else if (iT == 89) {
                            ArrayList arrayList2 = new ArrayList();
                            while (ag1Var.d() < iD2) {
                                String strTrim2 = ag1Var.a(i6, lo.c).trim();
                                ag1Var.t();
                                byte[] bArr = new byte[4];
                                ag1Var.a(bArr, 0, 4);
                                arrayList2.add(new p72.a(strTrim2, bArr));
                                i6 = 3;
                            }
                            i3 = 4;
                            arrayList = arrayList2;
                            i13 = 89;
                        } else {
                            i3 = 4;
                            if (iT == 111) {
                                i13 = 257;
                            }
                        }
                        i3 = 4;
                    }
                    ag1Var.f(iD2 - ag1Var.d());
                    i8 = i3;
                    i11 = 5;
                    i6 = 3;
                    i10 = 21;
                }
                ag1Var.e(i12);
                p72.b bVar2 = new p72.b(i13, strTrim, arrayList, Arrays.copyOfRange(ag1Var.c(), iD, i12));
                if (iB == 6 || iB == 5) {
                    iB = i13;
                }
                iA -= iB3 + 5;
                o72 o72Var5 = o72.this;
                int i14 = o72Var5.a == 2 ? iB : iB2;
                if (o72Var5.h.get(i14)) {
                    i2 = 21;
                } else {
                    o72 o72Var6 = o72.this;
                    if (o72Var6.a == 2) {
                        i2 = 21;
                        if (iB == 21) {
                            p72VarA = o72Var6.q;
                        }
                        if (o72.this.a == 2 || iB2 < this.c.get(i14, 8192)) {
                            this.c.put(i14, iB2);
                            this.b.put(i14, p72VarA);
                        }
                    } else {
                        i2 = 21;
                    }
                    p72VarA = o72Var6.f.a(iB, bVar2);
                    if (o72.this.a == 2) {
                        this.c.put(i14, iB2);
                        this.b.put(i14, p72VarA);
                    } else {
                        this.c.put(i14, iB2);
                        this.b.put(i14, p72VarA);
                    }
                }
                i8 = i;
                i10 = i2;
                i5 = 0;
                i6 = 3;
                i7 = 13;
                i9 = 12;
            }
            int size = this.c.size();
            for (int i15 = 0; i15 < size; i15++) {
                int iKeyAt = this.c.keyAt(i15);
                int iValueAt = this.c.valueAt(i15);
                o72.this.h.put(iKeyAt, true);
                o72.this.i.put(iValueAt, true);
                p72 p72VarValueAt = this.b.valueAt(i15);
                if (p72VarValueAt != null) {
                    o72 o72Var7 = o72.this;
                    if (p72VarValueAt != o72Var7.q) {
                        p72VarValueAt.a(p52Var, o72Var7.l, new p72.d(iZ, iKeyAt, 8192));
                    }
                    o72.this.g.put(iValueAt, p72VarValueAt);
                }
            }
            o72 o72Var8 = o72.this;
            if (o72Var8.a == 2) {
                if (o72Var8.n) {
                    return;
                }
                o72Var8.l.a();
                o72 o72Var9 = o72.this;
                o72Var9.m = 0;
                o72Var9.n = true;
                return;
            }
            o72Var8.g.remove(this.d);
            o72 o72Var10 = o72.this;
            int i16 = o72Var10.a == 1 ? 0 : o72Var10.m - 1;
            o72Var10.m = i16;
            if (i16 == 0) {
                o72Var10.l.a();
                o72.this.n = true;
            }
        }
    }

    static {
        new d80() {
            @Override
            public final z70[] a() {
                return o72.a();
            }
        };
    }

    public o72(int i) {
        this(new p52(0L), new t00());
    }

    private void b() {
        this.h.clear();
        this.g.clear();
        SparseArray<p72> sparseArrayA = this.f.a();
        int size = sparseArrayA.size();
        for (int i = 0; i < size; i++) {
            this.g.put(sparseArrayA.keyAt(i), sparseArrayA.valueAt(i));
        }
        this.g.put(0, new dx1(new a()));
        this.q = null;
    }

    @Override
    public final void a(b80 b80Var) {
        this.l = b80Var;
    }

    @Override
    public final void release() {
    }

    public o72(p52 p52Var, t00 t00Var) {
        this.f = (p72.c) hg.a(t00Var);
        this.b = TsExtractor.DEFAULT_TIMESTAMP_SEARCH_BYTES;
        this.a = 1;
        this.c = Collections.singletonList(p52Var);
        this.d = new ag1(0, new byte[9400]);
        this.h = new SparseBooleanArray();
        this.i = new SparseBooleanArray();
        this.g = new SparseArray<>();
        this.e = new SparseIntArray();
        this.j = new n72();
        this.l = b80.a;
        this.s = -1;
        b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3, types: [int] */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r2v10, types: [int] */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [com.yandex.mobile.ads.impl.p72] */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v4, types: [android.util.SparseBooleanArray] */
    /* JADX WARN: Type inference failed for: r6v9 */
    /* JADX WARN: Type inference failed for: r7v5, types: [int] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    @Override
    public final int a(a80 a80Var, pj1 pj1Var) throws IOException {
        ?? r15;
        ?? r14;
        p72 p72Var;
        long j;
        wz wzVar = (wz) a80Var;
        long jB = wzVar.b();
        if (!this.n) {
            r15 = 0;
            r14 = 1;
        } else {
            if (jB != -1 && this.a != 2 && !this.j.c()) {
                return this.j.a(wzVar, pj1Var, this.s);
            }
            if (this.o) {
                j = 0;
            } else {
                this.o = true;
                if (this.j.a() != C.TIME_UNSET) {
                    j = 0;
                    m72 m72Var = new m72(this.j.b(), this.j.a(), jB, this.s, this.b);
                    this.k = m72Var;
                    this.l.a(m72Var.a());
                } else {
                    j = 0;
                    this.l.a(new ex1.b(this.j.a(), 0L));
                }
            }
            if (this.p) {
                this.p = 0;
                a(j, j);
                if (wzVar.a() != j) {
                    pj1Var.a = j;
                    return 1;
                }
            }
            m72 m72Var2 = this.k;
            if (m72Var2 != null && m72Var2.b()) {
                return this.k.a(wzVar, pj1Var);
            }
            wzVar = wzVar;
        }
        byte[] bArrC = this.d.c();
        if (9400 - this.d.d() < 188) {
            int iA = this.d.a();
            if (iA > 0) {
                System.arraycopy(bArrC, this.d.d(), bArrC, r15, iA);
            }
            this.d.a(iA, bArrC);
        }
        while (this.d.a() < 188) {
            int iE = this.d.e();
            int i = wzVar.read(bArrC, iE, 9400 - iE);
            if (i == -1) {
                return -1;
            }
            this.d.d(iE + i);
        }
        int iD = this.d.d();
        int iE2 = this.d.e();
        byte[] bArrC2 = this.d.c();
        int i2 = iD;
        while (i2 < iE2 && bArrC2[i2] != 71) {
            i2++;
        }
        this.d.e(i2);
        int i3 = i2 + 188;
        ?? r5 = 0;
        if (i3 > iE2) {
            int i4 = (i2 - iD) + this.r;
            this.r = i4;
            if (this.a == 2 && i4 > 376) {
                throw eg1.a("Cannot find sync byte. Most likely not a Transport Stream.", (Exception) null);
            }
        } else {
            this.r = r15;
        }
        int iE3 = this.d.e();
        if (i3 > iE3) {
            return r15;
        }
        int iH = this.d.h();
        if ((8388608 & iH) != 0) {
            this.d.e(i3);
            return r15;
        }
        ?? r10 = (4194304 & iH) != 0 ? r14 : r15;
        int i5 = (2096896 & iH) >> 8;
        ?? r6 = (iH & 32) != 0 ? r14 : r15;
        if ((iH & 16) != 0) {
            p72Var = this.g.get(i5);
        }
        if (r5 == 0) {
            r5 = p72Var;
            this.d.e(i3);
            return r15;
        }
        if (this.a != 2) {
            int i6 = iH & 15;
            int i7 = this.e.get(i5, i6 - 1);
            this.e.put(i5, i6);
            if (i7 == i6) {
                r5 = p72Var;
                this.d.e(i3);
                return r15;
            }
            if (i6 != ((i7 + r14) & 15)) {
                r5 = p72Var;
                r5.a();
            }
        }
        if (r6 != 0) {
            int iT = this.d.t();
            r10 = (r10 == true ? 1 : 0) | ((this.d.t() & 64) != 0 ? 2 : r15);
            this.d.f(iT - r14);
        }
        boolean z = this.n;
        if (this.a == 2 || z || !this.i.get(i5, r15)) {
            this.d.d(i3);
            r5.a(r10, this.d);
            this.d.d(iE3);
        }
        if (this.a != 2 && !z && this.n && jB != -1) {
            this.p = r14;
        }
        this.d.e(i3);
        return r15;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x003e  */
    @Override
    public final void a(long j, long j2) {
        m72 m72Var;
        if (this.a != 2) {
            int size = this.c.size();
            for (int i = 0; i < size; i++) {
                p52 p52Var = this.c.get(i);
                boolean z = p52Var.c() == C.TIME_UNSET;
                if (!z) {
                    long jA = p52Var.a();
                    if (jA != C.TIME_UNSET && jA != 0 && jA != j2) {
                        p52Var.c(j2);
                    }
                } else if (z) {
                    p52Var.c(j2);
                }
            }
            if (j2 != 0 && (m72Var = this.k) != null) {
                m72Var.a(j2);
            }
            this.d.c(0);
            this.e.clear();
            for (int i2 = 0; i2 < this.g.size(); i2++) {
                this.g.valueAt(i2).a();
            }
            this.r = 0;
            return;
        }
        throw new IllegalStateException();
    }

    @Override
    public final boolean a(a80 a80Var) throws IOException {
        byte[] bArrC = this.d.c();
        wz wzVar = (wz) a80Var;
        wzVar.b(bArrC, 0, 940, false);
        for (int i = 0; i < 188; i++) {
            int i2 = 0;
            while (true) {
                if (i2 < 5) {
                    if (bArrC[(i2 * 188) + i] != 71) {
                        break;
                    }
                    i2++;
                } else {
                    wzVar.a(i);
                    return true;
                }
            }
        }
        return false;
    }

    public static z70[] a() {
        return new z70[]{new o72(0)};
    }
}
