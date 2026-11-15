package com.google.firebase.crashlytics.internal.model;

final class q extends CrashlyticsReport.e.d.a.b.AbstractC0403d {

    private final String f30813a;

    private final String f30814b;

    private final long f30815c;

    static final class b extends CrashlyticsReport.e.d.a.b.AbstractC0403d.AbstractC0404a {

        private String f30816a;

        private String f30817b;

        private long f30818c;

        private byte f30819d;

        b() {
        }

        @Override
        public CrashlyticsReport.e.d.a.b.AbstractC0403d a() {
            String str;
            String str2;
            if (this.f30819d == 1 && (str = this.f30816a) != null && (str2 = this.f30817b) != null) {
                return new q(str, str2, this.f30818c);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f30816a == null) {
                sb2.append(" name");
            }
            if (this.f30817b == null) {
                sb2.append(" code");
            }
            if ((1 & this.f30819d) == 0) {
                sb2.append(" address");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override
        public CrashlyticsReport.e.d.a.b.AbstractC0403d.AbstractC0404a b(long j10) {
            this.f30818c = j10;
            this.f30819d = (byte) (this.f30819d | 1);
            return this;
        }

        @Override
        public CrashlyticsReport.e.d.a.b.AbstractC0403d.AbstractC0404a c(String str) {
            if (str == null) {
                throw new NullPointerException("Null code");
            }
            this.f30817b = str;
            return this;
        }

        @Override
        public CrashlyticsReport.e.d.a.b.AbstractC0403d.AbstractC0404a d(String str) {
            if (str == null) {
                throw new NullPointerException("Null name");
            }
            this.f30816a = str;
            return this;
        }
    }

    @Override
    public long b() {
        return this.f30815c;
    }

    @Override
    public String c() {
        return this.f30814b;
    }

    @Override
    public String d() {
        return this.f30813a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.e.d.a.b.AbstractC0403d)) {
            return false;
        }
        CrashlyticsReport.e.d.a.b.AbstractC0403d abstractC0403d = (CrashlyticsReport.e.d.a.b.AbstractC0403d) obj;
        return this.f30813a.equals(abstractC0403d.d()) && this.f30814b.equals(abstractC0403d.c()) && this.f30815c == abstractC0403d.b();
    }

    public int hashCode() {
        int iHashCode = (((this.f30813a.hashCode() ^ 1000003) * 1000003) ^ this.f30814b.hashCode()) * 1000003;
        long j10 = this.f30815c;
        return iHashCode ^ ((int) (j10 ^ (j10 >>> 32)));
    }

    public String toString() {
        return "Signal{name=" + this.f30813a + ", code=" + this.f30814b + ", address=" + this.f30815c + "}";
    }

    private q(String str, String str2, long j10) {
        this.f30813a = str;
        this.f30814b = str2;
        this.f30815c = j10;
    }
}
