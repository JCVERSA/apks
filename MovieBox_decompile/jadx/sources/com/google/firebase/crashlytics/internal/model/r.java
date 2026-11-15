package com.google.firebase.crashlytics.internal.model;

import java.util.List;

final class r extends CrashlyticsReport.e.d.a.b.AbstractC0405e {

    private final String f30820a;

    private final int f30821b;

    private final List f30822c;

    static final class b extends CrashlyticsReport.e.d.a.b.AbstractC0405e.AbstractC0406a {

        private String f30823a;

        private int f30824b;

        private List f30825c;

        private byte f30826d;

        b() {
        }

        @Override
        public CrashlyticsReport.e.d.a.b.AbstractC0405e a() {
            String str;
            List list;
            if (this.f30826d == 1 && (str = this.f30823a) != null && (list = this.f30825c) != null) {
                return new r(str, this.f30824b, list);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f30823a == null) {
                sb2.append(" name");
            }
            if ((1 & this.f30826d) == 0) {
                sb2.append(" importance");
            }
            if (this.f30825c == null) {
                sb2.append(" frames");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override
        public CrashlyticsReport.e.d.a.b.AbstractC0405e.AbstractC0406a b(List list) {
            if (list == null) {
                throw new NullPointerException("Null frames");
            }
            this.f30825c = list;
            return this;
        }

        @Override
        public CrashlyticsReport.e.d.a.b.AbstractC0405e.AbstractC0406a c(int i10) {
            this.f30824b = i10;
            this.f30826d = (byte) (this.f30826d | 1);
            return this;
        }

        @Override
        public CrashlyticsReport.e.d.a.b.AbstractC0405e.AbstractC0406a d(String str) {
            if (str == null) {
                throw new NullPointerException("Null name");
            }
            this.f30823a = str;
            return this;
        }
    }

    @Override
    public List b() {
        return this.f30822c;
    }

    @Override
    public int c() {
        return this.f30821b;
    }

    @Override
    public String d() {
        return this.f30820a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.e.d.a.b.AbstractC0405e)) {
            return false;
        }
        CrashlyticsReport.e.d.a.b.AbstractC0405e abstractC0405e = (CrashlyticsReport.e.d.a.b.AbstractC0405e) obj;
        return this.f30820a.equals(abstractC0405e.d()) && this.f30821b == abstractC0405e.c() && this.f30822c.equals(abstractC0405e.b());
    }

    public int hashCode() {
        return ((((this.f30820a.hashCode() ^ 1000003) * 1000003) ^ this.f30821b) * 1000003) ^ this.f30822c.hashCode();
    }

    public String toString() {
        return "Thread{name=" + this.f30820a + ", importance=" + this.f30821b + ", frames=" + this.f30822c + "}";
    }

    private r(String str, int i10, List list) {
        this.f30820a = str;
        this.f30821b = i10;
        this.f30822c = list;
    }
}
