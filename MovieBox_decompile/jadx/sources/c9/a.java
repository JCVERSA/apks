package c9;

final class a extends e {

    private final long f16706b;

    private final int f16707c;

    private final int f16708d;

    private final long f16709e;

    private final int f16710f;

    static final class b extends e.a {

        private Long f16711a;

        private Integer f16712b;

        private Integer f16713c;

        private Long f16714d;

        private Integer f16715e;

        b() {
        }

        @Override
        e a() {
            String str = "";
            if (this.f16711a == null) {
                str = " maxStorageSizeInBytes";
            }
            if (this.f16712b == null) {
                str = str + " loadBatchSize";
            }
            if (this.f16713c == null) {
                str = str + " criticalSectionEnterTimeoutMs";
            }
            if (this.f16714d == null) {
                str = str + " eventCleanUpAge";
            }
            if (this.f16715e == null) {
                str = str + " maxBlobByteSizePerRow";
            }
            if (str.isEmpty()) {
                return new a(this.f16711a.longValue(), this.f16712b.intValue(), this.f16713c.intValue(), this.f16714d.longValue(), this.f16715e.intValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override
        e.a b(int i10) {
            this.f16713c = Integer.valueOf(i10);
            return this;
        }

        @Override
        e.a c(long j10) {
            this.f16714d = Long.valueOf(j10);
            return this;
        }

        @Override
        e.a d(int i10) {
            this.f16712b = Integer.valueOf(i10);
            return this;
        }

        @Override
        e.a e(int i10) {
            this.f16715e = Integer.valueOf(i10);
            return this;
        }

        @Override
        e.a f(long j10) {
            this.f16711a = Long.valueOf(j10);
            return this;
        }
    }

    @Override
    int b() {
        return this.f16708d;
    }

    @Override
    long c() {
        return this.f16709e;
    }

    @Override
    int d() {
        return this.f16707c;
    }

    @Override
    int e() {
        return this.f16710f;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.f16706b == eVar.f() && this.f16707c == eVar.d() && this.f16708d == eVar.b() && this.f16709e == eVar.c() && this.f16710f == eVar.e();
    }

    @Override
    long f() {
        return this.f16706b;
    }

    public int hashCode() {
        long j10 = this.f16706b;
        int i10 = (((((((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003) ^ this.f16707c) * 1000003) ^ this.f16708d) * 1000003;
        long j11 = this.f16709e;
        return ((i10 ^ ((int) ((j11 >>> 32) ^ j11))) * 1000003) ^ this.f16710f;
    }

    public String toString() {
        return "EventStoreConfig{maxStorageSizeInBytes=" + this.f16706b + ", loadBatchSize=" + this.f16707c + ", criticalSectionEnterTimeoutMs=" + this.f16708d + ", eventCleanUpAge=" + this.f16709e + ", maxBlobByteSizePerRow=" + this.f16710f + "}";
    }

    private a(long j10, int i10, int i11, long j11, int i12) {
        this.f16706b = j10;
        this.f16707c = i10;
        this.f16708d = i11;
        this.f16709e = j11;
        this.f16710f = i12;
    }
}
