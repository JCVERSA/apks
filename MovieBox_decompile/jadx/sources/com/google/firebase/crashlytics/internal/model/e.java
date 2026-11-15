package com.google.firebase.crashlytics.internal.model;

final class e extends CrashlyticsReport.c {

    private final String f30685a;

    private final String f30686b;

    static final class b extends CrashlyticsReport.c.a {

        private String f30687a;

        private String f30688b;

        b() {
        }

        @Override
        public CrashlyticsReport.c a() {
            String str;
            String str2 = this.f30687a;
            if (str2 != null && (str = this.f30688b) != null) {
                return new e(str2, str);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f30687a == null) {
                sb2.append(" key");
            }
            if (this.f30688b == null) {
                sb2.append(" value");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override
        public CrashlyticsReport.c.a b(String str) {
            if (str == null) {
                throw new NullPointerException("Null key");
            }
            this.f30687a = str;
            return this;
        }

        @Override
        public CrashlyticsReport.c.a c(String str) {
            if (str == null) {
                throw new NullPointerException("Null value");
            }
            this.f30688b = str;
            return this;
        }
    }

    @Override
    public String b() {
        return this.f30685a;
    }

    @Override
    public String c() {
        return this.f30686b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.c)) {
            return false;
        }
        CrashlyticsReport.c cVar = (CrashlyticsReport.c) obj;
        return this.f30685a.equals(cVar.b()) && this.f30686b.equals(cVar.c());
    }

    public int hashCode() {
        return ((this.f30685a.hashCode() ^ 1000003) * 1000003) ^ this.f30686b.hashCode();
    }

    public String toString() {
        return "CustomAttribute{key=" + this.f30685a + ", value=" + this.f30686b + "}";
    }

    private e(String str, String str2) {
        this.f30685a = str;
        this.f30686b = str2;
    }
}
