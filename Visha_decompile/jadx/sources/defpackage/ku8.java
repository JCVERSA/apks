package defpackage;

public final class ku8 {
    public final gu8 a;
    public final Throwable b;

    public ku8(gu8 gu8Var, Throwable th) {
        this.a = gu8Var;
        this.b = th;
    }

    public static ku8 a(Throwable th) {
        if (th != null) {
            return new ku8(null, th);
        }
        throw new NullPointerException("error == null");
    }

    public static ku8 b(gu8 gu8Var) {
        if (gu8Var != null) {
            return new ku8(gu8Var, null);
        }
        throw new NullPointerException("response == null");
    }
}
