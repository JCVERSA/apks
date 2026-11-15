package com.google.firebase.crashlytics.internal.model;

final class x extends CrashlyticsReport.e.d.AbstractC0411e.b {

    private final String f30871a;

    private final String f30872b;

    static final class b extends CrashlyticsReport.e.d.AbstractC0411e.b.a {

        private String f30873a;

        private String f30874b;

        b() {
        }

        @Override
        public CrashlyticsReport.e.d.AbstractC0411e.b a() {
            String str;
            String str2 = this.f30873a;
            if (str2 != null && (str = this.f30874b) != null) {
                return new x(str2, str);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f30873a == null) {
                sb2.append(" rolloutId");
            }
            if (this.f30874b == null) {
                sb2.append(" variantId");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override
        public CrashlyticsReport.e.d.AbstractC0411e.b.a b(String str) {
            if (str == null) {
                throw new NullPointerException("Null rolloutId");
            }
            this.f30873a = str;
            return this;
        }

        @Override
        public CrashlyticsReport.e.d.AbstractC0411e.b.a c(String str) {
            if (str == null) {
                throw new NullPointerException("Null variantId");
            }
            this.f30874b = str;
            return this;
        }
    }

    @Override
    public String b() {
        return this.f30871a;
    }

    @Override
    public String c() {
        return this.f30872b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.e.d.AbstractC0411e.b)) {
            return false;
        }
        CrashlyticsReport.e.d.AbstractC0411e.b bVar = (CrashlyticsReport.e.d.AbstractC0411e.b) obj;
        return this.f30871a.equals(bVar.b()) && this.f30872b.equals(bVar.c());
    }

    public int hashCode() {
        return ((this.f30871a.hashCode() ^ 1000003) * 1000003) ^ this.f30872b.hashCode();
    }

    public String toString() {
        return "RolloutVariant{rolloutId=" + this.f30871a + ", variantId=" + this.f30872b + "}";
    }

    private x(String str, String str2) {
        this.f30871a = str;
        this.f30872b = str2;
    }
}
