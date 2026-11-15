package defpackage;

import org.apache.commons.text.StringSubstitutor;

public final class g30 extends h15 {
    public final String a;
    public final long b;
    public final long c;

    public static final class b extends h15.a {
        public String a;
        public Long b;
        public Long c;

        @Override
        public h15 a() {
            String str = "";
            if (this.a == null) {
                str = " token";
            }
            if (this.b == null) {
                str = str + " tokenExpirationTimestamp";
            }
            if (this.c == null) {
                str = str + " tokenCreationTimestamp";
            }
            if (str.isEmpty()) {
                return new g30(this.a, this.b.longValue(), this.c.longValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override
        public h15.a b(String str) {
            if (str == null) {
                throw new NullPointerException("Null token");
            }
            this.a = str;
            return this;
        }

        @Override
        public h15.a c(long j) {
            this.c = Long.valueOf(j);
            return this;
        }

        @Override
        public h15.a d(long j) {
            this.b = Long.valueOf(j);
            return this;
        }
    }

    @Override
    public String b() {
        return this.a;
    }

    @Override
    public long c() {
        return this.c;
    }

    @Override
    public long d() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof h15)) {
            return false;
        }
        h15 h15Var = (h15) obj;
        return this.a.equals(h15Var.b()) && this.b == h15Var.d() && this.c == h15Var.c();
    }

    public int hashCode() {
        int iHashCode = (this.a.hashCode() ^ 1000003) * 1000003;
        long j = this.b;
        long j2 = this.c;
        return ((int) (j2 ^ (j2 >>> 32))) ^ ((iHashCode ^ ((int) (j ^ (j >>> 32)))) * 1000003);
    }

    public String toString() {
        return "InstallationTokenResult{token=" + this.a + ", tokenExpirationTimestamp=" + this.b + ", tokenCreationTimestamp=" + this.c + StringSubstitutor.DEFAULT_VAR_END;
    }

    public g30(String str, long j, long j2) {
        this.a = str;
        this.b = j;
        this.c = j2;
    }
}
