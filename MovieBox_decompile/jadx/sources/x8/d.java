package x8;

public final class d {

    private static final d f75147c = new a().a();

    private final long f75148a;

    private final long f75149b;

    public static final class a {

        private long f75150a = 0;

        private long f75151b = 0;

        a() {
        }

        public d a() {
            return new d(this.f75150a, this.f75151b);
        }

        public a b(long j10) {
            this.f75150a = j10;
            return this;
        }

        public a c(long j10) {
            this.f75151b = j10;
            return this;
        }
    }

    d(long j10, long j11) {
        this.f75148a = j10;
        this.f75149b = j11;
    }

    public static a c() {
        return new a();
    }

    public long a() {
        return this.f75148a;
    }

    public long b() {
        return this.f75149b;
    }
}
