package com.google.android.exoplayer2.upstream.cache;

import java.io.File;
import java.util.ArrayList;
import java.util.TreeSet;

final class j {

    public final int f26581a;

    public final String f26582b;

    private final TreeSet f26583c;

    private final ArrayList f26584d;

    private o f26585e;

    private static final class a {

        public final long f26586a;

        public final long f26587b;

        public a(long j10, long j11) {
            this.f26586a = j10;
            this.f26587b = j11;
        }

        public boolean a(long j10, long j11) {
            long j12 = this.f26587b;
            if (j12 == -1) {
                return j10 >= this.f26586a;
            }
            if (j11 == -1) {
                return false;
            }
            long j13 = this.f26586a;
            return j13 <= j10 && j10 + j11 <= j13 + j12;
        }

        public boolean b(long j10, long j11) {
            long j12 = this.f26586a;
            if (j12 > j10) {
                return j11 == -1 || j10 + j11 > j12;
            }
            long j13 = this.f26587b;
            return j13 == -1 || j12 + j13 > j10;
        }
    }

    public j(int i10, String str) {
        this(i10, str, o.f26608c);
    }

    public void a(s sVar) {
        this.f26583c.add(sVar);
    }

    public boolean b(n nVar) {
        o oVar = this.f26585e;
        o oVarC = oVar.c(nVar);
        this.f26585e = oVarC;
        return !oVarC.equals(oVar);
    }

    public long c(long j10, long j11) {
        com.google.android.exoplayer2.util.a.a(j10 >= 0);
        com.google.android.exoplayer2.util.a.a(j11 >= 0);
        s sVarE = e(j10, j11);
        if (sVarE.b()) {
            return -Math.min(sVarE.d() ? Long.MAX_VALUE : sVarE.f26567c, j11);
        }
        long j12 = j10 + j11;
        long j13 = j12 >= 0 ? j12 : Long.MAX_VALUE;
        long jMax = sVarE.f26566b + sVarE.f26567c;
        if (jMax < j13) {
            for (s sVar : this.f26583c.tailSet(sVarE, false)) {
                long j14 = sVar.f26566b;
                if (j14 > jMax) {
                    break;
                }
                jMax = Math.max(jMax, j14 + sVar.f26567c);
                if (jMax >= j13) {
                    break;
                }
            }
        }
        return Math.min(jMax - j10, j11);
    }

    public o d() {
        return this.f26585e;
    }

    public s e(long j10, long j11) {
        s sVarI = s.i(this.f26582b, j10);
        s sVar = (s) this.f26583c.floor(sVarI);
        if (sVar != null && sVar.f26566b + sVar.f26567c > j10) {
            return sVar;
        }
        s sVar2 = (s) this.f26583c.ceiling(sVarI);
        if (sVar2 != null) {
            long j12 = sVar2.f26566b - j10;
            j11 = j11 == -1 ? j12 : Math.min(j12, j11);
        }
        return s.h(this.f26582b, j10, j11);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || j.class != obj.getClass()) {
            return false;
        }
        j jVar = (j) obj;
        return this.f26581a == jVar.f26581a && this.f26582b.equals(jVar.f26582b) && this.f26583c.equals(jVar.f26583c) && this.f26585e.equals(jVar.f26585e);
    }

    public TreeSet f() {
        return this.f26583c;
    }

    public boolean g() {
        return this.f26583c.isEmpty();
    }

    public boolean h(long j10, long j11) {
        for (int i10 = 0; i10 < this.f26584d.size(); i10++) {
            if (((a) this.f26584d.get(i10)).a(j10, j11)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return (((this.f26581a * 31) + this.f26582b.hashCode()) * 31) + this.f26585e.hashCode();
    }

    public boolean i() {
        return this.f26584d.isEmpty();
    }

    public boolean j(long j10, long j11) {
        for (int i10 = 0; i10 < this.f26584d.size(); i10++) {
            if (((a) this.f26584d.get(i10)).b(j10, j11)) {
                return false;
            }
        }
        this.f26584d.add(new a(j10, j11));
        return true;
    }

    public boolean k(h hVar) {
        if (!this.f26583c.remove(hVar)) {
            return false;
        }
        File file = hVar.f26569e;
        if (file == null) {
            return true;
        }
        file.delete();
        return true;
    }

    public s l(s sVar, long j10, boolean z10) {
        com.google.android.exoplayer2.util.a.g(this.f26583c.remove(sVar));
        File file = (File) com.google.android.exoplayer2.util.a.e(sVar.f26569e);
        if (z10) {
            File fileJ = s.j((File) com.google.android.exoplayer2.util.a.e(file.getParentFile()), this.f26581a, sVar.f26566b, j10);
            if (file.renameTo(fileJ)) {
                file = fileJ;
            } else {
                com.google.android.exoplayer2.util.s.i("CachedContent", "Failed to rename " + file + " to " + fileJ);
            }
        }
        s sVarE = sVar.e(file, j10);
        this.f26583c.add(sVarE);
        return sVarE;
    }

    public void m(long j10) {
        for (int i10 = 0; i10 < this.f26584d.size(); i10++) {
            if (((a) this.f26584d.get(i10)).f26586a == j10) {
                this.f26584d.remove(i10);
                return;
            }
        }
        throw new IllegalStateException();
    }

    public j(int i10, String str, o oVar) {
        this.f26581a = i10;
        this.f26582b = str;
        this.f26585e = oVar;
        this.f26583c = new TreeSet();
        this.f26584d = new ArrayList();
    }
}
