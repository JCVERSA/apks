package defpackage;

import java.io.File;
import java.util.ArrayList;
import java.util.TreeSet;

public final class eq0 {
    public final int a;
    public final String b;
    public final TreeSet c;
    public final ArrayList d;
    public p02 e;

    public static final class a {
        public final long a;
        public final long b;

        public a(long j, long j2) {
            this.a = j;
            this.b = j2;
        }

        public boolean a(long j, long j2) {
            long j3 = this.b;
            if (j3 == -1) {
                return j >= this.a;
            }
            if (j2 == -1) {
                return false;
            }
            long j4 = this.a;
            return j4 <= j && j + j2 <= j4 + j3;
        }

        public boolean b(long j, long j2) {
            long j3 = this.a;
            if (j3 > j) {
                return j2 == -1 || j + j2 > j3;
            }
            long j4 = this.b;
            return j4 == -1 || j3 + j4 > j;
        }
    }

    public eq0(int i, String str) {
        this(i, str, p02.c);
    }

    public void a(wl9 wl9Var) {
        this.c.add(wl9Var);
    }

    public boolean b(zg1 zg1Var) {
        p02 p02Var = this.e;
        p02 p02VarE = p02Var.e(zg1Var);
        this.e = p02VarE;
        return !p02VarE.equals(p02Var);
    }

    public p02 c() {
        return this.e;
    }

    public wl9 d(long j, long j2) {
        wl9 wl9VarI = wl9.i(this.b, j);
        wl9 wl9Var = (wl9) this.c.floor(wl9VarI);
        if (wl9Var != null && wl9Var.c + wl9Var.d > j) {
            return wl9Var;
        }
        wl9 wl9Var2 = (wl9) this.c.ceiling(wl9VarI);
        if (wl9Var2 != null) {
            long j3 = wl9Var2.c - j;
            j2 = j2 == -1 ? j3 : Math.min(j3, j2);
        }
        return wl9.h(this.b, j, j2);
    }

    public TreeSet e() {
        return this.c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || eq0.class != obj.getClass()) {
            return false;
        }
        eq0 eq0Var = (eq0) obj;
        return this.a == eq0Var.a && this.b.equals(eq0Var.b) && this.c.equals(eq0Var.c) && this.e.equals(eq0Var.e);
    }

    public boolean f() {
        return this.c.isEmpty();
    }

    public boolean g(long j, long j2) {
        for (int i = 0; i < this.d.size(); i++) {
            if (((a) this.d.get(i)).a(j, j2)) {
                return true;
            }
        }
        return false;
    }

    public boolean h() {
        return this.d.isEmpty();
    }

    public int hashCode() {
        return (((this.a * 31) + this.b.hashCode()) * 31) + this.e.hashCode();
    }

    public boolean i(long j, long j2) {
        for (int i = 0; i < this.d.size(); i++) {
            if (((a) this.d.get(i)).b(j, j2)) {
                return false;
            }
        }
        this.d.add(new a(j, j2));
        return true;
    }

    public boolean j(yp0 yp0Var) {
        if (!this.c.remove(yp0Var)) {
            return false;
        }
        File file = yp0Var.f;
        if (file == null) {
            return true;
        }
        file.delete();
        return true;
    }

    public wl9 k(wl9 wl9Var, long j, boolean z) {
        zi.g(this.c.remove(wl9Var));
        File file = (File) zi.e(wl9Var.f);
        if (z) {
            File fileJ = wl9.j((File) zi.e(file.getParentFile()), this.a, wl9Var.c, j);
            if (file.renameTo(fileJ)) {
                file = fileJ;
            } else {
                op5.i("CachedContent", "Failed to rename " + file + " to " + fileJ);
            }
        }
        wl9 wl9VarE = wl9Var.e(file, j);
        this.c.add(wl9VarE);
        return wl9VarE;
    }

    public void l(long j) {
        for (int i = 0; i < this.d.size(); i++) {
            if (((a) this.d.get(i)).a == j) {
                this.d.remove(i);
                return;
            }
        }
        throw new IllegalStateException();
    }

    public eq0(int i, String str, p02 p02Var) {
        this.a = i;
        this.b = str;
        this.e = p02Var;
        this.c = new TreeSet();
        this.d = new ArrayList();
    }
}
