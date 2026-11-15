package com.google.firebase.crashlytics.internal.model;

final class l extends CrashlyticsReport.e.d {

    private final long f30755a;

    private final String f30756b;

    private final CrashlyticsReport.e.d.a f30757c;

    private final CrashlyticsReport.e.d.c f30758d;

    private final CrashlyticsReport.e.d.AbstractC0410d f30759e;

    private final CrashlyticsReport.e.d.f f30760f;

    static final class b extends CrashlyticsReport.e.d.b {

        private long f30761a;

        private String f30762b;

        private CrashlyticsReport.e.d.a f30763c;

        private CrashlyticsReport.e.d.c f30764d;

        private CrashlyticsReport.e.d.AbstractC0410d f30765e;

        private CrashlyticsReport.e.d.f f30766f;

        private byte f30767g;

        @Override
        public CrashlyticsReport.e.d a() {
            String str;
            CrashlyticsReport.e.d.a aVar;
            CrashlyticsReport.e.d.c cVar;
            if (this.f30767g == 1 && (str = this.f30762b) != null && (aVar = this.f30763c) != null && (cVar = this.f30764d) != null) {
                return new l(this.f30761a, str, aVar, cVar, this.f30765e, this.f30766f);
            }
            StringBuilder sb2 = new StringBuilder();
            if ((1 & this.f30767g) == 0) {
                sb2.append(" timestamp");
            }
            if (this.f30762b == null) {
                sb2.append(" type");
            }
            if (this.f30763c == null) {
                sb2.append(" app");
            }
            if (this.f30764d == null) {
                sb2.append(" device");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override
        public CrashlyticsReport.e.d.b b(CrashlyticsReport.e.d.a aVar) {
            if (aVar == null) {
                throw new NullPointerException("Null app");
            }
            this.f30763c = aVar;
            return this;
        }

        @Override
        public CrashlyticsReport.e.d.b c(CrashlyticsReport.e.d.c cVar) {
            if (cVar == null) {
                throw new NullPointerException("Null device");
            }
            this.f30764d = cVar;
            return this;
        }

        @Override
        public CrashlyticsReport.e.d.b d(CrashlyticsReport.e.d.AbstractC0410d abstractC0410d) {
            this.f30765e = abstractC0410d;
            return this;
        }

        @Override
        public CrashlyticsReport.e.d.b e(CrashlyticsReport.e.d.f fVar) {
            this.f30766f = fVar;
            return this;
        }

        @Override
        public CrashlyticsReport.e.d.b f(long j10) {
            this.f30761a = j10;
            this.f30767g = (byte) (this.f30767g | 1);
            return this;
        }

        @Override
        public CrashlyticsReport.e.d.b g(String str) {
            if (str == null) {
                throw new NullPointerException("Null type");
            }
            this.f30762b = str;
            return this;
        }

        b() {
        }

        private b(CrashlyticsReport.e.d dVar) {
            this.f30761a = dVar.f();
            this.f30762b = dVar.g();
            this.f30763c = dVar.b();
            this.f30764d = dVar.c();
            this.f30765e = dVar.d();
            this.f30766f = dVar.e();
            this.f30767g = (byte) 1;
        }
    }

    @Override
    public CrashlyticsReport.e.d.a b() {
        return this.f30757c;
    }

    @Override
    public CrashlyticsReport.e.d.c c() {
        return this.f30758d;
    }

    @Override
    public CrashlyticsReport.e.d.AbstractC0410d d() {
        return this.f30759e;
    }

    @Override
    public CrashlyticsReport.e.d.f e() {
        return this.f30760f;
    }

    public boolean equals(Object obj) {
        CrashlyticsReport.e.d.AbstractC0410d abstractC0410d;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.e.d)) {
            return false;
        }
        CrashlyticsReport.e.d dVar = (CrashlyticsReport.e.d) obj;
        if (this.f30755a == dVar.f() && this.f30756b.equals(dVar.g()) && this.f30757c.equals(dVar.b()) && this.f30758d.equals(dVar.c()) && ((abstractC0410d = this.f30759e) != null ? abstractC0410d.equals(dVar.d()) : dVar.d() == null)) {
            CrashlyticsReport.e.d.f fVar = this.f30760f;
            if (fVar == null) {
                if (dVar.e() == null) {
                    return true;
                }
            } else if (fVar.equals(dVar.e())) {
                return true;
            }
        }
        return false;
    }

    @Override
    public long f() {
        return this.f30755a;
    }

    @Override
    public String g() {
        return this.f30756b;
    }

    @Override
    public CrashlyticsReport.e.d.b h() {
        return new b(this);
    }

    public int hashCode() {
        long j10 = this.f30755a;
        int iHashCode = (((((((((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003) ^ this.f30756b.hashCode()) * 1000003) ^ this.f30757c.hashCode()) * 1000003) ^ this.f30758d.hashCode()) * 1000003;
        CrashlyticsReport.e.d.AbstractC0410d abstractC0410d = this.f30759e;
        int iHashCode2 = (iHashCode ^ (abstractC0410d == null ? 0 : abstractC0410d.hashCode())) * 1000003;
        CrashlyticsReport.e.d.f fVar = this.f30760f;
        return iHashCode2 ^ (fVar != null ? fVar.hashCode() : 0);
    }

    public String toString() {
        return "Event{timestamp=" + this.f30755a + ", type=" + this.f30756b + ", app=" + this.f30757c + ", device=" + this.f30758d + ", log=" + this.f30759e + ", rollouts=" + this.f30760f + "}";
    }

    private l(long j10, String str, CrashlyticsReport.e.d.a aVar, CrashlyticsReport.e.d.c cVar, CrashlyticsReport.e.d.AbstractC0410d abstractC0410d, CrashlyticsReport.e.d.f fVar) {
        this.f30755a = j10;
        this.f30756b = str;
        this.f30757c = aVar;
        this.f30758d = cVar;
        this.f30759e = abstractC0410d;
        this.f30760f = fVar;
    }
}
