package com.google.firebase.crashlytics.internal.model;

import java.util.List;

final class n extends CrashlyticsReport.e.d.a.b {

    private final List f30783a;

    private final CrashlyticsReport.e.d.a.b.c f30784b;

    private final CrashlyticsReport.a f30785c;

    private final CrashlyticsReport.e.d.a.b.AbstractC0403d f30786d;

    private final List f30787e;

    static final class b extends CrashlyticsReport.e.d.a.b.AbstractC0401b {

        private List f30788a;

        private CrashlyticsReport.e.d.a.b.c f30789b;

        private CrashlyticsReport.a f30790c;

        private CrashlyticsReport.e.d.a.b.AbstractC0403d f30791d;

        private List f30792e;

        b() {
        }

        @Override
        public CrashlyticsReport.e.d.a.b a() {
            List list;
            CrashlyticsReport.e.d.a.b.AbstractC0403d abstractC0403d = this.f30791d;
            if (abstractC0403d != null && (list = this.f30792e) != null) {
                return new n(this.f30788a, this.f30789b, this.f30790c, abstractC0403d, list);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f30791d == null) {
                sb2.append(" signal");
            }
            if (this.f30792e == null) {
                sb2.append(" binaries");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override
        public CrashlyticsReport.e.d.a.b.AbstractC0401b b(CrashlyticsReport.a aVar) {
            this.f30790c = aVar;
            return this;
        }

        @Override
        public CrashlyticsReport.e.d.a.b.AbstractC0401b c(List list) {
            if (list == null) {
                throw new NullPointerException("Null binaries");
            }
            this.f30792e = list;
            return this;
        }

        @Override
        public CrashlyticsReport.e.d.a.b.AbstractC0401b d(CrashlyticsReport.e.d.a.b.c cVar) {
            this.f30789b = cVar;
            return this;
        }

        @Override
        public CrashlyticsReport.e.d.a.b.AbstractC0401b e(CrashlyticsReport.e.d.a.b.AbstractC0403d abstractC0403d) {
            if (abstractC0403d == null) {
                throw new NullPointerException("Null signal");
            }
            this.f30791d = abstractC0403d;
            return this;
        }

        @Override
        public CrashlyticsReport.e.d.a.b.AbstractC0401b f(List list) {
            this.f30788a = list;
            return this;
        }
    }

    @Override
    public CrashlyticsReport.a b() {
        return this.f30785c;
    }

    @Override
    public List c() {
        return this.f30787e;
    }

    @Override
    public CrashlyticsReport.e.d.a.b.c d() {
        return this.f30784b;
    }

    @Override
    public CrashlyticsReport.e.d.a.b.AbstractC0403d e() {
        return this.f30786d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.e.d.a.b)) {
            return false;
        }
        CrashlyticsReport.e.d.a.b bVar = (CrashlyticsReport.e.d.a.b) obj;
        List list = this.f30783a;
        if (list != null ? list.equals(bVar.f()) : bVar.f() == null) {
            CrashlyticsReport.e.d.a.b.c cVar = this.f30784b;
            if (cVar != null ? cVar.equals(bVar.d()) : bVar.d() == null) {
                CrashlyticsReport.a aVar = this.f30785c;
                if (aVar != null ? aVar.equals(bVar.b()) : bVar.b() == null) {
                    if (this.f30786d.equals(bVar.e()) && this.f30787e.equals(bVar.c())) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override
    public List f() {
        return this.f30783a;
    }

    public int hashCode() {
        List list = this.f30783a;
        int iHashCode = ((list == null ? 0 : list.hashCode()) ^ 1000003) * 1000003;
        CrashlyticsReport.e.d.a.b.c cVar = this.f30784b;
        int iHashCode2 = (iHashCode ^ (cVar == null ? 0 : cVar.hashCode())) * 1000003;
        CrashlyticsReport.a aVar = this.f30785c;
        return ((((iHashCode2 ^ (aVar != null ? aVar.hashCode() : 0)) * 1000003) ^ this.f30786d.hashCode()) * 1000003) ^ this.f30787e.hashCode();
    }

    public String toString() {
        return "Execution{threads=" + this.f30783a + ", exception=" + this.f30784b + ", appExitInfo=" + this.f30785c + ", signal=" + this.f30786d + ", binaries=" + this.f30787e + "}";
    }

    private n(List list, CrashlyticsReport.e.d.a.b.c cVar, CrashlyticsReport.a aVar, CrashlyticsReport.e.d.a.b.AbstractC0403d abstractC0403d, List list2) {
        this.f30783a = list;
        this.f30784b = cVar;
        this.f30785c = aVar;
        this.f30786d = abstractC0403d;
        this.f30787e = list2;
    }
}
