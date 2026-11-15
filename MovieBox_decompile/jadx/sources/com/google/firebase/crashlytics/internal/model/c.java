package com.google.firebase.crashlytics.internal.model;

import java.util.List;

final class c extends CrashlyticsReport.a {

    private final int f30660a;

    private final String f30661b;

    private final int f30662c;

    private final int f30663d;

    private final long f30664e;

    private final long f30665f;

    private final long f30666g;

    private final String f30667h;

    private final List f30668i;

    static final class b extends CrashlyticsReport.a.b {

        private int f30669a;

        private String f30670b;

        private int f30671c;

        private int f30672d;

        private long f30673e;

        private long f30674f;

        private long f30675g;

        private String f30676h;

        private List f30677i;

        private byte f30678j;

        b() {
        }

        @Override
        public CrashlyticsReport.a a() {
            String str;
            if (this.f30678j == 63 && (str = this.f30670b) != null) {
                return new c(this.f30669a, str, this.f30671c, this.f30672d, this.f30673e, this.f30674f, this.f30675g, this.f30676h, this.f30677i);
            }
            StringBuilder sb2 = new StringBuilder();
            if ((this.f30678j & 1) == 0) {
                sb2.append(" pid");
            }
            if (this.f30670b == null) {
                sb2.append(" processName");
            }
            if ((this.f30678j & 2) == 0) {
                sb2.append(" reasonCode");
            }
            if ((this.f30678j & 4) == 0) {
                sb2.append(" importance");
            }
            if ((this.f30678j & 8) == 0) {
                sb2.append(" pss");
            }
            if ((this.f30678j & 16) == 0) {
                sb2.append(" rss");
            }
            if ((this.f30678j & 32) == 0) {
                sb2.append(" timestamp");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override
        public CrashlyticsReport.a.b b(List list) {
            this.f30677i = list;
            return this;
        }

        @Override
        public CrashlyticsReport.a.b c(int i10) {
            this.f30672d = i10;
            this.f30678j = (byte) (this.f30678j | 4);
            return this;
        }

        @Override
        public CrashlyticsReport.a.b d(int i10) {
            this.f30669a = i10;
            this.f30678j = (byte) (this.f30678j | 1);
            return this;
        }

        @Override
        public CrashlyticsReport.a.b e(String str) {
            if (str == null) {
                throw new NullPointerException("Null processName");
            }
            this.f30670b = str;
            return this;
        }

        @Override
        public CrashlyticsReport.a.b f(long j10) {
            this.f30673e = j10;
            this.f30678j = (byte) (this.f30678j | 8);
            return this;
        }

        @Override
        public CrashlyticsReport.a.b g(int i10) {
            this.f30671c = i10;
            this.f30678j = (byte) (this.f30678j | 2);
            return this;
        }

        @Override
        public CrashlyticsReport.a.b h(long j10) {
            this.f30674f = j10;
            this.f30678j = (byte) (this.f30678j | 16);
            return this;
        }

        @Override
        public CrashlyticsReport.a.b i(long j10) {
            this.f30675g = j10;
            this.f30678j = (byte) (this.f30678j | 32);
            return this;
        }

        @Override
        public CrashlyticsReport.a.b j(String str) {
            this.f30676h = str;
            return this;
        }
    }

    @Override
    public List b() {
        return this.f30668i;
    }

    @Override
    public int c() {
        return this.f30663d;
    }

    @Override
    public int d() {
        return this.f30660a;
    }

    @Override
    public String e() {
        return this.f30661b;
    }

    public boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.a)) {
            return false;
        }
        CrashlyticsReport.a aVar = (CrashlyticsReport.a) obj;
        if (this.f30660a == aVar.d() && this.f30661b.equals(aVar.e()) && this.f30662c == aVar.g() && this.f30663d == aVar.c() && this.f30664e == aVar.f() && this.f30665f == aVar.h() && this.f30666g == aVar.i() && ((str = this.f30667h) != null ? str.equals(aVar.j()) : aVar.j() == null)) {
            List list = this.f30668i;
            if (list == null) {
                if (aVar.b() == null) {
                    return true;
                }
            } else if (list.equals(aVar.b())) {
                return true;
            }
        }
        return false;
    }

    @Override
    public long f() {
        return this.f30664e;
    }

    @Override
    public int g() {
        return this.f30662c;
    }

    @Override
    public long h() {
        return this.f30665f;
    }

    public int hashCode() {
        int iHashCode = (((((((this.f30660a ^ 1000003) * 1000003) ^ this.f30661b.hashCode()) * 1000003) ^ this.f30662c) * 1000003) ^ this.f30663d) * 1000003;
        long j10 = this.f30664e;
        int i10 = (iHashCode ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003;
        long j11 = this.f30665f;
        int i11 = (i10 ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003;
        long j12 = this.f30666g;
        int i12 = (i11 ^ ((int) (j12 ^ (j12 >>> 32)))) * 1000003;
        String str = this.f30667h;
        int iHashCode2 = (i12 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        List list = this.f30668i;
        return iHashCode2 ^ (list != null ? list.hashCode() : 0);
    }

    @Override
    public long i() {
        return this.f30666g;
    }

    @Override
    public String j() {
        return this.f30667h;
    }

    public String toString() {
        return "ApplicationExitInfo{pid=" + this.f30660a + ", processName=" + this.f30661b + ", reasonCode=" + this.f30662c + ", importance=" + this.f30663d + ", pss=" + this.f30664e + ", rss=" + this.f30665f + ", timestamp=" + this.f30666g + ", traceFile=" + this.f30667h + ", buildIdMappingForArch=" + this.f30668i + "}";
    }

    private c(int i10, String str, int i11, int i12, long j10, long j11, long j12, String str2, List list) {
        this.f30660a = i10;
        this.f30661b = str;
        this.f30662c = i11;
        this.f30663d = i12;
        this.f30664e = j10;
        this.f30665f = j11;
        this.f30666g = j12;
        this.f30667h = str2;
        this.f30668i = list;
    }
}
