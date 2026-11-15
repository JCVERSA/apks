package com.google.firebase.crashlytics.internal.model;

final class w extends CrashlyticsReport.e.d.AbstractC0411e {

    private final CrashlyticsReport.e.d.AbstractC0411e.b f30862a;

    private final String f30863b;

    private final String f30864c;

    private final long f30865d;

    static final class b extends CrashlyticsReport.e.d.AbstractC0411e.a {

        private CrashlyticsReport.e.d.AbstractC0411e.b f30866a;

        private String f30867b;

        private String f30868c;

        private long f30869d;

        private byte f30870e;

        b() {
        }

        @Override
        public CrashlyticsReport.e.d.AbstractC0411e a() {
            CrashlyticsReport.e.d.AbstractC0411e.b bVar;
            String str;
            String str2;
            if (this.f30870e == 1 && (bVar = this.f30866a) != null && (str = this.f30867b) != null && (str2 = this.f30868c) != null) {
                return new w(bVar, str, str2, this.f30869d);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f30866a == null) {
                sb2.append(" rolloutVariant");
            }
            if (this.f30867b == null) {
                sb2.append(" parameterKey");
            }
            if (this.f30868c == null) {
                sb2.append(" parameterValue");
            }
            if ((1 & this.f30870e) == 0) {
                sb2.append(" templateVersion");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override
        public CrashlyticsReport.e.d.AbstractC0411e.a b(String str) {
            if (str == null) {
                throw new NullPointerException("Null parameterKey");
            }
            this.f30867b = str;
            return this;
        }

        @Override
        public CrashlyticsReport.e.d.AbstractC0411e.a c(String str) {
            if (str == null) {
                throw new NullPointerException("Null parameterValue");
            }
            this.f30868c = str;
            return this;
        }

        @Override
        public CrashlyticsReport.e.d.AbstractC0411e.a d(CrashlyticsReport.e.d.AbstractC0411e.b bVar) {
            if (bVar == null) {
                throw new NullPointerException("Null rolloutVariant");
            }
            this.f30866a = bVar;
            return this;
        }

        @Override
        public CrashlyticsReport.e.d.AbstractC0411e.a e(long j10) {
            this.f30869d = j10;
            this.f30870e = (byte) (this.f30870e | 1);
            return this;
        }
    }

    @Override
    public String b() {
        return this.f30863b;
    }

    @Override
    public String c() {
        return this.f30864c;
    }

    @Override
    public CrashlyticsReport.e.d.AbstractC0411e.b d() {
        return this.f30862a;
    }

    @Override
    public long e() {
        return this.f30865d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.e.d.AbstractC0411e)) {
            return false;
        }
        CrashlyticsReport.e.d.AbstractC0411e abstractC0411e = (CrashlyticsReport.e.d.AbstractC0411e) obj;
        return this.f30862a.equals(abstractC0411e.d()) && this.f30863b.equals(abstractC0411e.b()) && this.f30864c.equals(abstractC0411e.c()) && this.f30865d == abstractC0411e.e();
    }

    public int hashCode() {
        int iHashCode = (((((this.f30862a.hashCode() ^ 1000003) * 1000003) ^ this.f30863b.hashCode()) * 1000003) ^ this.f30864c.hashCode()) * 1000003;
        long j10 = this.f30865d;
        return iHashCode ^ ((int) (j10 ^ (j10 >>> 32)));
    }

    public String toString() {
        return "RolloutAssignment{rolloutVariant=" + this.f30862a + ", parameterKey=" + this.f30863b + ", parameterValue=" + this.f30864c + ", templateVersion=" + this.f30865d + "}";
    }

    private w(CrashlyticsReport.e.d.AbstractC0411e.b bVar, String str, String str2, long j10) {
        this.f30862a = bVar;
        this.f30863b = str;
        this.f30864c = str2;
        this.f30865d = j10;
    }
}
