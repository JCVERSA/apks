package defpackage;

public final class bnj {
    public final Object a;
    public final int b;
    public final int c;
    public final long d;
    public final int e;

    public bnj(Object obj, int i, int i2, long j, int i3) {
        this.a = obj;
        this.b = i;
        this.c = i2;
        this.d = j;
        this.e = i3;
    }

    public final bnj a(Object obj) {
        return this.a.equals(obj) ? this : new bnj(obj, this.b, this.c, this.d, this.e);
    }

    public final boolean b() {
        return this.b != -1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof bnj)) {
            return false;
        }
        bnj bnjVar = (bnj) obj;
        return this.a.equals(bnjVar.a) && this.b == bnjVar.b && this.c == bnjVar.c && this.d == bnjVar.d && this.e == bnjVar.e;
    }

    public final int hashCode() {
        return ((((((((this.a.hashCode() + 527) * 31) + this.b) * 31) + this.c) * 31) + ((int) this.d)) * 31) + this.e;
    }

    public bnj(Object obj, int i, int i2, long j) {
        this(obj, i, i2, j, -1);
    }

    public bnj(Object obj, long j) {
        this(obj, -1, -1, j, -1);
    }

    public bnj(Object obj, long j, int i) {
        this(obj, -1, -1, j, i);
    }
}
