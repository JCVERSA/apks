package com.google.android.datatransport.runtime.backends;

final class a extends BackendResponse {

    private final BackendResponse.Status f23706a;

    private final long f23707b;

    a(BackendResponse.Status status, long j10) {
        if (status == null) {
            throw new NullPointerException("Null status");
        }
        this.f23706a = status;
        this.f23707b = j10;
    }

    @Override
    public long b() {
        return this.f23707b;
    }

    @Override
    public BackendResponse.Status c() {
        return this.f23706a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof BackendResponse)) {
            return false;
        }
        BackendResponse backendResponse = (BackendResponse) obj;
        return this.f23706a.equals(backendResponse.c()) && this.f23707b == backendResponse.b();
    }

    public int hashCode() {
        int iHashCode = (this.f23706a.hashCode() ^ 1000003) * 1000003;
        long j10 = this.f23707b;
        return iHashCode ^ ((int) (j10 ^ (j10 >>> 32)));
    }

    public String toString() {
        return "BackendResponse{status=" + this.f23706a + ", nextRequestWaitMillis=" + this.f23707b + "}";
    }
}
