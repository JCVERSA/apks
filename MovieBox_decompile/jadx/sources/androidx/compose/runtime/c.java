package androidx.compose.runtime;

public final class c {

    private int f3365a;

    public c(int i10) {
        this.f3365a = i10;
    }

    public final int a() {
        return this.f3365a;
    }

    public final boolean b() {
        return this.f3365a != Integer.MIN_VALUE;
    }

    public final void c(int i10) {
        this.f3365a = i10;
    }

    public final int d(j2 j2Var) {
        return j2Var.c(this);
    }

    public final int e(m2 m2Var) {
        return m2Var.F(this);
    }

    public String toString() {
        return super.toString() + "{ location = " + this.f3365a + " }";
    }
}
