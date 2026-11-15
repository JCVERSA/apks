package com.google.firebase.crashlytics.internal.model;

import java.util.List;

final class p extends CrashlyticsReport.e.d.a.b.c {

    private final String f30802a;

    private final String f30803b;

    private final List f30804c;

    private final CrashlyticsReport.e.d.a.b.c f30805d;

    private final int f30806e;

    static final class b extends CrashlyticsReport.e.d.a.b.c.AbstractC0402a {

        private String f30807a;

        private String f30808b;

        private List f30809c;

        private CrashlyticsReport.e.d.a.b.c f30810d;

        private int f30811e;

        private byte f30812f;

        b() {
        }

        @Override
        public CrashlyticsReport.e.d.a.b.c a() {
            String str;
            List list;
            if (this.f30812f == 1 && (str = this.f30807a) != null && (list = this.f30809c) != null) {
                return new p(str, this.f30808b, list, this.f30810d, this.f30811e);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f30807a == null) {
                sb2.append(" type");
            }
            if (this.f30809c == null) {
                sb2.append(" frames");
            }
            if ((1 & this.f30812f) == 0) {
                sb2.append(" overflowCount");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override
        public CrashlyticsReport.e.d.a.b.c.AbstractC0402a b(CrashlyticsReport.e.d.a.b.c cVar) {
            this.f30810d = cVar;
            return this;
        }

        @Override
        public CrashlyticsReport.e.d.a.b.c.AbstractC0402a c(List list) {
            if (list == null) {
                throw new NullPointerException("Null frames");
            }
            this.f30809c = list;
            return this;
        }

        @Override
        public CrashlyticsReport.e.d.a.b.c.AbstractC0402a d(int i10) {
            this.f30811e = i10;
            this.f30812f = (byte) (this.f30812f | 1);
            return this;
        }

        @Override
        public CrashlyticsReport.e.d.a.b.c.AbstractC0402a e(String str) {
            this.f30808b = str;
            return this;
        }

        @Override
        public CrashlyticsReport.e.d.a.b.c.AbstractC0402a f(String str) {
            if (str == null) {
                throw new NullPointerException("Null type");
            }
            this.f30807a = str;
            return this;
        }
    }

    @Override
    public CrashlyticsReport.e.d.a.b.c b() {
        return this.f30805d;
    }

    @Override
    public List c() {
        return this.f30804c;
    }

    @Override
    public int d() {
        return this.f30806e;
    }

    @Override
    public String e() {
        return this.f30803b;
    }

    public boolean equals(Object obj) {
        String str;
        CrashlyticsReport.e.d.a.b.c cVar;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.e.d.a.b.c)) {
            return false;
        }
        CrashlyticsReport.e.d.a.b.c cVar2 = (CrashlyticsReport.e.d.a.b.c) obj;
        return this.f30802a.equals(cVar2.f()) && ((str = this.f30803b) != null ? str.equals(cVar2.e()) : cVar2.e() == null) && this.f30804c.equals(cVar2.c()) && ((cVar = this.f30805d) != null ? cVar.equals(cVar2.b()) : cVar2.b() == null) && this.f30806e == cVar2.d();
    }

    @Override
    public String f() {
        return this.f30802a;
    }

    public int hashCode() {
        int iHashCode = (this.f30802a.hashCode() ^ 1000003) * 1000003;
        String str = this.f30803b;
        int iHashCode2 = (((iHashCode ^ (str == null ? 0 : str.hashCode())) * 1000003) ^ this.f30804c.hashCode()) * 1000003;
        CrashlyticsReport.e.d.a.b.c cVar = this.f30805d;
        return ((iHashCode2 ^ (cVar != null ? cVar.hashCode() : 0)) * 1000003) ^ this.f30806e;
    }

    public String toString() {
        return "Exception{type=" + this.f30802a + ", reason=" + this.f30803b + ", frames=" + this.f30804c + ", causedBy=" + this.f30805d + ", overflowCount=" + this.f30806e + "}";
    }

    private p(String str, String str2, List list, CrashlyticsReport.e.d.a.b.c cVar, int i10) {
        this.f30802a = str;
        this.f30803b = str2;
        this.f30804c = list;
        this.f30805d = cVar;
        this.f30806e = i10;
    }
}
