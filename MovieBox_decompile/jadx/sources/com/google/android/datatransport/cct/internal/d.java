package com.google.android.datatransport.cct.internal;

import java.util.List;

final class d extends m {

    private final List f23610a;

    d(List list) {
        if (list == null) {
            throw new NullPointerException("Null logRequests");
        }
        this.f23610a = list;
    }

    @Override
    public List c() {
        return this.f23610a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof m) {
            return this.f23610a.equals(((m) obj).c());
        }
        return false;
    }

    public int hashCode() {
        return this.f23610a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "BatchedLogRequest{logRequests=" + this.f23610a + "}";
    }
}
