package x8;

public final class b {

    private static final b f75139b = new a().a();

    private final d f75140a;

    public static final class a {

        private d f75141a = null;

        a() {
        }

        public b a() {
            return new b(this.f75141a);
        }

        public a b(d dVar) {
            this.f75141a = dVar;
            return this;
        }
    }

    b(d dVar) {
        this.f75140a = dVar;
    }

    public static a b() {
        return new a();
    }

    public d a() {
        return this.f75140a;
    }
}
