package defpackage;

import java.util.Map;
import org.apache.commons.text.StringSubstitutor;

public final class d30 extends xd3 {
    public final String a;
    public final Integer b;
    public final ba3 c;
    public final long d;
    public final long e;
    public final Map f;

    public static final class b extends xd3.a {
        public String a;
        public Integer b;
        public ba3 c;
        public Long d;
        public Long e;
        public Map f;

        @Override
        public xd3 d() {
            String str = "";
            if (this.a == null) {
                str = " transportName";
            }
            if (this.c == null) {
                str = str + " encodedPayload";
            }
            if (this.d == null) {
                str = str + " eventMillis";
            }
            if (this.e == null) {
                str = str + " uptimeMillis";
            }
            if (this.f == null) {
                str = str + " autoMetadata";
            }
            if (str.isEmpty()) {
                return new d30(this.a, this.b, this.c, this.d.longValue(), this.e.longValue(), this.f);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override
        public Map e() {
            Map map = this.f;
            if (map != null) {
                return map;
            }
            throw new IllegalStateException("Property \"autoMetadata\" has not been set");
        }

        @Override
        public xd3.a f(Map map) {
            if (map == null) {
                throw new NullPointerException("Null autoMetadata");
            }
            this.f = map;
            return this;
        }

        @Override
        public xd3.a g(Integer num) {
            this.b = num;
            return this;
        }

        @Override
        public xd3.a h(ba3 ba3Var) {
            if (ba3Var == null) {
                throw new NullPointerException("Null encodedPayload");
            }
            this.c = ba3Var;
            return this;
        }

        @Override
        public xd3.a i(long j) {
            this.d = Long.valueOf(j);
            return this;
        }

        @Override
        public xd3.a j(String str) {
            if (str == null) {
                throw new NullPointerException("Null transportName");
            }
            this.a = str;
            return this;
        }

        @Override
        public xd3.a k(long j) {
            this.e = Long.valueOf(j);
            return this;
        }
    }

    @Override
    public Map c() {
        return this.f;
    }

    @Override
    public Integer d() {
        return this.b;
    }

    @Override
    public ba3 e() {
        return this.c;
    }

    public boolean equals(Object obj) {
        Integer num;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof xd3)) {
            return false;
        }
        xd3 xd3Var = (xd3) obj;
        return this.a.equals(xd3Var.j()) && ((num = this.b) != null ? num.equals(xd3Var.d()) : xd3Var.d() == null) && this.c.equals(xd3Var.e()) && this.d == xd3Var.f() && this.e == xd3Var.k() && this.f.equals(xd3Var.c());
    }

    @Override
    public long f() {
        return this.d;
    }

    public int hashCode() {
        int iHashCode = (this.a.hashCode() ^ 1000003) * 1000003;
        Integer num = this.b;
        int iHashCode2 = (((iHashCode ^ (num == null ? 0 : num.hashCode())) * 1000003) ^ this.c.hashCode()) * 1000003;
        long j = this.d;
        int i = (iHashCode2 ^ ((int) (j ^ (j >>> 32)))) * 1000003;
        long j2 = this.e;
        return this.f.hashCode() ^ ((i ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003);
    }

    @Override
    public String j() {
        return this.a;
    }

    @Override
    public long k() {
        return this.e;
    }

    public String toString() {
        return "EventInternal{transportName=" + this.a + ", code=" + this.b + ", encodedPayload=" + this.c + ", eventMillis=" + this.d + ", uptimeMillis=" + this.e + ", autoMetadata=" + this.f + StringSubstitutor.DEFAULT_VAR_END;
    }

    public d30(String str, Integer num, ba3 ba3Var, long j, long j2, Map map) {
        this.a = str;
        this.b = num;
        this.c = ba3Var;
        this.d = j;
        this.e = j2;
        this.f = map;
    }
}
