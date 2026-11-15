package defpackage;

import org.apache.commons.text.StringSubstitutor;

public final class xwh extends twh {
    public final String a;
    public final boolean b;
    public final boolean c;
    public final long d;
    public final long e;

    public xwh(String str, boolean z, boolean z2, boolean z3, long j, boolean z4, long j2, wwh wwhVar) {
        this.a = str;
        this.b = z;
        this.c = z2;
        this.d = j;
        this.e = j2;
    }

    @Override
    public final long a() {
        return this.e;
    }

    @Override
    public final long b() {
        return this.d;
    }

    @Override
    public final String d() {
        return this.a;
    }

    @Override
    public final boolean e() {
        return false;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof twh) {
            twh twhVar = (twh) obj;
            if (this.a.equals(twhVar.d()) && this.b == twhVar.h() && this.c == twhVar.g()) {
                twhVar.f();
                if (this.d == twhVar.b()) {
                    twhVar.e();
                    if (this.e == twhVar.a()) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override
    public final boolean f() {
        return false;
    }

    @Override
    public final boolean g() {
        return this.c;
    }

    @Override
    public final boolean h() {
        return this.b;
    }

    public final int hashCode() {
        return ((int) this.e) ^ ((((((((((((this.a.hashCode() ^ 1000003) * 1000003) ^ (true != this.b ? 1237 : 1231)) * 1000003) ^ (true != this.c ? 1237 : 1231)) * 1000003) ^ 1237) * 1000003) ^ ((int) this.d)) * 1000003) ^ 1237) * 1000003);
    }

    public final String toString() {
        return "AdShield2Options{clientVersion=" + this.a + ", shouldGetAdvertisingId=" + this.b + ", isGooglePlayServicesAvailable=" + this.c + ", enableQuerySignalsTimeout=false, querySignalsTimeoutMs=" + this.d + ", enableQuerySignalsCache=false, querySignalsCacheTtlSeconds=" + this.e + StringSubstitutor.DEFAULT_VAR_END;
    }
}
