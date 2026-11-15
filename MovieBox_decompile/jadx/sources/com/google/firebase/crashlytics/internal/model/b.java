package com.google.firebase.crashlytics.internal.model;

final class b extends CrashlyticsReport {

    private final String f30635b;

    private final String f30636c;

    private final int f30637d;

    private final String f30638e;

    private final String f30639f;

    private final String f30640g;

    private final String f30641h;

    private final String f30642i;

    private final String f30643j;

    private final CrashlyticsReport.e f30644k;

    private final CrashlyticsReport.d f30645l;

    private final CrashlyticsReport.a f30646m;

    static final class C0414b extends CrashlyticsReport.b {

        private String f30647a;

        private String f30648b;

        private int f30649c;

        private String f30650d;

        private String f30651e;

        private String f30652f;

        private String f30653g;

        private String f30654h;

        private String f30655i;

        private CrashlyticsReport.e f30656j;

        private CrashlyticsReport.d f30657k;

        private CrashlyticsReport.a f30658l;

        private byte f30659m;

        @Override
        public CrashlyticsReport a() {
            if (this.f30659m == 1 && this.f30647a != null && this.f30648b != null && this.f30650d != null && this.f30654h != null && this.f30655i != null) {
                return new b(this.f30647a, this.f30648b, this.f30649c, this.f30650d, this.f30651e, this.f30652f, this.f30653g, this.f30654h, this.f30655i, this.f30656j, this.f30657k, this.f30658l);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f30647a == null) {
                sb2.append(" sdkVersion");
            }
            if (this.f30648b == null) {
                sb2.append(" gmpAppId");
            }
            if ((1 & this.f30659m) == 0) {
                sb2.append(" platform");
            }
            if (this.f30650d == null) {
                sb2.append(" installationUuid");
            }
            if (this.f30654h == null) {
                sb2.append(" buildVersion");
            }
            if (this.f30655i == null) {
                sb2.append(" displayVersion");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override
        public CrashlyticsReport.b b(CrashlyticsReport.a aVar) {
            this.f30658l = aVar;
            return this;
        }

        @Override
        public CrashlyticsReport.b c(String str) {
            this.f30653g = str;
            return this;
        }

        @Override
        public CrashlyticsReport.b d(String str) {
            if (str == null) {
                throw new NullPointerException("Null buildVersion");
            }
            this.f30654h = str;
            return this;
        }

        @Override
        public CrashlyticsReport.b e(String str) {
            if (str == null) {
                throw new NullPointerException("Null displayVersion");
            }
            this.f30655i = str;
            return this;
        }

        @Override
        public CrashlyticsReport.b f(String str) {
            this.f30652f = str;
            return this;
        }

        @Override
        public CrashlyticsReport.b g(String str) {
            this.f30651e = str;
            return this;
        }

        @Override
        public CrashlyticsReport.b h(String str) {
            if (str == null) {
                throw new NullPointerException("Null gmpAppId");
            }
            this.f30648b = str;
            return this;
        }

        @Override
        public CrashlyticsReport.b i(String str) {
            if (str == null) {
                throw new NullPointerException("Null installationUuid");
            }
            this.f30650d = str;
            return this;
        }

        @Override
        public CrashlyticsReport.b j(CrashlyticsReport.d dVar) {
            this.f30657k = dVar;
            return this;
        }

        @Override
        public CrashlyticsReport.b k(int i10) {
            this.f30649c = i10;
            this.f30659m = (byte) (this.f30659m | 1);
            return this;
        }

        @Override
        public CrashlyticsReport.b l(String str) {
            if (str == null) {
                throw new NullPointerException("Null sdkVersion");
            }
            this.f30647a = str;
            return this;
        }

        @Override
        public CrashlyticsReport.b m(CrashlyticsReport.e eVar) {
            this.f30656j = eVar;
            return this;
        }

        C0414b() {
        }

        private C0414b(CrashlyticsReport crashlyticsReport) {
            this.f30647a = crashlyticsReport.m();
            this.f30648b = crashlyticsReport.i();
            this.f30649c = crashlyticsReport.l();
            this.f30650d = crashlyticsReport.j();
            this.f30651e = crashlyticsReport.h();
            this.f30652f = crashlyticsReport.g();
            this.f30653g = crashlyticsReport.d();
            this.f30654h = crashlyticsReport.e();
            this.f30655i = crashlyticsReport.f();
            this.f30656j = crashlyticsReport.n();
            this.f30657k = crashlyticsReport.k();
            this.f30658l = crashlyticsReport.c();
            this.f30659m = (byte) 1;
        }
    }

    @Override
    public CrashlyticsReport.a c() {
        return this.f30646m;
    }

    @Override
    public String d() {
        return this.f30641h;
    }

    @Override
    public String e() {
        return this.f30642i;
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        String str3;
        CrashlyticsReport.e eVar;
        CrashlyticsReport.d dVar;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport)) {
            return false;
        }
        CrashlyticsReport crashlyticsReport = (CrashlyticsReport) obj;
        if (this.f30635b.equals(crashlyticsReport.m()) && this.f30636c.equals(crashlyticsReport.i()) && this.f30637d == crashlyticsReport.l() && this.f30638e.equals(crashlyticsReport.j()) && ((str = this.f30639f) != null ? str.equals(crashlyticsReport.h()) : crashlyticsReport.h() == null) && ((str2 = this.f30640g) != null ? str2.equals(crashlyticsReport.g()) : crashlyticsReport.g() == null) && ((str3 = this.f30641h) != null ? str3.equals(crashlyticsReport.d()) : crashlyticsReport.d() == null) && this.f30642i.equals(crashlyticsReport.e()) && this.f30643j.equals(crashlyticsReport.f()) && ((eVar = this.f30644k) != null ? eVar.equals(crashlyticsReport.n()) : crashlyticsReport.n() == null) && ((dVar = this.f30645l) != null ? dVar.equals(crashlyticsReport.k()) : crashlyticsReport.k() == null)) {
            CrashlyticsReport.a aVar = this.f30646m;
            if (aVar == null) {
                if (crashlyticsReport.c() == null) {
                    return true;
                }
            } else if (aVar.equals(crashlyticsReport.c())) {
                return true;
            }
        }
        return false;
    }

    @Override
    public String f() {
        return this.f30643j;
    }

    @Override
    public String g() {
        return this.f30640g;
    }

    @Override
    public String h() {
        return this.f30639f;
    }

    public int hashCode() {
        int iHashCode = (((((((this.f30635b.hashCode() ^ 1000003) * 1000003) ^ this.f30636c.hashCode()) * 1000003) ^ this.f30637d) * 1000003) ^ this.f30638e.hashCode()) * 1000003;
        String str = this.f30639f;
        int iHashCode2 = (iHashCode ^ (str == null ? 0 : str.hashCode())) * 1000003;
        String str2 = this.f30640g;
        int iHashCode3 = (iHashCode2 ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f30641h;
        int iHashCode4 = (((((iHashCode3 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003) ^ this.f30642i.hashCode()) * 1000003) ^ this.f30643j.hashCode()) * 1000003;
        CrashlyticsReport.e eVar = this.f30644k;
        int iHashCode5 = (iHashCode4 ^ (eVar == null ? 0 : eVar.hashCode())) * 1000003;
        CrashlyticsReport.d dVar = this.f30645l;
        int iHashCode6 = (iHashCode5 ^ (dVar == null ? 0 : dVar.hashCode())) * 1000003;
        CrashlyticsReport.a aVar = this.f30646m;
        return iHashCode6 ^ (aVar != null ? aVar.hashCode() : 0);
    }

    @Override
    public String i() {
        return this.f30636c;
    }

    @Override
    public String j() {
        return this.f30638e;
    }

    @Override
    public CrashlyticsReport.d k() {
        return this.f30645l;
    }

    @Override
    public int l() {
        return this.f30637d;
    }

    @Override
    public String m() {
        return this.f30635b;
    }

    @Override
    public CrashlyticsReport.e n() {
        return this.f30644k;
    }

    @Override
    protected CrashlyticsReport.b o() {
        return new C0414b(this);
    }

    public String toString() {
        return "CrashlyticsReport{sdkVersion=" + this.f30635b + ", gmpAppId=" + this.f30636c + ", platform=" + this.f30637d + ", installationUuid=" + this.f30638e + ", firebaseInstallationId=" + this.f30639f + ", firebaseAuthenticationToken=" + this.f30640g + ", appQualitySessionId=" + this.f30641h + ", buildVersion=" + this.f30642i + ", displayVersion=" + this.f30643j + ", session=" + this.f30644k + ", ndkPayload=" + this.f30645l + ", appExitInfo=" + this.f30646m + "}";
    }

    private b(String str, String str2, int i10, String str3, String str4, String str5, String str6, String str7, String str8, CrashlyticsReport.e eVar, CrashlyticsReport.d dVar, CrashlyticsReport.a aVar) {
        this.f30635b = str;
        this.f30636c = str2;
        this.f30637d = i10;
        this.f30638e = str3;
        this.f30639f = str4;
        this.f30640g = str5;
        this.f30641h = str6;
        this.f30642i = str7;
        this.f30643j = str8;
        this.f30644k = eVar;
        this.f30645l = dVar;
        this.f30646m = aVar;
    }
}
