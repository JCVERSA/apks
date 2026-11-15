package defpackage;

import org.apache.commons.text.StringSubstitutor;

public final class o30 extends dx9 {
    public final long a;
    public final long b;
    public final long c;

    public o30(long j, long j2, long j3) {
        this.a = j;
        this.b = j2;
        this.c = j3;
    }

    @Override
    public long b() {
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

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof dx9)) {
            return false;
        }
        dx9 dx9Var = (dx9) obj;
        return this.a == dx9Var.c() && this.b == dx9Var.b() && this.c == dx9Var.d();
    }

    public int hashCode() {
        long j = this.a;
        long j2 = this.b;
        int i = (((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003;
        long j3 = this.c;
        return ((int) ((j3 >>> 32) ^ j3)) ^ i;
    }

    public String toString() {
        return "StartupTime{epochMillis=" + this.a + ", elapsedRealtime=" + this.b + ", uptimeMillis=" + this.c + StringSubstitutor.DEFAULT_VAR_END;
    }
}
