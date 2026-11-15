package defpackage;

public final class mz4 {
    public final int a;
    public final Object b;

    public mz4(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    public final int a() {
        return this.a;
    }

    public final Object b() {
        return this.b;
    }

    public final int c() {
        return this.a;
    }

    public final Object d() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof mz4)) {
            return false;
        }
        mz4 mz4Var = (mz4) obj;
        return this.a == mz4Var.a && y45.e(this.b, mz4Var.b);
    }

    public int hashCode() {
        int iHashCode = Integer.hashCode(this.a) * 31;
        Object obj = this.b;
        return iHashCode + (obj == null ? 0 : obj.hashCode());
    }

    public String toString() {
        return "IndexedValue(index=" + this.a + ", value=" + this.b + ')';
    }
}
