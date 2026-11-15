package com.google.android.exoplayer2.drm;

import defpackage.ul1;
import java.io.IOException;
import java.util.Map;
import java.util.UUID;

public interface DrmSession {

    public static class DrmSessionException extends IOException {
        public final int errorCode;

        public DrmSessionException(Throwable th, int i) {
            super(th);
            this.errorCode = i;
        }
    }

    static void b(DrmSession drmSession, DrmSession drmSession2) {
        if (drmSession == drmSession2) {
            return;
        }
        if (drmSession2 != null) {
            drmSession2.c(null);
        }
        if (drmSession != null) {
            drmSession.a(null);
        }
    }

    void a(b.a aVar);

    void c(b.a aVar);

    ul1 getCryptoConfig();

    DrmSessionException getError();

    UUID getSchemeUuid();

    int getState();

    boolean playClearSamplesWithoutKeys();

    Map queryKeyStatus();

    boolean requiresSecureDecoder(String str);
}
