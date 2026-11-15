package x8;

public final class e {

    private static final e f75152c = new a().a();

    private final long f75153a;

    private final long f75154b;

    public static final class a {

        private long f75155a = 0;

        private long f75156b = 0;

        a() {
        }

        public e a() {
            return new e(this.f75155a, this.f75156b);
        }

        public a b(long j10) {
            this.f75156b = j10;
            return this;
        }

        public a c(long j10) {
            this.f75155a = j10;
            return this;
        }
    }

    e(long j10, long j11) {
        this.f75153a = j10;
        this.f75154b = j11;
    }

    public static a c() {
        return new a();
    }

    public long a() {
        return this.f75154b;
    }

    public long b() {
        return this.f75153a;
    }
}
