package com.google.firebase.crashlytics.internal.model;

final class d extends CrashlyticsReport.a.AbstractC0395a {

    private final String f30679a;

    private final String f30680b;

    private final String f30681c;

    static final class b extends CrashlyticsReport.a.AbstractC0395a.AbstractC0396a {

        private String f30682a;

        private String f30683b;

        private String f30684c;

        b() {
        }

        @Override
        public CrashlyticsReport.a.AbstractC0395a a() {
            String str;
            String str2;
            String str3 = this.f30682a;
            if (str3 != null && (str = this.f30683b) != null && (str2 = this.f30684c) != null) {
                return new d(str3, str, str2);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f30682a == null) {
                sb2.append(" arch");
            }
            if (this.f30683b == null) {
                sb2.append(" libraryName");
            }
            if (this.f30684c == null) {
                sb2.append(" buildId");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override
        public CrashlyticsReport.a.AbstractC0395a.AbstractC0396a b(String str) {
            if (str == null) {
                throw new NullPointerException("Null arch");
            }
            this.f30682a = str;
            return this;
        }

        @Override
        public CrashlyticsReport.a.AbstractC0395a.AbstractC0396a c(String str) {
            if (str == null) {
                throw new NullPointerException("Null buildId");
            }
            this.f30684c = str;
            return this;
        }

        @Override
        public CrashlyticsReport.a.AbstractC0395a.AbstractC0396a d(String str) {
            if (str == null) {
                throw new NullPointerException("Null libraryName");
            }
            this.f30683b = str;
            return this;
        }
    }

    @Override
    public String b() {
        return this.f30679a;
    }

    @Override
    public String c() {
        return this.f30681c;
    }

    @Override
    public String d() {
        return this.f30680b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.a.AbstractC0395a)) {
            return false;
        }
        CrashlyticsReport.a.AbstractC0395a abstractC0395a = (CrashlyticsReport.a.AbstractC0395a) obj;
        return this.f30679a.equals(abstractC0395a.b()) && this.f30680b.equals(abstractC0395a.d()) && this.f30681c.equals(abstractC0395a.c());
    }

    public int hashCode() {
        return ((((this.f30679a.hashCode() ^ 1000003) * 1000003) ^ this.f30680b.hashCode()) * 1000003) ^ this.f30681c.hashCode();
    }

    public String toString() {
        return "BuildIdMappingForArch{arch=" + this.f30679a + ", libraryName=" + this.f30680b + ", buildId=" + this.f30681c + "}";
    }

    private d(String str, String str2, String str3) {
        this.f30679a = str;
        this.f30680b = str2;
        this.f30681c = str3;
    }
}
