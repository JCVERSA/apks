package com.yandex.mobile.ads.impl;

import android.support.v4.media.session.PlaybackStateCompat;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import androidx.media3.extractor.avi.AviExtractor;
import java.io.IOException;
import java.util.ArrayList;

public final class pi implements z70 {
    private int c;
    private qi e;
    private long h;

    @Nullable
    private no i;
    private int m;
    private boolean n;
    private final ag1 a = new ag1(12);
    private final b b = new b();
    private b80 d = new q40();
    private no[] g = new no[0];
    private long k = -1;
    private long l = -1;
    private int j = -1;
    private long f = C.TIME_UNSET;

    public class a implements ex1 {
        private final long a;

        public a(long j) {
            this.a = j;
        }

        @Override
        public final boolean b() {
            return true;
        }

        @Override
        public final long c() {
            return this.a;
        }

        @Override
        public final ex1.a b(long j) {
            ex1.a aVarB = pi.this.g[0].b(j);
            int i = 1;
            while (true) {
                no[] noVarArr = pi.this.g;
                if (i >= noVarArr.length) {
                    return aVarB;
                }
                ex1.a aVarB2 = noVarArr[i].b(j);
                if (aVarB2.a.b < aVarB.a.b) {
                    aVarB = aVarB2;
                }
                i++;
            }
        }
    }

    public static class b {
        public int a;
        public int b;
        public int c;

        private b() {
        }
    }

    @Override
    public final void release() {
    }

    @Override
    public final void a(b80 b80Var) {
        this.c = 0;
        this.d = b80Var;
        this.h = -1L;
    }

    /* JADX WARN: Code duplicated, block: B:133:0x032c  */
    /* JADX WARN: Code duplicated, block: B:46:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:47:0x00e1  */
    @Override
    public final int a(a80 a80Var, pj1 pj1Var) throws IOException {
        boolean z;
        no noVar;
        long j;
        no noVar2;
        if (this.h != -1) {
            wz wzVar = (wz) a80Var;
            long jA = wzVar.a();
            long j2 = this.h;
            if (j2 >= jA && j2 <= PlaybackStateCompat.ACTION_SET_REPEAT_MODE + jA) {
                wzVar.a((int) (j2 - jA));
                z = false;
            } else {
                pj1Var.a = j2;
                z = true;
            }
        } else {
            z = false;
        }
        this.h = -1L;
        if (z) {
            return 1;
        }
        no noVar3 = null;
        switch (this.c) {
            case 0:
                if (a(a80Var)) {
                    ((wz) a80Var).a(12);
                    this.c = 1;
                    return 0;
                }
                throw eg1.a("AVI Header List not found", (Exception) null);
            case 1:
                ((wz) a80Var).a(this.a.c(), 0, 12, false);
                this.a.e(0);
                b bVar = this.b;
                ag1 ag1Var = this.a;
                bVar.getClass();
                bVar.a = ag1Var.k();
                bVar.b = ag1Var.k();
                bVar.c = 0;
                if (bVar.a == 1414744396) {
                    bVar.c = ag1Var.k();
                    b bVar2 = this.b;
                    if (bVar2.c == 1819436136) {
                        this.j = bVar2.b;
                        this.c = 2;
                        return 0;
                    }
                    throw eg1.a("hdrl expected, found: " + this.b.c, (Exception) null);
                }
                throw eg1.a("LIST expected, found: " + bVar.a, (Exception) null);
            case 2:
                int i = this.j - 4;
                ag1 ag1Var2 = new ag1(i);
                ((wz) a80Var).a(ag1Var2.c(), 0, i, false);
                yr0 yr0VarA = yr0.a(AviExtractor.FOURCC_hdrl, ag1Var2);
                if (yr0VarA.getType() == 1819436136) {
                    qi qiVar = (qi) yr0VarA.a(qi.class);
                    if (qiVar != null) {
                        this.e = qiVar;
                        this.f = ((long) qiVar.c) * ((long) qiVar.a);
                        ArrayList arrayList = new ArrayList();
                        j82<oi> j82VarListIterator = yr0VarA.a.listIterator(0);
                        int i2 = 0;
                        while (j82VarListIterator.hasNext()) {
                            oi next = j82VarListIterator.next();
                            if (next.getType() == 1819440243) {
                                yr0 yr0Var = (yr0) next;
                                int i3 = i2 + 1;
                                ri riVar = (ri) yr0Var.a(ri.class);
                                v22 v22Var = (v22) yr0Var.a(v22.class);
                                if (riVar == null) {
                                    et0.d("AviExtractor", "Missing Stream Header");
                                } else if (v22Var == null) {
                                    et0.d("AviExtractor", "Missing Stream Format");
                                } else {
                                    long jA2 = f92.a(riVar.d, ((long) riVar.b) * 1000000, riVar.c);
                                    jc0 jc0Var = v22Var.a;
                                    jc0.a aVarA = jc0Var.a();
                                    aVarA.g(i2);
                                    int i4 = riVar.e;
                                    if (i4 != 0) {
                                        aVarA.h(i4);
                                    }
                                    x22 x22Var = (x22) yr0Var.a(x22.class);
                                    if (x22Var != null) {
                                        aVarA.c(x22Var.a);
                                    }
                                    int iC = w01.c(jc0Var.m);
                                    if (iC == 1 || iC == 2) {
                                        a62 a62VarA = this.d.a(i2, iC);
                                        a62VarA.a(aVarA.a());
                                        noVar = new no(i2, iC, jA2, riVar.d, a62VarA);
                                        this.f = jA2;
                                    }
                                    if (noVar != null) {
                                        arrayList.add(noVar);
                                    }
                                    i2 = i3;
                                }
                                noVar = null;
                                if (noVar != null) {
                                    arrayList.add(noVar);
                                }
                                i2 = i3;
                            }
                        }
                        this.g = (no[]) arrayList.toArray(new no[0]);
                        this.d.a();
                        this.c = 3;
                        return 0;
                    }
                    throw eg1.a("AviHeader not found", (Exception) null);
                }
                throw eg1.a("Unexpected header list type " + yr0VarA.getType(), (Exception) null);
            case 3:
                if (this.k != -1) {
                    long jA3 = ((wz) a80Var).a();
                    long j3 = this.k;
                    if (jA3 != j3) {
                        this.h = j3;
                        return 0;
                    }
                }
                wz wzVar2 = (wz) a80Var;
                wzVar2.b(this.a.c(), 0, 12, false);
                wzVar2.c();
                this.a.e(0);
                b bVar3 = this.b;
                ag1 ag1Var3 = this.a;
                bVar3.getClass();
                bVar3.a = ag1Var3.k();
                bVar3.b = ag1Var3.k();
                bVar3.c = 0;
                int iK = this.a.k();
                int i5 = this.b.a;
                if (i5 == 1179011410) {
                    wzVar2.a(12);
                    return 0;
                }
                if (i5 == 1414744396 && iK == 1769369453) {
                    long jA4 = wzVar2.a();
                    this.k = jA4;
                    this.l = jA4 + ((long) this.b.b) + 8;
                    if (!this.n) {
                        qi qiVar2 = this.e;
                        qiVar2.getClass();
                        if ((qiVar2.b & 16) == 16) {
                            this.c = 4;
                            this.h = this.l;
                            return 0;
                        }
                        this.d.a(new ex1.b(this.f, 0L));
                        this.n = true;
                    }
                    this.h = wzVar2.a() + 12;
                    this.c = 6;
                    return 0;
                }
                this.h = wzVar2.a() + ((long) this.b.b) + 8;
                return 0;
            case 4:
                wz wzVar3 = (wz) a80Var;
                wzVar3.a(this.a.c(), 0, 8, false);
                this.a.e(0);
                int iK2 = this.a.k();
                int iK3 = this.a.k();
                if (iK2 == 829973609) {
                    this.c = 5;
                    this.m = iK3;
                } else {
                    this.h = wzVar3.a() + ((long) iK3);
                }
                return 0;
            case 5:
                ag1 ag1Var4 = new ag1(this.m);
                ((wz) a80Var).a(ag1Var4.c(), 0, this.m, false);
                if (ag1Var4.a() < 16) {
                    j = 0;
                } else {
                    int iD = ag1Var4.d();
                    ag1Var4.f(8);
                    long jK = ag1Var4.k();
                    long j4 = this.k;
                    j = jK > j4 ? 0L : j4 + 8;
                    ag1Var4.e(iD);
                }
                while (ag1Var4.a() >= 16) {
                    int iK4 = ag1Var4.k();
                    int iK5 = ag1Var4.k();
                    long jK2 = ((long) ag1Var4.k()) + j;
                    ag1Var4.k();
                    no[] noVarArr = this.g;
                    int length = noVarArr.length;
                    int i6 = 0;
                    while (true) {
                        if (i6 < length) {
                            noVar2 = noVarArr[i6];
                            if (!noVar2.a(iK4)) {
                                i6++;
                            }
                        } else {
                            noVar2 = null;
                        }
                    }
                    if (noVar2 != null) {
                        if ((iK5 & 16) == 16) {
                            noVar2.a(jK2);
                        }
                        noVar2.b();
                    }
                }
                for (no noVar4 : this.g) {
                    noVar4.a();
                }
                this.n = true;
                this.d.a(new a(this.f));
                this.c = 6;
                this.h = this.k;
                return 0;
            case 6:
                wz wzVar4 = (wz) a80Var;
                if (wzVar4.a() >= this.l) {
                    return -1;
                }
                no noVar5 = this.i;
                if (noVar5 != null) {
                    if (!noVar5.a(wzVar4)) {
                        return 0;
                    }
                    this.i = null;
                    return 0;
                }
                if ((wzVar4.a() & 1) == 1) {
                    wzVar4.a(1);
                }
                wzVar4.b(this.a.c(), 0, 12, false);
                this.a.e(0);
                int iK6 = this.a.k();
                if (iK6 == 1414744396) {
                    this.a.e(8);
                    wzVar4.a(this.a.k() == 1769369453 ? 12 : 8);
                    wzVar4.c();
                    return 0;
                }
                int iK7 = this.a.k();
                if (iK6 == 1263424842) {
                    this.h = wzVar4.a() + ((long) iK7) + 8;
                    return 0;
                }
                wzVar4.a(8);
                wzVar4.c();
                for (no noVar6 : this.g) {
                    if (noVar6.a(iK6)) {
                        noVar3 = noVar6;
                        if (noVar3 == null) {
                            this.h = wzVar4.a() + ((long) iK7);
                            return 0;
                        }
                        noVar3.b(iK7);
                        this.i = noVar3;
                        return 0;
                    }
                }
                if (noVar3 == null) {
                    this.h = wzVar4.a() + ((long) iK7);
                    return 0;
                }
                noVar3.b(iK7);
                this.i = noVar3;
                return 0;
            default:
                throw new AssertionError();
        }
    }

    @Override
    public final void a(long j, long j2) {
        this.h = -1L;
        this.i = null;
        for (no noVar : this.g) {
            noVar.c(j);
        }
        if (j == 0) {
            if (this.g.length == 0) {
                this.c = 0;
                return;
            } else {
                this.c = 3;
                return;
            }
        }
        this.c = 6;
    }

    @Override
    public final boolean a(a80 a80Var) throws IOException {
        ((wz) a80Var).b(this.a.c(), 0, 12, false);
        this.a.e(0);
        if (this.a.k() != 1179011410) {
            return false;
        }
        this.a.f(4);
        return this.a.k() == 541677121;
    }
}
