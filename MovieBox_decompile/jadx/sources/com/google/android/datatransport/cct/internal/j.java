package com.google.android.datatransport.cct.internal;

import java.util.Arrays;

final class j extends q {

    private final long f23627a;

    private final Integer f23628b;

    private final ComplianceData f23629c;

    private final long f23630d;

    private final byte[] f23631e;

    private final String f23632f;

    private final long f23633g;

    private final NetworkConnectionInfo f23634h;

    private final n f23635i;

    static final class b extends q.a {

        private Long f23636a;

        private Integer f23637b;

        private ComplianceData f23638c;

        private Long f23639d;

        private byte[] f23640e;

        private String f23641f;

        private Long f23642g;

        private NetworkConnectionInfo f23643h;

        private n f23644i;

        b() {
        }

        @Override
        public q a() {
            String str = "";
            if (this.f23636a == null) {
                str = " eventTimeMs";
            }
            if (this.f23639d == null) {
                str = str + " eventUptimeMs";
            }
            if (this.f23642g == null) {
                str = str + " timezoneOffsetSeconds";
            }
            if (str.isEmpty()) {
                return new j(this.f23636a.longValue(), this.f23637b, this.f23638c, this.f23639d.longValue(), this.f23640e, this.f23641f, this.f23642g.longValue(), this.f23643h, this.f23644i);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override
        public q.a b(ComplianceData complianceData) {
            this.f23638c = complianceData;
            return this;
        }

        @Override
        public q.a c(Integer num) {
            this.f23637b = num;
            return this;
        }

        @Override
        public q.a d(long j10) {
            this.f23636a = Long.valueOf(j10);
            return this;
        }

        @Override
        public q.a e(long j10) {
            this.f23639d = Long.valueOf(j10);
            return this;
        }

        @Override
        public q.a f(n nVar) {
            this.f23644i = nVar;
            return this;
        }

        @Override
        public q.a g(NetworkConnectionInfo networkConnectionInfo) {
            this.f23643h = networkConnectionInfo;
            return this;
        }

        @Override
        q.a h(byte[] bArr) {
            this.f23640e = bArr;
            return this;
        }

        @Override
        q.a i(String str) {
            this.f23641f = str;
            return this;
        }

        @Override
        public q.a j(long j10) {
            this.f23642g = Long.valueOf(j10);
            return this;
        }
    }

    @Override
    public ComplianceData b() {
        return this.f23629c;
    }

    @Override
    public Integer c() {
        return this.f23628b;
    }

    @Override
    public long d() {
        return this.f23627a;
    }

    @Override
    public long e() {
        return this.f23630d;
    }

    public boolean equals(Object obj) {
        Integer num;
        ComplianceData complianceData;
        String str;
        NetworkConnectionInfo networkConnectionInfo;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof q)) {
            return false;
        }
        q qVar = (q) obj;
        if (this.f23627a == qVar.d() && ((num = this.f23628b) != null ? num.equals(qVar.c()) : qVar.c() == null) && ((complianceData = this.f23629c) != null ? complianceData.equals(qVar.b()) : qVar.b() == null) && this.f23630d == qVar.e()) {
            if (Arrays.equals(this.f23631e, qVar instanceof j ? ((j) qVar).f23631e : qVar.h()) && ((str = this.f23632f) != null ? str.equals(qVar.i()) : qVar.i() == null) && this.f23633g == qVar.j() && ((networkConnectionInfo = this.f23634h) != null ? networkConnectionInfo.equals(qVar.g()) : qVar.g() == null)) {
                n nVar = this.f23635i;
                if (nVar == null) {
                    if (qVar.f() == null) {
                        return true;
                    }
                } else if (nVar.equals(qVar.f())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override
    public n f() {
        return this.f23635i;
    }

    @Override
    public NetworkConnectionInfo g() {
        return this.f23634h;
    }

    @Override
    public byte[] h() {
        return this.f23631e;
    }

    public int hashCode() {
        long j10 = this.f23627a;
        int i10 = (((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003;
        Integer num = this.f23628b;
        int iHashCode = (i10 ^ (num == null ? 0 : num.hashCode())) * 1000003;
        ComplianceData complianceData = this.f23629c;
        int iHashCode2 = complianceData == null ? 0 : complianceData.hashCode();
        long j11 = this.f23630d;
        int iHashCode3 = (((((iHashCode ^ iHashCode2) * 1000003) ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003) ^ Arrays.hashCode(this.f23631e)) * 1000003;
        String str = this.f23632f;
        int iHashCode4 = str == null ? 0 : str.hashCode();
        long j12 = this.f23633g;
        int i11 = (((iHashCode3 ^ iHashCode4) * 1000003) ^ ((int) ((j12 >>> 32) ^ j12))) * 1000003;
        NetworkConnectionInfo networkConnectionInfo = this.f23634h;
        int iHashCode5 = (i11 ^ (networkConnectionInfo == null ? 0 : networkConnectionInfo.hashCode())) * 1000003;
        n nVar = this.f23635i;
        return iHashCode5 ^ (nVar != null ? nVar.hashCode() : 0);
    }

    @Override
    public String i() {
        return this.f23632f;
    }

    @Override
    public long j() {
        return this.f23633g;
    }

    public String toString() {
        return "LogEvent{eventTimeMs=" + this.f23627a + ", eventCode=" + this.f23628b + ", complianceData=" + this.f23629c + ", eventUptimeMs=" + this.f23630d + ", sourceExtension=" + Arrays.toString(this.f23631e) + ", sourceExtensionJsonProto3=" + this.f23632f + ", timezoneOffsetSeconds=" + this.f23633g + ", networkConnectionInfo=" + this.f23634h + ", experimentIds=" + this.f23635i + "}";
    }

    private j(long j10, Integer num, ComplianceData complianceData, long j11, byte[] bArr, String str, long j12, NetworkConnectionInfo networkConnectionInfo, n nVar) {
        this.f23627a = j10;
        this.f23628b = num;
        this.f23629c = complianceData;
        this.f23630d = j11;
        this.f23631e = bArr;
        this.f23632f = str;
        this.f23633g = j12;
        this.f23634h = networkConnectionInfo;
        this.f23635i = nVar;
    }
}
