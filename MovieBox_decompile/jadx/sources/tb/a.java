package tb;

public final class a implements ec.a {

    public static final ec.a f72611a = new a();

    private static final class C0890a implements dc.c {

        static final C0890a f72612a = new C0890a();

        private static final dc.b f72613b = dc.b.d("rolloutId");

        private static final dc.b f72614c = dc.b.d("parameterKey");

        private static final dc.b f72615d = dc.b.d("parameterValue");

        private static final dc.b f72616e = dc.b.d("variantId");

        private static final dc.b f72617f = dc.b.d("templateVersion");

        private C0890a() {
        }

        @Override
        public void a(i iVar, dc.d dVar) {
            dVar.a(f72613b, iVar.e());
            dVar.a(f72614c, iVar.c());
            dVar.a(f72615d, iVar.d());
            dVar.a(f72616e, iVar.g());
            dVar.d(f72617f, iVar.f());
        }
    }

    private a() {
    }

    @Override
    public void a(ec.b bVar) {
        C0890a c0890a = C0890a.f72612a;
        bVar.a(i.class, c0890a);
        bVar.a(b.class, c0890a);
    }
}
