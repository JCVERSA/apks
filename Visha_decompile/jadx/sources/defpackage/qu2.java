package defpackage;

public final class qu2 {
    public final int a;
    public final int b;

    public qu2(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof qu2)) {
            return false;
        }
        qu2 qu2Var = (qu2) obj;
        return this.a == qu2Var.a && this.b == qu2Var.b;
    }

    public int hashCode() {
        return (Integer.hashCode(this.a) * 31) + Integer.hashCode(this.b);
    }

    public String toString() {
        return "DivVideoResolution(width=" + this.a + ", height=" + this.b + ')';
    }
}
