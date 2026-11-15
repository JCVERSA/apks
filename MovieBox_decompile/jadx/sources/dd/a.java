package dd;

public final class a implements ec.a {

    public static final ec.a f59005a = new a();

    private static final class C0705a implements dc.c {

        static final C0705a f59006a = new C0705a();

        private static final dc.b f59007b = dc.b.d("rolloutId");

        private static final dc.b f59008c = dc.b.d("variantId");

        private static final dc.b f59009d = dc.b.d("parameterKey");

        private static final dc.b f59010e = dc.b.d("parameterValue");

        private static final dc.b f59011f = dc.b.d("templateVersion");

        private C0705a() {
        }

        @Override
        public void a(d dVar, dc.d dVar2) {
            dVar2.a(f59007b, dVar.d());
            dVar2.a(f59008c, dVar.f());
            dVar2.a(f59009d, dVar.b());
            dVar2.a(f59010e, dVar.c());
            dVar2.d(f59011f, dVar.e());
        }
    }

    private a() {
    }

    @Override
    public void a(ec.b bVar) {
        C0705a c0705a = C0705a.f59006a;
        bVar.a(d.class, c0705a);
        bVar.a(b.class, c0705a);
    }
}
