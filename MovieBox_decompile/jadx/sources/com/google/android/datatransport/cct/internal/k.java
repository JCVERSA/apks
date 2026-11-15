package com.google.android.datatransport.cct.internal;

import java.util.List;

final class k extends r {

    private final long f23645a;

    private final long f23646b;

    private final ClientInfo f23647c;

    private final Integer f23648d;

    private final String f23649e;

    private final List f23650f;

    private final QosTier f23651g;

    static final class b extends r.a {

        private Long f23652a;

        private Long f23653b;

        private ClientInfo f23654c;

        private Integer f23655d;

        private String f23656e;

        private List f23657f;

        private QosTier f23658g;

        b() {
        }

        @Override
        public r a() {
            String str = "";
            if (this.f23652a == null) {
                str = " requestTimeMs";
            }
            if (this.f23653b == null) {
                str = str + " requestUptimeMs";
            }
            if (str.isEmpty()) {
                return new k(this.f23652a.longValue(), this.f23653b.longValue(), this.f23654c, this.f23655d, this.f23656e, this.f23657f, this.f23658g);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override
        public r.a b(ClientInfo clientInfo) {
            this.f23654c = clientInfo;
            return this;
        }

        @Override
        public r.a c(List list) {
            this.f23657f = list;
            return this;
        }

        @Override
        r.a d(Integer num) {
            this.f23655d = num;
            return this;
        }

        @Override
        r.a e(String str) {
            this.f23656e = str;
            return this;
        }

        @Override
        public r.a f(QosTier qosTier) {
            this.f23658g = qosTier;
            return this;
        }

        @Override
        public r.a g(long j10) {
            this.f23652a = Long.valueOf(j10);
            return this;
        }

        @Override
        public r.a h(long j10) {
            this.f23653b = Long.valueOf(j10);
            return this;
        }
    }

    @Override
    public ClientInfo b() {
        return this.f23647c;
    }

    @Override
    public List c() {
        return this.f23650f;
    }

    @Override
    public Integer d() {
        return this.f23648d;
    }

    @Override
    public String e() {
        return this.f23649e;
    }

    public boolean equals(Object obj) {
        ClientInfo clientInfo;
        Integer num;
        String str;
        List list;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        if (this.f23645a == rVar.g() && this.f23646b == rVar.h() && ((clientInfo = this.f23647c) != null ? clientInfo.equals(rVar.b()) : rVar.b() == null) && ((num = this.f23648d) != null ? num.equals(rVar.d()) : rVar.d() == null) && ((str = this.f23649e) != null ? str.equals(rVar.e()) : rVar.e() == null) && ((list = this.f23650f) != null ? list.equals(rVar.c()) : rVar.c() == null)) {
            QosTier qosTier = this.f23651g;
            if (qosTier == null) {
                if (rVar.f() == null) {
                    return true;
                }
            } else if (qosTier.equals(rVar.f())) {
                return true;
            }
        }
        return false;
    }

    @Override
    public QosTier f() {
        return this.f23651g;
    }

    @Override
    public long g() {
        return this.f23645a;
    }

    @Override
    public long h() {
        return this.f23646b;
    }

    public int hashCode() {
        long j10 = this.f23645a;
        long j11 = this.f23646b;
        int i10 = (((((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003) ^ ((int) ((j11 >>> 32) ^ j11))) * 1000003;
        ClientInfo clientInfo = this.f23647c;
        int iHashCode = (i10 ^ (clientInfo == null ? 0 : clientInfo.hashCode())) * 1000003;
        Integer num = this.f23648d;
        int iHashCode2 = (iHashCode ^ (num == null ? 0 : num.hashCode())) * 1000003;
        String str = this.f23649e;
        int iHashCode3 = (iHashCode2 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        List list = this.f23650f;
        int iHashCode4 = (iHashCode3 ^ (list == null ? 0 : list.hashCode())) * 1000003;
        QosTier qosTier = this.f23651g;
        return iHashCode4 ^ (qosTier != null ? qosTier.hashCode() : 0);
    }

    public String toString() {
        return "LogRequest{requestTimeMs=" + this.f23645a + ", requestUptimeMs=" + this.f23646b + ", clientInfo=" + this.f23647c + ", logSource=" + this.f23648d + ", logSourceName=" + this.f23649e + ", logEvents=" + this.f23650f + ", qosTier=" + this.f23651g + "}";
    }

    private k(long j10, long j11, ClientInfo clientInfo, Integer num, String str, List list, QosTier qosTier) {
        this.f23645a = j10;
        this.f23646b = j11;
        this.f23647c = clientInfo;
        this.f23648d = num;
        this.f23649e = str;
        this.f23650f = list;
        this.f23651g = qosTier;
    }
}
