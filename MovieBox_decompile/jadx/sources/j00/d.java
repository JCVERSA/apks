package j00;

import retrofit2.j0;

public final class d {

    private final j0 f62858a;

    private final Throwable f62859b;

    private d(j0 j0Var, Throwable th2) {
        this.f62858a = j0Var;
        this.f62859b = th2;
    }

    public static d a(Throwable th2) {
        if (th2 != null) {
            return new d(null, th2);
        }
        throw new NullPointerException("error == null");
    }

    public static d b(j0 j0Var) {
        if (j0Var != null) {
            return new d(j0Var, null);
        }
        throw new NullPointerException("response == null");
    }
}
