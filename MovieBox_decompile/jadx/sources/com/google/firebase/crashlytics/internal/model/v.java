package com.google.firebase.crashlytics.internal.model;

final class v extends CrashlyticsReport.e.d.AbstractC0410d {

    private final String f30860a;

    static final class b extends CrashlyticsReport.e.d.AbstractC0410d.a {

        private String f30861a;

        b() {
        }

        @Override
        public CrashlyticsReport.e.d.AbstractC0410d a() {
            String str = this.f30861a;
            if (str != null) {
                return new v(str);
            }
            throw new IllegalStateException("Missing required properties: content");
        }

        @Override
        public CrashlyticsReport.e.d.AbstractC0410d.a b(String str) {
            if (str == null) {
                throw new NullPointerException("Null content");
            }
            this.f30861a = str;
            return this;
        }
    }

    @Override
    public String b() {
        return this.f30860a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof CrashlyticsReport.e.d.AbstractC0410d) {
            return this.f30860a.equals(((CrashlyticsReport.e.d.AbstractC0410d) obj).b());
        }
        return false;
    }

    public int hashCode() {
        return this.f30860a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "Log{content=" + this.f30860a + "}";
    }

    private v(String str) {
        this.f30860a = str;
    }
}
