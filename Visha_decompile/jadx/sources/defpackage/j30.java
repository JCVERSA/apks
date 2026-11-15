package defpackage;

import com.google.android.datatransport.cct.internal.ClientInfo;
import com.google.android.datatransport.cct.internal.QosTier;
import java.util.List;
import org.apache.commons.text.StringSubstitutor;

public final class j30 extends xp5 {
    public final long a;
    public final long b;
    public final ClientInfo c;
    public final Integer d;
    public final String e;
    public final List f;
    public final QosTier g;

    public static final class b extends xp5.a {
        public Long a;
        public Long b;
        public ClientInfo c;
        public Integer d;
        public String e;
        public List f;
        public QosTier g;

        @Override
        public xp5 a() {
            String str = "";
            if (this.a == null) {
                str = " requestTimeMs";
            }
            if (this.b == null) {
                str = str + " requestUptimeMs";
            }
            if (str.isEmpty()) {
                return new j30(this.a.longValue(), this.b.longValue(), this.c, this.d, this.e, this.f, this.g);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override
        public xp5.a b(ClientInfo clientInfo) {
            this.c = clientInfo;
            return this;
        }

        @Override
        public xp5.a c(List list) {
            this.f = list;
            return this;
        }

        @Override
        public xp5.a d(Integer num) {
            this.d = num;
            return this;
        }

        @Override
        public xp5.a e(String str) {
            this.e = str;
            return this;
        }

        @Override
        public xp5.a f(QosTier qosTier) {
            this.g = qosTier;
            return this;
        }

        @Override
        public xp5.a g(long j) {
            this.a = Long.valueOf(j);
            return this;
        }

        @Override
        public xp5.a h(long j) {
            this.b = Long.valueOf(j);
            return this;
        }
    }

    @Override
    public ClientInfo b() {
        return this.c;
    }

    @Override
    public List c() {
        return this.f;
    }

    @Override
    public Integer d() {
        return this.d;
    }

    @Override
    public String e() {
        return this.e;
    }

    public boolean equals(Object obj) {
        ClientInfo clientInfo;
        Integer num;
        String str;
        List list;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof xp5)) {
            return false;
        }
        xp5 xp5Var = (xp5) obj;
        if (this.a == xp5Var.g() && this.b == xp5Var.h() && ((clientInfo = this.c) != null ? clientInfo.equals(xp5Var.b()) : xp5Var.b() == null) && ((num = this.d) != null ? num.equals(xp5Var.d()) : xp5Var.d() == null) && ((str = this.e) != null ? str.equals(xp5Var.e()) : xp5Var.e() == null) && ((list = this.f) != null ? list.equals(xp5Var.c()) : xp5Var.c() == null)) {
            QosTier qosTier = this.g;
            if (qosTier == null) {
                if (xp5Var.f() == null) {
                    return true;
                }
            } else if (qosTier.equals(xp5Var.f())) {
                return true;
            }
        }
        return false;
    }

    @Override
    public QosTier f() {
        return this.g;
    }

    @Override
    public long g() {
        return this.a;
    }

    @Override
    public long h() {
        return this.b;
    }

    public int hashCode() {
        long j = this.a;
        long j2 = this.b;
        int i = (((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003;
        ClientInfo clientInfo = this.c;
        int iHashCode = (i ^ (clientInfo == null ? 0 : clientInfo.hashCode())) * 1000003;
        Integer num = this.d;
        int iHashCode2 = (iHashCode ^ (num == null ? 0 : num.hashCode())) * 1000003;
        String str = this.e;
        int iHashCode3 = (iHashCode2 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        List list = this.f;
        int iHashCode4 = (iHashCode3 ^ (list == null ? 0 : list.hashCode())) * 1000003;
        QosTier qosTier = this.g;
        return iHashCode4 ^ (qosTier != null ? qosTier.hashCode() : 0);
    }

    public String toString() {
        return "LogRequest{requestTimeMs=" + this.a + ", requestUptimeMs=" + this.b + ", clientInfo=" + this.c + ", logSource=" + this.d + ", logSourceName=" + this.e + ", logEvents=" + this.f + ", qosTier=" + this.g + StringSubstitutor.DEFAULT_VAR_END;
    }

    public j30(long j, long j2, ClientInfo clientInfo, Integer num, String str, List list, QosTier qosTier) {
        this.a = j;
        this.b = j2;
        this.c = clientInfo;
        this.d = num;
        this.e = str;
        this.f = list;
        this.g = qosTier;
    }
}
