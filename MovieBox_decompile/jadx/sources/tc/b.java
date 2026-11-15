package tc;

public final class b implements iy.a {

    private final a f72683a;

    public b(a aVar) {
        this.f72683a = aVar;
    }

    public static b a(a aVar) {
        return new b(aVar);
    }

    public static com.google.firebase.perf.config.a c(a aVar) {
        return (com.google.firebase.perf.config.a) ux.b.c(aVar.a());
    }

    @Override
    public com.google.firebase.perf.config.a get() {
        return c(this.f72683a);
    }
}
