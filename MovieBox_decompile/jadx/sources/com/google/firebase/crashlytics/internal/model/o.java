package com.google.firebase.crashlytics.internal.model;

final class o extends CrashlyticsReport.e.d.a.b.AbstractC0399a {

    private final long f30793a;

    private final long f30794b;

    private final String f30795c;

    private final String f30796d;

    static final class b extends CrashlyticsReport.e.d.a.b.AbstractC0399a.AbstractC0400a {

        private long f30797a;

        private long f30798b;

        private String f30799c;

        private String f30800d;

        private byte f30801e;

        b() {
        }

        @Override
        public CrashlyticsReport.e.d.a.b.AbstractC0399a a() {
            String str;
            if (this.f30801e == 3 && (str = this.f30799c) != null) {
                return new o(this.f30797a, this.f30798b, str, this.f30800d);
            }
            StringBuilder sb2 = new StringBuilder();
            if ((this.f30801e & 1) == 0) {
                sb2.append(" baseAddress");
            }
            if ((this.f30801e & 2) == 0) {
                sb2.append(" size");
            }
            if (this.f30799c == null) {
                sb2.append(" name");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override
        public CrashlyticsReport.e.d.a.b.AbstractC0399a.AbstractC0400a b(long j10) {
            this.f30797a = j10;
            this.f30801e = (byte) (this.f30801e | 1);
            return this;
        }

        @Override
        public CrashlyticsReport.e.d.a.b.AbstractC0399a.AbstractC0400a c(String str) {
            if (str == null) {
                throw new NullPointerException("Null name");
            }
            this.f30799c = str;
            return this;
        }

        @Override
        public CrashlyticsReport.e.d.a.b.AbstractC0399a.AbstractC0400a d(long j10) {
            this.f30798b = j10;
            this.f30801e = (byte) (this.f30801e | 2);
            return this;
        }

        @Override
        public CrashlyticsReport.e.d.a.b.AbstractC0399a.AbstractC0400a e(String str) {
            this.f30800d = str;
            return this;
        }
    }

    @Override
    public long b() {
        return this.f30793a;
    }

    @Override
    public String c() {
        return this.f30795c;
    }

    @Override
    public long d() {
        return this.f30794b;
    }

    @Override
    public String e() {
        return this.f30796d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.e.d.a.b.AbstractC0399a)) {
            return false;
        }
        CrashlyticsReport.e.d.a.b.AbstractC0399a abstractC0399a = (CrashlyticsReport.e.d.a.b.AbstractC0399a) obj;
        if (this.f30793a == abstractC0399a.b() && this.f30794b == abstractC0399a.d() && this.f30795c.equals(abstractC0399a.c())) {
            String str = this.f30796d;
            if (str == null) {
                if (abstractC0399a.e() == null) {
                    return true;
                }
            } else if (str.equals(abstractC0399a.e())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        long j10 = this.f30793a;
        long j11 = this.f30794b;
        int iHashCode = (((((((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003) ^ ((int) ((j11 >>> 32) ^ j11))) * 1000003) ^ this.f30795c.hashCode()) * 1000003;
        String str = this.f30796d;
        return iHashCode ^ (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "BinaryImage{baseAddress=" + this.f30793a + ", size=" + this.f30794b + ", name=" + this.f30795c + ", uuid=" + this.f30796d + "}";
    }

    private o(long j10, long j11, String str, String str2) {
        this.f30793a = j10;
        this.f30794b = j11;
        this.f30795c = str;
        this.f30796d = str2;
    }
}
