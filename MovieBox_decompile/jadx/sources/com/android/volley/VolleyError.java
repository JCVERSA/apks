package com.android.volley;

public class VolleyError extends Exception {
    public final g networkResponse;
    private long networkTimeMs;

    public VolleyError() {
        this.networkResponse = null;
    }

    public long getNetworkTimeMs() {
        return this.networkTimeMs;
    }

    void setNetworkTimeMs(long j10) {
        this.networkTimeMs = j10;
    }

    public VolleyError(g gVar) {
        this.networkResponse = gVar;
    }

    public VolleyError(String str) {
        super(str);
        this.networkResponse = null;
    }

    public VolleyError(String str, Throwable th2) {
        super(str, th2);
        this.networkResponse = null;
    }

    public VolleyError(Throwable th2) {
        super(th2);
        this.networkResponse = null;
    }
}
