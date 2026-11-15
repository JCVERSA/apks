package androidx.media3.datasource.cache;

import androidx.media3.common.util.u;
import java.io.File;
import java.util.ArrayList;
import java.util.TreeSet;

final class j {

    public final int f10522a;

    public final String f10523b;

    private final TreeSet f10524c;

    private final ArrayList f10525d;

    private o f10526e;

    private static final class a {

        public final long f10527a;

        public final long f10528b;

        public a(long j10, long j11) {
            this.f10527a = j10;
            this.f10528b = j11;
        }

        public boolean a(long j10, long j11) {
            long j12 = this.f10528b;
            if (j12 == -1) {
                return j10 >= this.f10527a;
            }
            if (j11 == -1) {
                return false;
            }
            long j13 = this.f10527a;
            return j13 <= j10 && j10 + j11 <= j13 + j12;
        }

        public boolean b(long j10, long j11) {
            long j12 = this.f10527a;
            if (j12 > j10) {
                return j11 == -1 || j10 + j11 > j12;
            }
            long j13 = this.f10528b;
            return j13 == -1 || j12 + j13 > j10;
        }
    }

    public j(int i10, String str) {
        this(i10, str, o.f10549c);
    }

    public void a(s sVar) {
        this.f10524c.add(sVar);
    }

    public boolean b(n nVar) {
        o oVar = this.f10526e;
        o oVarC = oVar.c(nVar);
        this.f10526e = oVarC;
        return !oVarC.equals(oVar);
    }

    public long c(long j10, long j11) {
        androidx.media3.common.util.a.a(j10 >= 0);
        androidx.media3.common.util.a.a(j11 >= 0);
        s sVarE = e(j10, j11);
        if (sVarE.b()) {
            return -Math.min(sVarE.d() ? Long.MAX_VALUE : sVarE.f10508c, j11);
        }
        long j12 = j10 + j11;
        long j13 = j12 >= 0 ? j12 : Long.MAX_VALUE;
        long jMax = sVarE.f10507b + sVarE.f10508c;
        if (jMax < j13) {
            for (s sVar : this.f10524c.tailSet(sVarE, false)) {
                long j14 = sVar.f10507b;
                if (j14 > jMax) {
                    break;
                }
                jMax = Math.max(jMax, j14 + sVar.f10508c);
                if (jMax >= j13) {
                    break;
                }
            }
        }
        return Math.min(jMax - j10, j11);
    }

    public o d() {
        return this.f10526e;
    }

    public s e(long j10, long j11) {
        s sVarI = s.i(this.f10523b, j10);
        s sVar = (s) this.f10524c.floor(sVarI);
        if (sVar != null && sVar.f10507b + sVar.f10508c > j10) {
            return sVar;
        }
        s sVar2 = (s) this.f10524c.ceiling(sVarI);
        if (sVar2 != null) {
            long j12 = sVar2.f10507b - j10;
            j11 = j11 == -1 ? j12 : Math.min(j12, j11);
        }
        return s.h(this.f10523b, j10, j11);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || j.class != obj.getClass()) {
            return false;
        }
        j jVar = (j) obj;
        return this.f10522a == jVar.f10522a && this.f10523b.equals(jVar.f10523b) && this.f10524c.equals(jVar.f10524c) && this.f10526e.equals(jVar.f10526e);
    }

    public TreeSet f() {
        return this.f10524c;
    }

    public boolean g() {
        return this.f10524c.isEmpty();
    }

    public boolean h(long j10, long j11) {
        for (int i10 = 0; i10 < this.f10525d.size(); i10++) {
            if (((a) this.f10525d.get(i10)).a(j10, j11)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return (((this.f10522a * 31) + this.f10523b.hashCode()) * 31) + this.f10526e.hashCode();
    }

    public boolean i() {
        return this.f10525d.isEmpty();
    }

    public boolean j(long j10, long j11) {
        for (int i10 = 0; i10 < this.f10525d.size(); i10++) {
            if (((a) this.f10525d.get(i10)).b(j10, j11)) {
                return false;
            }
        }
        this.f10525d.add(new a(j10, j11));
        return true;
    }

    public boolean k(h hVar) {
        if (!this.f10524c.remove(hVar)) {
            return false;
        }
        File file = hVar.f10510e;
        if (file == null) {
            return true;
        }
        file.delete();
        return true;
    }

    public s l(s sVar, long j10, boolean z10) {
        androidx.media3.common.util.a.g(this.f10524c.remove(sVar));
        File file = (File) androidx.media3.common.util.a.e(sVar.f10510e);
        if (z10) {
            File fileJ = s.j((File) androidx.media3.common.util.a.e(file.getParentFile()), this.f10522a, sVar.f10507b, j10);
            if (file.renameTo(fileJ)) {
                file = fileJ;
            } else {
                u.h("CachedContent", "Failed to rename " + file + " to " + fileJ);
            }
        }
        s sVarE = sVar.e(file, j10);
        this.f10524c.add(sVarE);
        return sVarE;
    }

    public void m(long j10) {
        for (int i10 = 0; i10 < this.f10525d.size(); i10++) {
            if (((a) this.f10525d.get(i10)).f10527a == j10) {
                this.f10525d.remove(i10);
                return;
            }
        }
        throw new IllegalStateException();
    }

    public j(int i10, String str, o oVar) {
        this.f10522a = i10;
        this.f10523b = str;
        this.f10526e = oVar;
        this.f10524c = new TreeSet();
        this.f10525d = new ArrayList();
    }
}
