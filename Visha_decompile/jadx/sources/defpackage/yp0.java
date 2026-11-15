package defpackage;

import java.io.File;

public abstract class yp0 implements Comparable {
    public final String b;
    public final long c;
    public final long d;
    public final boolean e;
    public final File f;
    public final long g;

    public yp0(String str, long j, long j2, long j3, File file) {
        this.b = str;
        this.c = j;
        this.d = j2;
        this.e = file != null;
        this.f = file;
        this.g = j3;
    }

    @Override
    public int compareTo(yp0 yp0Var) {
        if (!this.b.equals(yp0Var.b)) {
            return this.b.compareTo(yp0Var.b);
        }
        long j = this.c - yp0Var.c;
        if (j == 0) {
            return 0;
        }
        return j < 0 ? -1 : 1;
    }

    public boolean b() {
        return !this.e;
    }

    public boolean d() {
        return this.d == -1;
    }

    public String toString() {
        return "[" + this.c + ", " + this.d + "]";
    }
}
