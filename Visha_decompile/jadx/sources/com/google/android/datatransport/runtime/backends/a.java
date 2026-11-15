package com.google.android.datatransport.runtime.backends;

import org.apache.commons.text.StringSubstitutor;

public final class a extends BackendResponse {
    public final BackendResponse.Status a;
    public final long b;

    public a(BackendResponse.Status status, long j) {
        if (status == null) {
            throw new NullPointerException("Null status");
        }
        this.a = status;
        this.b = j;
    }

    @Override
    public long b() {
        return this.b;
    }

    @Override
    public BackendResponse.Status c() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof BackendResponse)) {
            return false;
        }
        BackendResponse backendResponse = (BackendResponse) obj;
        return this.a.equals(backendResponse.c()) && this.b == backendResponse.b();
    }

    public int hashCode() {
        int iHashCode = (this.a.hashCode() ^ 1000003) * 1000003;
        long j = this.b;
        return ((int) (j ^ (j >>> 32))) ^ iHashCode;
    }

    public String toString() {
        return "BackendResponse{status=" + this.a + ", nextRequestWaitMillis=" + this.b + StringSubstitutor.DEFAULT_VAR_END;
    }
}
