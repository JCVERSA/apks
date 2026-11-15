package rc;

public final class f implements com.google.firebase.perf.application.a.InterfaceC0421a {

    private static final uc.a f70956a = uc.a.e();

    @Override
    public void a() {
        try {
            e.c();
        } catch (IllegalStateException e10) {
            f70956a.k("FirebaseApp is not initialized. Firebase Performance will not be collecting any performance metrics until initialized. %s", e10);
        }
    }
}
