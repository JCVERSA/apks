package com.google.android.exoplayer2.drm;

import defpackage.to0;
import defpackage.ul1;
import defpackage.zi;
import java.util.Map;
import java.util.UUID;

public final class f implements DrmSession {
    public final DrmSession.DrmSessionException a;

    public f(DrmSession.DrmSessionException drmSessionException) {
        this.a = (DrmSession.DrmSessionException) zi.e(drmSessionException);
    }

    @Override
    public void a(b.a aVar) {
    }

    @Override
    public void c(b.a aVar) {
    }

    @Override
    public ul1 getCryptoConfig() {
        return null;
    }

    @Override
    public DrmSession.DrmSessionException getError() {
        return this.a;
    }

    @Override
    public final UUID getSchemeUuid() {
        return to0.a;
    }

    @Override
    public int getState() {
        return 1;
    }

    @Override
    public boolean playClearSamplesWithoutKeys() {
        return false;
    }

    @Override
    public Map queryKeyStatus() {
        return null;
    }

    @Override
    public boolean requiresSecureDecoder(String str) {
        return false;
    }
}
