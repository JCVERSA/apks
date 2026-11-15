package com.google.firebase.crashlytics.internal.model;

final class t extends CrashlyticsReport.e.d.a.c {

    private final String f30838a;

    private final int f30839b;

    private final int f30840c;

    private final boolean f30841d;

    static final class b extends CrashlyticsReport.e.d.a.c.AbstractC0409a {

        private String f30842a;

        private int f30843b;

        private int f30844c;

        private boolean f30845d;

        private byte f30846e;

        b() {
        }

        @Override
        public CrashlyticsReport.e.d.a.c a() {
            String str;
            if (this.f30846e == 7 && (str = this.f30842a) != null) {
                return new t(str, this.f30843b, this.f30844c, this.f30845d);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f30842a == null) {
                sb2.append(" processName");
            }
            if ((this.f30846e & 1) == 0) {
                sb2.append(" pid");
            }
            if ((this.f30846e & 2) == 0) {
                sb2.append(" importance");
            }
            if ((this.f30846e & 4) == 0) {
                sb2.append(" defaultProcess");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override
        public CrashlyticsReport.e.d.a.c.AbstractC0409a b(boolean z10) {
            this.f30845d = z10;
            this.f30846e = (byte) (this.f30846e | 4);
            return this;
        }

        @Override
        public CrashlyticsReport.e.d.a.c.AbstractC0409a c(int i10) {
            this.f30844c = i10;
            this.f30846e = (byte) (this.f30846e | 2);
            return this;
        }

        @Override
        public CrashlyticsReport.e.d.a.c.AbstractC0409a d(int i10) {
            this.f30843b = i10;
            this.f30846e = (byte) (this.f30846e | 1);
            return this;
        }

        @Override
        public CrashlyticsReport.e.d.a.c.AbstractC0409a e(String str) {
            if (str == null) {
                throw new NullPointerException("Null processName");
            }
            this.f30842a = str;
            return this;
        }
    }

    @Override
    public int b() {
        return this.f30840c;
    }

    @Override
    public int c() {
        return this.f30839b;
    }

    @Override
    public String d() {
        return this.f30838a;
    }

    @Override
    public boolean e() {
        return this.f30841d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.e.d.a.c)) {
            return false;
        }
        CrashlyticsReport.e.d.a.c cVar = (CrashlyticsReport.e.d.a.c) obj;
        return this.f30838a.equals(cVar.d()) && this.f30839b == cVar.c() && this.f30840c == cVar.b() && this.f30841d == cVar.e();
    }

    public int hashCode() {
        return ((((((this.f30838a.hashCode() ^ 1000003) * 1000003) ^ this.f30839b) * 1000003) ^ this.f30840c) * 1000003) ^ (this.f30841d ? 1231 : 1237);
    }

    public String toString() {
        return "ProcessDetails{processName=" + this.f30838a + ", pid=" + this.f30839b + ", importance=" + this.f30840c + ", defaultProcess=" + this.f30841d + "}";
    }

    private t(String str, int i10, int i11, boolean z10) {
        this.f30838a = str;
        this.f30839b = i10;
        this.f30840c = i11;
        this.f30841d = z10;
    }
}
