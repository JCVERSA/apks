package com.google.firebase;

final class a extends n {

    private final long f30217a;

    private final long f30218b;

    private final long f30219c;

    a(long j10, long j11, long j12) {
        this.f30217a = j10;
        this.f30218b = j11;
        this.f30219c = j12;
    }

    @Override
    public long b() {
        return this.f30218b;
    }

    @Override
    public long c() {
        return this.f30217a;
    }

    @Override
    public long d() {
        return this.f30219c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        return this.f30217a == nVar.c() && this.f30218b == nVar.b() && this.f30219c == nVar.d();
    }

    public int hashCode() {
        long j10 = this.f30217a;
        long j11 = this.f30218b;
        int i10 = (((((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003) ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003;
        long j12 = this.f30219c;
        return i10 ^ ((int) ((j12 >>> 32) ^ j12));
    }

    public String toString() {
        return "StartupTime{epochMillis=" + this.f30217a + ", elapsedRealtime=" + this.f30218b + ", uptimeMillis=" + this.f30219c + "}";
    }
}
