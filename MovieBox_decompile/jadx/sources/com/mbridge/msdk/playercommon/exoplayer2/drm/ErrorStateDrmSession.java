package com.mbridge.msdk.playercommon.exoplayer2.drm;

import com.mbridge.msdk.playercommon.exoplayer2.drm.ExoMediaCrypto;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import java.util.Map;

public final class ErrorStateDrmSession<T extends ExoMediaCrypto> implements DrmSession<T> {
    private final DrmSession.DrmSessionException error;

    public ErrorStateDrmSession(DrmSession.DrmSessionException drmSessionException) {
        this.error = (DrmSession.DrmSessionException) Assertions.checkNotNull(drmSessionException);
    }

    @Override
    public DrmSession.DrmSessionException getError() {
        return this.error;
    }

    @Override
    public T getMediaCrypto() {
        return null;
    }

    @Override
    public byte[] getOfflineLicenseKeySetId() {
        return null;
    }

    @Override
    public int getState() {
        return 1;
    }

    @Override
    public Map<String, String> queryKeyStatus() {
        return null;
    }
}
