package com.google.firebase.crashlytics.internal.model;

final class z extends CrashlyticsReport.e.AbstractC0412e {

    private final int f30877a;

    private final String f30878b;

    private final String f30879c;

    private final boolean f30880d;

    static final class b extends CrashlyticsReport.e.AbstractC0412e.a {

        private int f30881a;

        private String f30882b;

        private String f30883c;

        private boolean f30884d;

        private byte f30885e;

        b() {
        }

        @Override
        public CrashlyticsReport.e.AbstractC0412e a() {
            String str;
            String str2;
            if (this.f30885e == 3 && (str = this.f30882b) != null && (str2 = this.f30883c) != null) {
                return new z(this.f30881a, str, str2, this.f30884d);
            }
            StringBuilder sb2 = new StringBuilder();
            if ((this.f30885e & 1) == 0) {
                sb2.append(" platform");
            }
            if (this.f30882b == null) {
                sb2.append(" version");
            }
            if (this.f30883c == null) {
                sb2.append(" buildVersion");
            }
            if ((this.f30885e & 2) == 0) {
                sb2.append(" jailbroken");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override
        public CrashlyticsReport.e.AbstractC0412e.a b(String str) {
            if (str == null) {
                throw new NullPointerException("Null buildVersion");
            }
            this.f30883c = str;
            return this;
        }

        @Override
        public CrashlyticsReport.e.AbstractC0412e.a c(boolean z10) {
            this.f30884d = z10;
            this.f30885e = (byte) (this.f30885e | 2);
            return this;
        }

        @Override
        public CrashlyticsReport.e.AbstractC0412e.a d(int i10) {
            this.f30881a = i10;
            this.f30885e = (byte) (this.f30885e | 1);
            return this;
        }

        @Override
        public CrashlyticsReport.e.AbstractC0412e.a e(String str) {
            if (str == null) {
                throw new NullPointerException("Null version");
            }
            this.f30882b = str;
            return this;
        }
    }

    @Override
    public String b() {
        return this.f30879c;
    }

    @Override
    public int c() {
        return this.f30877a;
    }

    @Override
    public String d() {
        return this.f30878b;
    }

    @Override
    public boolean e() {
        return this.f30880d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.e.AbstractC0412e)) {
            return false;
        }
        CrashlyticsReport.e.AbstractC0412e abstractC0412e = (CrashlyticsReport.e.AbstractC0412e) obj;
        return this.f30877a == abstractC0412e.c() && this.f30878b.equals(abstractC0412e.d()) && this.f30879c.equals(abstractC0412e.b()) && this.f30880d == abstractC0412e.e();
    }

    public int hashCode() {
        return ((((((this.f30877a ^ 1000003) * 1000003) ^ this.f30878b.hashCode()) * 1000003) ^ this.f30879c.hashCode()) * 1000003) ^ (this.f30880d ? 1231 : 1237);
    }

    public String toString() {
        return "OperatingSystem{platform=" + this.f30877a + ", version=" + this.f30878b + ", buildVersion=" + this.f30879c + ", jailbroken=" + this.f30880d + "}";
    }

    private z(int i10, String str, String str2, boolean z10) {
        this.f30877a = i10;
        this.f30878b = str;
        this.f30879c = str2;
        this.f30880d = z10;
    }
}
