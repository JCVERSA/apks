package defpackage;

import android.util.SparseBooleanArray;

public final class zx3 {
    public final SparseBooleanArray a;

    public static final class b {
        public final SparseBooleanArray a = new SparseBooleanArray();
        public boolean b;

        public b a(int i) {
            zi.g(!this.b);
            this.a.append(i, true);
            return this;
        }

        public b b(zx3 zx3Var) {
            for (int i = 0; i < zx3Var.c(); i++) {
                a(zx3Var.b(i));
            }
            return this;
        }

        public b c(int... iArr) {
            for (int i : iArr) {
                a(i);
            }
            return this;
        }

        public b d(int i, boolean z) {
            return z ? a(i) : this;
        }

        public zx3 e() {
            zi.g(!this.b);
            this.b = true;
            return new zx3(this.a);
        }
    }

    public boolean a(int i) {
        return this.a.get(i);
    }

    public int b(int i) {
        zi.c(i, 0, c());
        return this.a.keyAt(i);
    }

    public int c() {
        return this.a.size();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zx3)) {
            return false;
        }
        zx3 zx3Var = (zx3) obj;
        if (blb.a >= 24) {
            return this.a.equals(zx3Var.a);
        }
        if (c() != zx3Var.c()) {
            return false;
        }
        for (int i = 0; i < c(); i++) {
            if (b(i) != zx3Var.b(i)) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        if (blb.a >= 24) {
            return this.a.hashCode();
        }
        int iC = c();
        for (int i = 0; i < c(); i++) {
            iC = (iC * 31) + b(i);
        }
        return iC;
    }

    public zx3(SparseBooleanArray sparseBooleanArray) {
        this.a = sparseBooleanArray;
    }
}
