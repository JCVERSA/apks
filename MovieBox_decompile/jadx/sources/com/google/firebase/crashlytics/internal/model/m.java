package com.google.firebase.crashlytics.internal.model;

import java.util.List;

final class m extends CrashlyticsReport.e.d.a {

    private final CrashlyticsReport.e.d.a.b f30768a;

    private final List f30769b;

    private final List f30770c;

    private final Boolean f30771d;

    private final CrashlyticsReport.e.d.a.c f30772e;

    private final List f30773f;

    private final int f30774g;

    static final class b extends CrashlyticsReport.e.d.a.AbstractC0398a {

        private CrashlyticsReport.e.d.a.b f30775a;

        private List f30776b;

        private List f30777c;

        private Boolean f30778d;

        private CrashlyticsReport.e.d.a.c f30779e;

        private List f30780f;

        private int f30781g;

        private byte f30782h;

        @Override
        public CrashlyticsReport.e.d.a a() {
            CrashlyticsReport.e.d.a.b bVar;
            if (this.f30782h == 1 && (bVar = this.f30775a) != null) {
                return new m(bVar, this.f30776b, this.f30777c, this.f30778d, this.f30779e, this.f30780f, this.f30781g);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f30775a == null) {
                sb2.append(" execution");
            }
            if ((1 & this.f30782h) == 0) {
                sb2.append(" uiOrientation");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override
        public CrashlyticsReport.e.d.a.AbstractC0398a b(List list) {
            this.f30780f = list;
            return this;
        }

        @Override
        public CrashlyticsReport.e.d.a.AbstractC0398a c(Boolean bool) {
            this.f30778d = bool;
            return this;
        }

        @Override
        public CrashlyticsReport.e.d.a.AbstractC0398a d(CrashlyticsReport.e.d.a.c cVar) {
            this.f30779e = cVar;
            return this;
        }

        @Override
        public CrashlyticsReport.e.d.a.AbstractC0398a e(List list) {
            this.f30776b = list;
            return this;
        }

        @Override
        public CrashlyticsReport.e.d.a.AbstractC0398a f(CrashlyticsReport.e.d.a.b bVar) {
            if (bVar == null) {
                throw new NullPointerException("Null execution");
            }
            this.f30775a = bVar;
            return this;
        }

        @Override
        public CrashlyticsReport.e.d.a.AbstractC0398a g(List list) {
            this.f30777c = list;
            return this;
        }

        @Override
        public CrashlyticsReport.e.d.a.AbstractC0398a h(int i10) {
            this.f30781g = i10;
            this.f30782h = (byte) (this.f30782h | 1);
            return this;
        }

        b() {
        }

        private b(CrashlyticsReport.e.d.a aVar) {
            this.f30775a = aVar.f();
            this.f30776b = aVar.e();
            this.f30777c = aVar.g();
            this.f30778d = aVar.c();
            this.f30779e = aVar.d();
            this.f30780f = aVar.b();
            this.f30781g = aVar.h();
            this.f30782h = (byte) 1;
        }
    }

    @Override
    public List b() {
        return this.f30773f;
    }

    @Override
    public Boolean c() {
        return this.f30771d;
    }

    @Override
    public CrashlyticsReport.e.d.a.c d() {
        return this.f30772e;
    }

    @Override
    public List e() {
        return this.f30769b;
    }

    public boolean equals(Object obj) {
        List list;
        List list2;
        Boolean bool;
        CrashlyticsReport.e.d.a.c cVar;
        List list3;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.e.d.a)) {
            return false;
        }
        CrashlyticsReport.e.d.a aVar = (CrashlyticsReport.e.d.a) obj;
        return this.f30768a.equals(aVar.f()) && ((list = this.f30769b) != null ? list.equals(aVar.e()) : aVar.e() == null) && ((list2 = this.f30770c) != null ? list2.equals(aVar.g()) : aVar.g() == null) && ((bool = this.f30771d) != null ? bool.equals(aVar.c()) : aVar.c() == null) && ((cVar = this.f30772e) != null ? cVar.equals(aVar.d()) : aVar.d() == null) && ((list3 = this.f30773f) != null ? list3.equals(aVar.b()) : aVar.b() == null) && this.f30774g == aVar.h();
    }

    @Override
    public CrashlyticsReport.e.d.a.b f() {
        return this.f30768a;
    }

    @Override
    public List g() {
        return this.f30770c;
    }

    @Override
    public int h() {
        return this.f30774g;
    }

    public int hashCode() {
        int iHashCode = (this.f30768a.hashCode() ^ 1000003) * 1000003;
        List list = this.f30769b;
        int iHashCode2 = (iHashCode ^ (list == null ? 0 : list.hashCode())) * 1000003;
        List list2 = this.f30770c;
        int iHashCode3 = (iHashCode2 ^ (list2 == null ? 0 : list2.hashCode())) * 1000003;
        Boolean bool = this.f30771d;
        int iHashCode4 = (iHashCode3 ^ (bool == null ? 0 : bool.hashCode())) * 1000003;
        CrashlyticsReport.e.d.a.c cVar = this.f30772e;
        int iHashCode5 = (iHashCode4 ^ (cVar == null ? 0 : cVar.hashCode())) * 1000003;
        List list3 = this.f30773f;
        return ((iHashCode5 ^ (list3 != null ? list3.hashCode() : 0)) * 1000003) ^ this.f30774g;
    }

    @Override
    public CrashlyticsReport.e.d.a.AbstractC0398a i() {
        return new b(this);
    }

    public String toString() {
        return "Application{execution=" + this.f30768a + ", customAttributes=" + this.f30769b + ", internalKeys=" + this.f30770c + ", background=" + this.f30771d + ", currentProcessDetails=" + this.f30772e + ", appProcessDetails=" + this.f30773f + ", uiOrientation=" + this.f30774g + "}";
    }

    private m(CrashlyticsReport.e.d.a.b bVar, List list, List list2, Boolean bool, CrashlyticsReport.e.d.a.c cVar, List list3, int i10) {
        this.f30768a = bVar;
        this.f30769b = list;
        this.f30770c = list2;
        this.f30771d = bool;
        this.f30772e = cVar;
        this.f30773f = list3;
        this.f30774g = i10;
    }
}
