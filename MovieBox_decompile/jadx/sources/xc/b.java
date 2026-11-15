package xc;

final class b {

    private static final uc.a f75258d = uc.a.e();

    private final String f75259a;

    private final kc.b f75260b;

    private t8.h f75261c;

    b(kc.b bVar, String str) {
        this.f75259a = str;
        this.f75260b = bVar;
    }

    private boolean a() {
        if (this.f75261c == null) {
            t8.i iVar = (t8.i) this.f75260b.get();
            if (iVar != null) {
                this.f75261c = iVar.b(this.f75259a, com.google.firebase.perf.v1.g.class, t8.c.b("proto"), new t8.g() {
                    @Override
                    public final Object apply(Object obj) {
                        return ((com.google.firebase.perf.v1.g) obj).toByteArray();
                    }
                });
            } else {
                f75258d.j("Flg TransportFactory is not available at the moment");
            }
        }
        return this.f75261c != null;
    }

    public void b(com.google.firebase.perf.v1.g gVar) {
        if (a()) {
            this.f75261c.a(t8.d.f(gVar));
        } else {
            f75258d.j("Unable to dispatch event because Flg Transport is not available");
        }
    }
}
