package com.google.firebase.crashlytics.internal.model;

import java.util.List;

final class h extends CrashlyticsReport.e {

    private final String f30697a;

    private final String f30698b;

    private final String f30699c;

    private final long f30700d;

    private final Long f30701e;

    private final boolean f30702f;

    private final CrashlyticsReport.e.a f30703g;

    private final CrashlyticsReport.e.f f30704h;

    private final CrashlyticsReport.e.AbstractC0412e f30705i;

    private final CrashlyticsReport.e.c f30706j;

    private final List f30707k;

    private final int f30708l;

    static final class b extends CrashlyticsReport.e.b {

        private String f30709a;

        private String f30710b;

        private String f30711c;

        private long f30712d;

        private Long f30713e;

        private boolean f30714f;

        private CrashlyticsReport.e.a f30715g;

        private CrashlyticsReport.e.f f30716h;

        private CrashlyticsReport.e.AbstractC0412e f30717i;

        private CrashlyticsReport.e.c f30718j;

        private List f30719k;

        private int f30720l;

        private byte f30721m;

        @Override
        public CrashlyticsReport.e a() {
            String str;
            String str2;
            CrashlyticsReport.e.a aVar;
            if (this.f30721m == 7 && (str = this.f30709a) != null && (str2 = this.f30710b) != null && (aVar = this.f30715g) != null) {
                return new h(str, str2, this.f30711c, this.f30712d, this.f30713e, this.f30714f, aVar, this.f30716h, this.f30717i, this.f30718j, this.f30719k, this.f30720l);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f30709a == null) {
                sb2.append(" generator");
            }
            if (this.f30710b == null) {
                sb2.append(" identifier");
            }
            if ((this.f30721m & 1) == 0) {
                sb2.append(" startedAt");
            }
            if ((this.f30721m & 2) == 0) {
                sb2.append(" crashed");
            }
            if (this.f30715g == null) {
                sb2.append(" app");
            }
            if ((this.f30721m & 4) == 0) {
                sb2.append(" generatorType");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override
        public CrashlyticsReport.e.b b(CrashlyticsReport.e.a aVar) {
            if (aVar == null) {
                throw new NullPointerException("Null app");
            }
            this.f30715g = aVar;
            return this;
        }

        @Override
        public CrashlyticsReport.e.b c(String str) {
            this.f30711c = str;
            return this;
        }

        @Override
        public CrashlyticsReport.e.b d(boolean z10) {
            this.f30714f = z10;
            this.f30721m = (byte) (this.f30721m | 2);
            return this;
        }

        @Override
        public CrashlyticsReport.e.b e(CrashlyticsReport.e.c cVar) {
            this.f30718j = cVar;
            return this;
        }

        @Override
        public CrashlyticsReport.e.b f(Long l10) {
            this.f30713e = l10;
            return this;
        }

        @Override
        public CrashlyticsReport.e.b g(List list) {
            this.f30719k = list;
            return this;
        }

        @Override
        public CrashlyticsReport.e.b h(String str) {
            if (str == null) {
                throw new NullPointerException("Null generator");
            }
            this.f30709a = str;
            return this;
        }

        @Override
        public CrashlyticsReport.e.b i(int i10) {
            this.f30720l = i10;
            this.f30721m = (byte) (this.f30721m | 4);
            return this;
        }

        @Override
        public CrashlyticsReport.e.b j(String str) {
            if (str == null) {
                throw new NullPointerException("Null identifier");
            }
            this.f30710b = str;
            return this;
        }

        @Override
        public CrashlyticsReport.e.b l(CrashlyticsReport.e.AbstractC0412e abstractC0412e) {
            this.f30717i = abstractC0412e;
            return this;
        }

        @Override
        public CrashlyticsReport.e.b m(long j10) {
            this.f30712d = j10;
            this.f30721m = (byte) (this.f30721m | 1);
            return this;
        }

        @Override
        public CrashlyticsReport.e.b n(CrashlyticsReport.e.f fVar) {
            this.f30716h = fVar;
            return this;
        }

        b() {
        }

        private b(CrashlyticsReport.e eVar) {
            this.f30709a = eVar.g();
            this.f30710b = eVar.i();
            this.f30711c = eVar.c();
            this.f30712d = eVar.l();
            this.f30713e = eVar.e();
            this.f30714f = eVar.n();
            this.f30715g = eVar.b();
            this.f30716h = eVar.m();
            this.f30717i = eVar.k();
            this.f30718j = eVar.d();
            this.f30719k = eVar.f();
            this.f30720l = eVar.h();
            this.f30721m = (byte) 7;
        }
    }

    @Override
    public CrashlyticsReport.e.a b() {
        return this.f30703g;
    }

    @Override
    public String c() {
        return this.f30699c;
    }

    @Override
    public CrashlyticsReport.e.c d() {
        return this.f30706j;
    }

    @Override
    public Long e() {
        return this.f30701e;
    }

    public boolean equals(Object obj) {
        String str;
        Long l10;
        CrashlyticsReport.e.f fVar;
        CrashlyticsReport.e.AbstractC0412e abstractC0412e;
        CrashlyticsReport.e.c cVar;
        List list;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.e)) {
            return false;
        }
        CrashlyticsReport.e eVar = (CrashlyticsReport.e) obj;
        return this.f30697a.equals(eVar.g()) && this.f30698b.equals(eVar.i()) && ((str = this.f30699c) != null ? str.equals(eVar.c()) : eVar.c() == null) && this.f30700d == eVar.l() && ((l10 = this.f30701e) != null ? l10.equals(eVar.e()) : eVar.e() == null) && this.f30702f == eVar.n() && this.f30703g.equals(eVar.b()) && ((fVar = this.f30704h) != null ? fVar.equals(eVar.m()) : eVar.m() == null) && ((abstractC0412e = this.f30705i) != null ? abstractC0412e.equals(eVar.k()) : eVar.k() == null) && ((cVar = this.f30706j) != null ? cVar.equals(eVar.d()) : eVar.d() == null) && ((list = this.f30707k) != null ? list.equals(eVar.f()) : eVar.f() == null) && this.f30708l == eVar.h();
    }

    @Override
    public List f() {
        return this.f30707k;
    }

    @Override
    public String g() {
        return this.f30697a;
    }

    @Override
    public int h() {
        return this.f30708l;
    }

    public int hashCode() {
        int iHashCode = (((this.f30697a.hashCode() ^ 1000003) * 1000003) ^ this.f30698b.hashCode()) * 1000003;
        String str = this.f30699c;
        int iHashCode2 = str == null ? 0 : str.hashCode();
        long j10 = this.f30700d;
        int i10 = (((iHashCode ^ iHashCode2) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003;
        Long l10 = this.f30701e;
        int iHashCode3 = (((((i10 ^ (l10 == null ? 0 : l10.hashCode())) * 1000003) ^ (this.f30702f ? 1231 : 1237)) * 1000003) ^ this.f30703g.hashCode()) * 1000003;
        CrashlyticsReport.e.f fVar = this.f30704h;
        int iHashCode4 = (iHashCode3 ^ (fVar == null ? 0 : fVar.hashCode())) * 1000003;
        CrashlyticsReport.e.AbstractC0412e abstractC0412e = this.f30705i;
        int iHashCode5 = (iHashCode4 ^ (abstractC0412e == null ? 0 : abstractC0412e.hashCode())) * 1000003;
        CrashlyticsReport.e.c cVar = this.f30706j;
        int iHashCode6 = (iHashCode5 ^ (cVar == null ? 0 : cVar.hashCode())) * 1000003;
        List list = this.f30707k;
        return ((iHashCode6 ^ (list != null ? list.hashCode() : 0)) * 1000003) ^ this.f30708l;
    }

    @Override
    public String i() {
        return this.f30698b;
    }

    @Override
    public CrashlyticsReport.e.AbstractC0412e k() {
        return this.f30705i;
    }

    @Override
    public long l() {
        return this.f30700d;
    }

    @Override
    public CrashlyticsReport.e.f m() {
        return this.f30704h;
    }

    @Override
    public boolean n() {
        return this.f30702f;
    }

    @Override
    public CrashlyticsReport.e.b o() {
        return new b(this);
    }

    public String toString() {
        return "Session{generator=" + this.f30697a + ", identifier=" + this.f30698b + ", appQualitySessionId=" + this.f30699c + ", startedAt=" + this.f30700d + ", endedAt=" + this.f30701e + ", crashed=" + this.f30702f + ", app=" + this.f30703g + ", user=" + this.f30704h + ", os=" + this.f30705i + ", device=" + this.f30706j + ", events=" + this.f30707k + ", generatorType=" + this.f30708l + "}";
    }

    private h(String str, String str2, String str3, long j10, Long l10, boolean z10, CrashlyticsReport.e.a aVar, CrashlyticsReport.e.f fVar, CrashlyticsReport.e.AbstractC0412e abstractC0412e, CrashlyticsReport.e.c cVar, List list, int i10) {
        this.f30697a = str;
        this.f30698b = str2;
        this.f30699c = str3;
        this.f30700d = j10;
        this.f30701e = l10;
        this.f30702f = z10;
        this.f30703g = aVar;
        this.f30704h = fVar;
        this.f30705i = abstractC0412e;
        this.f30706j = cVar;
        this.f30707k = list;
        this.f30708l = i10;
    }
}
