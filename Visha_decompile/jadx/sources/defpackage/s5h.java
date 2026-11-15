package defpackage;

public final class s5h {
    public static final s5h c = new s5h(-1, -1);
    public final int a;
    public final int b;

    static {
        new s5h(0, 0);
    }

    public s5h(int i, int i2) {
        boolean z = false;
        if ((i == -1 || i >= 0) && (i2 == -1 || i2 >= 0)) {
            z = true;
        }
        n7g.d(z);
        this.a = i;
        this.b = i2;
    }

    public final int a() {
        return this.b;
    }

    public final int b() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (obj instanceof s5h) {
            s5h s5hVar = (s5h) obj;
            if (this.a == s5hVar.a && this.b == s5hVar.b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.a;
        return this.b ^ ((i >>> 16) | (i << 16));
    }

    public final String toString() {
        return this.a + "x" + this.b;
    }
}
