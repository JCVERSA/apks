package u8;

final class a extends b {

    private final long f73012a;

    a(long j10) {
        this.f73012a = j10;
    }

    @Override
    public long c() {
        return this.f73012a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof b) && this.f73012a == ((b) obj).c();
    }

    public int hashCode() {
        long j10 = this.f73012a;
        return ((int) (j10 ^ (j10 >>> 32))) ^ 1000003;
    }

    public String toString() {
        return "LogResponse{nextRequestWaitMillis=" + this.f73012a + "}";
    }
}
