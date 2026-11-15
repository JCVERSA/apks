package com.mbridge.msdk.thrid.okhttp.internal.connection;

import java.io.IOException;

public final class e extends RuntimeException {

    private IOException f37124a;

    private IOException f37125b;

    public e(IOException iOException) {
        super(iOException);
        this.f37124a = iOException;
        this.f37125b = iOException;
    }

    public IOException a() {
        return this.f37124a;
    }

    public IOException b() {
        return this.f37125b;
    }

    public void a(IOException iOException) {
        com.mbridge.msdk.thrid.okhttp.internal.c.a((Throwable) this.f37124a, (Throwable) iOException);
        this.f37125b = iOException;
    }
}
