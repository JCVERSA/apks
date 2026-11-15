package defpackage;

import com.google.android.datatransport.cct.internal.NetworkConnectionInfo;
import java.util.Arrays;
import org.apache.commons.text.StringSubstitutor;

public final class i30 extends sp5 {
    public final long a;
    public final Integer b;
    public final long c;
    public final byte[] d;
    public final String e;
    public final long f;
    public final NetworkConnectionInfo g;

    public static final class b extends sp5.a {
        public Long a;
        public Integer b;
        public Long c;
        public byte[] d;
        public String e;
        public Long f;
        public NetworkConnectionInfo g;

        @Override
        public sp5 a() {
            String str = "";
            if (this.a == null) {
                str = " eventTimeMs";
            }
            if (this.c == null) {
                str = str + " eventUptimeMs";
            }
            if (this.f == null) {
                str = str + " timezoneOffsetSeconds";
            }
            if (str.isEmpty()) {
                return new i30(this.a.longValue(), this.b, this.c.longValue(), this.d, this.e, this.f.longValue(), this.g);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override
        public sp5.a b(Integer num) {
            this.b = num;
            return this;
        }

        @Override
        public sp5.a c(long j) {
            this.a = Long.valueOf(j);
            return this;
        }

        @Override
        public sp5.a d(long j) {
            this.c = Long.valueOf(j);
            return this;
        }

        @Override
        public sp5.a e(NetworkConnectionInfo networkConnectionInfo) {
            this.g = networkConnectionInfo;
            return this;
        }

        @Override
        public sp5.a f(byte[] bArr) {
            this.d = bArr;
            return this;
        }

        @Override
        public sp5.a g(String str) {
            this.e = str;
            return this;
        }

        @Override
        public sp5.a h(long j) {
            this.f = Long.valueOf(j);
            return this;
        }
    }

    @Override
    public Integer b() {
        return this.b;
    }

    @Override
    public long c() {
        return this.a;
    }

    @Override
    public long d() {
        return this.c;
    }

    @Override
    public NetworkConnectionInfo e() {
        return this.g;
    }

    public boolean equals(Object obj) {
        Integer num;
        String str;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof sp5)) {
            return false;
        }
        sp5 sp5Var = (sp5) obj;
        if (this.a == sp5Var.c() && ((num = this.b) != null ? num.equals(sp5Var.b()) : sp5Var.b() == null) && this.c == sp5Var.d()) {
            if (Arrays.equals(this.d, sp5Var instanceof i30 ? ((i30) sp5Var).d : sp5Var.f()) && ((str = this.e) != null ? str.equals(sp5Var.g()) : sp5Var.g() == null) && this.f == sp5Var.h()) {
                NetworkConnectionInfo networkConnectionInfo = this.g;
                if (networkConnectionInfo == null) {
                    if (sp5Var.e() == null) {
                        return true;
                    }
                } else if (networkConnectionInfo.equals(sp5Var.e())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override
    public byte[] f() {
        return this.d;
    }

    @Override
    public String g() {
        return this.e;
    }

    @Override
    public long h() {
        return this.f;
    }

    public int hashCode() {
        long j = this.a;
        int i = (((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003;
        Integer num = this.b;
        int iHashCode = num == null ? 0 : num.hashCode();
        long j2 = this.c;
        int iHashCode2 = (((((i ^ iHashCode) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ Arrays.hashCode(this.d)) * 1000003;
        String str = this.e;
        int iHashCode3 = str == null ? 0 : str.hashCode();
        long j3 = this.f;
        int i2 = (((iHashCode2 ^ iHashCode3) * 1000003) ^ ((int) ((j3 >>> 32) ^ j3))) * 1000003;
        NetworkConnectionInfo networkConnectionInfo = this.g;
        return i2 ^ (networkConnectionInfo != null ? networkConnectionInfo.hashCode() : 0);
    }

    public String toString() {
        return "LogEvent{eventTimeMs=" + this.a + ", eventCode=" + this.b + ", eventUptimeMs=" + this.c + ", sourceExtension=" + Arrays.toString(this.d) + ", sourceExtensionJsonProto3=" + this.e + ", timezoneOffsetSeconds=" + this.f + ", networkConnectionInfo=" + this.g + StringSubstitutor.DEFAULT_VAR_END;
    }

    public i30(long j, Integer num, long j2, byte[] bArr, String str, long j3, NetworkConnectionInfo networkConnectionInfo) {
        this.a = j;
        this.b = num;
        this.c = j2;
        this.d = bArr;
        this.e = str;
        this.f = j3;
        this.g = networkConnectionInfo;
    }
}
