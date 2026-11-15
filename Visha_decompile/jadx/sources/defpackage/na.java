package defpackage;

public final class na {
    public String a;
    public int b;

    public na(String str, int i) {
        y45.j(str, "algo");
        this.a = str;
        this.b = i;
    }

    public final String a() {
        return this.a;
    }

    public final int b() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof na)) {
            return false;
        }
        na naVar = (na) obj;
        return y45.e(this.a, naVar.a) && this.b == naVar.b;
    }

    public int hashCode() {
        return (this.a.hashCode() * 31) + Integer.hashCode(this.b);
    }

    public String toString() {
        return "AlgoAttibute(algo=" + this.a + ", size=" + this.b + ')';
    }
}
