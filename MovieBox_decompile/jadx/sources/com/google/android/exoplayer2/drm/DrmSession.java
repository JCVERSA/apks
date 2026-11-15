package com.google.android.exoplayer2.drm;

import java.io.IOException;
import java.util.Map;
import java.util.UUID;

public interface DrmSession {

    public static class DrmSessionException extends IOException {
        public final int errorCode;

        public DrmSessionException(Throwable th2, int i10) {
            super(th2);
            this.errorCode = i10;
        }
    }

    UUID a();

    boolean b();

    com.google.android.exoplayer2.decoder.b c();

    boolean d(String str);

    void e(s.a aVar);

    void f(s.a aVar);

    DrmSessionException getError();

    int getState();

    Map queryKeyStatus();
}
