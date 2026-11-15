package com.google.firebase.installations;

final class a extends f {

    private final String f31051a;

    private final long f31052b;

    private final long f31053c;

    static final class b extends f.a {

        private String f31054a;

        private Long f31055b;

        private Long f31056c;

        b() {
        }

        @Override
        public f a() {
            String str = "";
            if (this.f31054a == null) {
                str = " token";
            }
            if (this.f31055b == null) {
                str = str + " tokenExpirationTimestamp";
            }
            if (this.f31056c == null) {
                str = str + " tokenCreationTimestamp";
            }
            if (str.isEmpty()) {
                return new a(this.f31054a, this.f31055b.longValue(), this.f31056c.longValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override
        public f.a b(String str) {
            if (str == null) {
                throw new NullPointerException("Null token");
            }
            this.f31054a = str;
            return this;
        }

        @Override
        public f.a c(long j10) {
            this.f31056c = Long.valueOf(j10);
            return this;
        }

        @Override
        public f.a d(long j10) {
            this.f31055b = Long.valueOf(j10);
            return this;
        }
    }

    @Override
    public String b() {
        return this.f31051a;
    }

    @Override
    public long c() {
        return this.f31053c;
    }

    @Override
    public long d() {
        return this.f31052b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return this.f31051a.equals(fVar.b()) && this.f31052b == fVar.d() && this.f31053c == fVar.c();
    }

    public int hashCode() {
        int iHashCode = (this.f31051a.hashCode() ^ 1000003) * 1000003;
        long j10 = this.f31052b;
        long j11 = this.f31053c;
        return ((iHashCode ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003) ^ ((int) (j11 ^ (j11 >>> 32)));
    }

    public String toString() {
        return "InstallationTokenResult{token=" + this.f31051a + ", tokenExpirationTimestamp=" + this.f31052b + ", tokenCreationTimestamp=" + this.f31053c + "}";
    }

    private a(String str, long j10, long j11) {
        this.f31051a = str;
        this.f31052b = j10;
        this.f31053c = j11;
    }
}
