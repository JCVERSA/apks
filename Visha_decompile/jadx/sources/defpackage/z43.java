package defpackage;

public abstract class z43 extends dj {
    public final u43 c;

    public z43(boolean z, u43 u43Var) {
        super(z);
        if (u43Var == null) {
            throw new NullPointerException("'parameters' cannot be null");
        }
        this.c = u43Var;
    }

    public u43 b() {
        return this.c;
    }
}
