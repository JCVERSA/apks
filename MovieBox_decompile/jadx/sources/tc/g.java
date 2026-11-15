package tc;

import com.google.firebase.perf.session.SessionManager;

public final class g implements iy.a {

    private final a f72688a;

    public g(a aVar) {
        this.f72688a = aVar;
    }

    public static g a(a aVar) {
        return new g(aVar);
    }

    public static SessionManager c(a aVar) {
        return (SessionManager) ux.b.c(aVar.f());
    }

    @Override
    public SessionManager get() {
        return c(this.f72688a);
    }
}
