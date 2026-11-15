package com.google.firebase.crashlytics.internal.model;

final class a0 extends CrashlyticsReport.e.f {

    private final String f30633a;

    static final class b extends CrashlyticsReport.e.f.a {

        private String f30634a;

        b() {
        }

        @Override
        public CrashlyticsReport.e.f a() {
            String str = this.f30634a;
            if (str != null) {
                return new a0(str);
            }
            throw new IllegalStateException("Missing required properties: identifier");
        }

        @Override
        public CrashlyticsReport.e.f.a b(String str) {
            if (str == null) {
                throw new NullPointerException("Null identifier");
            }
            this.f30634a = str;
            return this;
        }
    }

    @Override
    public String b() {
        return this.f30633a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof CrashlyticsReport.e.f) {
            return this.f30633a.equals(((CrashlyticsReport.e.f) obj).b());
        }
        return false;
    }

    public int hashCode() {
        return this.f30633a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "User{identifier=" + this.f30633a + "}";
    }

    private a0(String str) {
        this.f30633a = str;
    }
}
