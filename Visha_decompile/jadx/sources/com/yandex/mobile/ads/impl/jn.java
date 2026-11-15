package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import com.alibaba.android.arouter.utils.Consts;
import java.io.File;
import java.util.ArrayList;
import java.util.TreeSet;

final class jn {
    public final int a;
    public final String b;
    private final TreeSet<oy1> c = new TreeSet<>();
    private final ArrayList<a> d = new ArrayList<>();
    private nz e;

    public static final class a {
        public final long a;
        public final long b;

        public a(long j, long j2) {
            this.a = j;
            this.b = j2;
        }
    }

    public jn(int i, String str, nz nzVar) {
        this.a = i;
        this.b = str;
        this.e = nzVar;
    }

    public final void a(oy1 oy1Var) {
        this.c.add(oy1Var);
    }

    public final oy1 b(long j, long j2) {
        oy1 oy1VarA = oy1.a(this.b, j);
        oy1 oy1VarFloor = this.c.floor(oy1VarA);
        if (oy1VarFloor != null && oy1VarFloor.c + oy1VarFloor.d > j) {
            return oy1VarFloor;
        }
        oy1 oy1VarCeiling = this.c.ceiling(oy1VarA);
        if (oy1VarCeiling != null) {
            long j3 = oy1VarCeiling.c - j;
            j2 = j2 == -1 ? j3 : Math.min(j3, j2);
        }
        return oy1.a(this.b, j, j2);
    }

    public final boolean c() {
        return this.c.isEmpty();
    }

    public final boolean d() {
        return this.d.isEmpty();
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || jn.class != obj.getClass()) {
            return false;
        }
        jn jnVar = (jn) obj;
        return this.a == jnVar.a && this.b.equals(jnVar.b) && this.c.equals(jnVar.c) && this.e.equals(jnVar.e);
    }

    public final int hashCode() {
        return this.e.hashCode() + v3.a(this.b, this.a * 31, 31);
    }

    public final boolean a(es esVar) {
        nz nzVar = this.e;
        nz nzVarA = nzVar.a(esVar);
        this.e = nzVarA;
        return !nzVarA.equals(nzVar);
    }

    public final boolean c(long j, long j2) {
        for (int i = 0; i < this.d.size(); i++) {
            a aVar = this.d.get(i);
            long j3 = aVar.b;
            if (j3 == -1) {
                if (j >= aVar.a) {
                    return true;
                }
            } else if (j2 == -1) {
                continue;
            } else {
                long j4 = aVar.a;
                if (j4 <= j && j + j2 <= j4 + j3) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean d(long j, long j2) {
        for (int i = 0; i < this.d.size(); i++) {
            a aVar = this.d.get(i);
            long j3 = aVar.a;
            if (j3 <= j) {
                long j4 = aVar.b;
                if (j4 == -1 || j3 + j4 > j) {
                    return false;
                }
            } else {
                if (j2 == -1 || j + j2 > j3) {
                    return false;
                }
            }
        }
        this.d.add(new a(j, j2));
        return true;
    }

    public final long a(long j, long j2) {
        if (j < 0) {
            throw new IllegalArgumentException();
        }
        if (j2 >= 0) {
            oy1 oy1VarB = b(j, j2);
            if (!oy1VarB.e) {
                long j3 = oy1VarB.d;
                return -Math.min(j3 != -1 ? j3 : Long.MAX_VALUE, j2);
            }
            long j4 = j + j2;
            long j5 = j4 >= 0 ? j4 : Long.MAX_VALUE;
            long jMax = oy1VarB.c + oy1VarB.d;
            if (jMax < j5) {
                for (oy1 oy1Var : this.c.tailSet(oy1VarB, false)) {
                    long j6 = oy1Var.c;
                    if (j6 > jMax) {
                        break;
                    }
                    jMax = Math.max(jMax, j6 + oy1Var.d);
                    if (jMax >= j5) {
                        break;
                    }
                }
            }
            return Math.min(jMax - j, j2);
        }
        throw new IllegalArgumentException();
    }

    public final TreeSet<oy1> b() {
        return this.c;
    }

    public final nz a() {
        return this.e;
    }

    public final boolean a(fn fnVar) {
        if (!this.c.remove(fnVar)) {
            return false;
        }
        File file = fnVar.f;
        if (file == null) {
            return true;
        }
        file.delete();
        return true;
    }

    public final oy1 a(oy1 oy1Var, long j, boolean z) {
        if (this.c.remove(oy1Var)) {
            File file = oy1Var.f;
            file.getClass();
            if (z) {
                File parentFile = file.getParentFile();
                parentFile.getClass();
                long j2 = oy1Var.c;
                int i = this.a;
                int i2 = oy1.k;
                File file2 = new File(parentFile, i + Consts.DOT + j2 + Consts.DOT + j + ".v3.exo");
                if (file.renameTo(file2)) {
                    file = file2;
                } else {
                    et0.d("CachedContent", "Failed to rename " + file + " to " + file2);
                }
            }
            oy1 oy1VarA = oy1Var.a(file, j);
            this.c.add(oy1VarA);
            return oy1VarA;
        }
        throw new IllegalStateException();
    }

    public final void a(long j) {
        for (int i = 0; i < this.d.size(); i++) {
            if (this.d.get(i).a == j) {
                this.d.remove(i);
                return;
            }
        }
        throw new IllegalStateException();
    }
}
