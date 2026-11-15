package com.google.firebase.crashlytics.internal.model;

final class i extends CrashlyticsReport.e.a {

    private final String f30722a;

    private final String f30723b;

    private final String f30724c;

    private final CrashlyticsReport.e.a.b f30725d;

    private final String f30726e;

    private final String f30727f;

    private final String f30728g;

    static final class b extends CrashlyticsReport.e.a.AbstractC0397a {

        private String f30729a;

        private String f30730b;

        private String f30731c;

        private CrashlyticsReport.e.a.b f30732d;

        private String f30733e;

        private String f30734f;

        private String f30735g;

        b() {
        }

        @Override
        public CrashlyticsReport.e.a a() {
            String str;
            String str2 = this.f30729a;
            if (str2 != null && (str = this.f30730b) != null) {
                return new i(str2, str, this.f30731c, this.f30732d, this.f30733e, this.f30734f, this.f30735g);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f30729a == null) {
                sb2.append(" identifier");
            }
            if (this.f30730b == null) {
                sb2.append(" version");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override
        public CrashlyticsReport.e.a.AbstractC0397a b(String str) {
            this.f30734f = str;
            return this;
        }

        @Override
        public CrashlyticsReport.e.a.AbstractC0397a c(String str) {
            this.f30735g = str;
            return this;
        }

        @Override
        public CrashlyticsReport.e.a.AbstractC0397a d(String str) {
            this.f30731c = str;
            return this;
        }

        @Override
        public CrashlyticsReport.e.a.AbstractC0397a e(String str) {
            if (str == null) {
                throw new NullPointerException("Null identifier");
            }
            this.f30729a = str;
            return this;
        }

        @Override
        public CrashlyticsReport.e.a.AbstractC0397a f(String str) {
            this.f30733e = str;
            return this;
        }

        @Override
        public CrashlyticsReport.e.a.AbstractC0397a g(String str) {
            if (str == null) {
                throw new NullPointerException("Null version");
            }
            this.f30730b = str;
            return this;
        }
    }

    @Override
    public String b() {
        return this.f30727f;
    }

    @Override
    public String c() {
        return this.f30728g;
    }

    @Override
    public String d() {
        return this.f30724c;
    }

    @Override
    public String e() {
        return this.f30722a;
    }

    public boolean equals(Object obj) {
        String str;
        CrashlyticsReport.e.a.b bVar;
        String str2;
        String str3;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.e.a)) {
            return false;
        }
        CrashlyticsReport.e.a aVar = (CrashlyticsReport.e.a) obj;
        if (this.f30722a.equals(aVar.e()) && this.f30723b.equals(aVar.h()) && ((str = this.f30724c) != null ? str.equals(aVar.d()) : aVar.d() == null) && ((bVar = this.f30725d) != null ? bVar.equals(aVar.g()) : aVar.g() == null) && ((str2 = this.f30726e) != null ? str2.equals(aVar.f()) : aVar.f() == null) && ((str3 = this.f30727f) != null ? str3.equals(aVar.b()) : aVar.b() == null)) {
            String str4 = this.f30728g;
            if (str4 == null) {
                if (aVar.c() == null) {
                    return true;
                }
            } else if (str4.equals(aVar.c())) {
                return true;
            }
        }
        return false;
    }

    @Override
    public String f() {
        return this.f30726e;
    }

    @Override
    public CrashlyticsReport.e.a.b g() {
        return this.f30725d;
    }

    @Override
    public String h() {
        return this.f30723b;
    }

    public int hashCode() {
        int iHashCode = (((this.f30722a.hashCode() ^ 1000003) * 1000003) ^ this.f30723b.hashCode()) * 1000003;
        String str = this.f30724c;
        int iHashCode2 = (iHashCode ^ (str == null ? 0 : str.hashCode())) * 1000003;
        CrashlyticsReport.e.a.b bVar = this.f30725d;
        int iHashCode3 = (iHashCode2 ^ (bVar == null ? 0 : bVar.hashCode())) * 1000003;
        String str2 = this.f30726e;
        int iHashCode4 = (iHashCode3 ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f30727f;
        int iHashCode5 = (iHashCode4 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        String str4 = this.f30728g;
        return iHashCode5 ^ (str4 != null ? str4.hashCode() : 0);
    }

    public String toString() {
        return "Application{identifier=" + this.f30722a + ", version=" + this.f30723b + ", displayVersion=" + this.f30724c + ", organization=" + this.f30725d + ", installationUuid=" + this.f30726e + ", developmentPlatform=" + this.f30727f + ", developmentPlatformVersion=" + this.f30728g + "}";
    }

    private i(String str, String str2, String str3, CrashlyticsReport.e.a.b bVar, String str4, String str5, String str6) {
        this.f30722a = str;
        this.f30723b = str2;
        this.f30724c = str3;
        this.f30725d = bVar;
        this.f30726e = str4;
        this.f30727f = str5;
        this.f30728g = str6;
    }
}
