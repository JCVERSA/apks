package defpackage;

public final class wx9 {
    public static final wx9 c = new a().a();
    public final long a;
    public final long b;

    public static final class a {
        public long a = 0;
        public long b = 0;

        public wx9 a() {
            return new wx9(this.a, this.b);
        }

        public a b(long j) {
            this.a = j;
            return this;
        }

        public a c(long j) {
            this.b = j;
            return this;
        }
    }

    public wx9(long j, long j2) {
        this.a = j;
        this.b = j2;
    }

    public static a c() {
        return new a();
    }

    public long a() {
        return this.a;
    }

    public long b() {
        return this.b;
    }
}
