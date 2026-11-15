package defpackage;

import java.util.Arrays;

public final class x9f {
    public final int a;
    public final n5f b;
    public final boolean c;
    public final int[] d;
    public final boolean[] e;

    static {
        int i = kfh.a;
        Integer.toString(0, 36);
        Integer.toString(1, 36);
        Integer.toString(3, 36);
        Integer.toString(4, 36);
    }

    public x9f(n5f n5fVar, boolean z, int[] iArr, boolean[] zArr) {
        int i = n5fVar.a;
        this.a = i;
        n7g.d(i == iArr.length && i == zArr.length);
        this.b = n5fVar;
        this.c = z && i > 1;
        this.d = (int[]) iArr.clone();
        this.e = (boolean[]) zArr.clone();
    }

    public final int a() {
        return this.b.c;
    }

    public final erj b(int i) {
        return this.b.b(i);
    }

    public final boolean c() {
        for (boolean z : this.e) {
            if (z) {
                return true;
            }
        }
        return false;
    }

    public final boolean d(int i) {
        return this.e[i];
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && x9f.class == obj.getClass()) {
            x9f x9fVar = (x9f) obj;
            if (this.c == x9fVar.c && this.b.equals(x9fVar.b) && Arrays.equals(this.d, x9fVar.d) && Arrays.equals(this.e, x9fVar.e)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((((this.b.hashCode() * 31) + (this.c ? 1 : 0)) * 31) + Arrays.hashCode(this.d)) * 31) + Arrays.hashCode(this.e);
    }
}
