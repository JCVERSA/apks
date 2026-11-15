package androidx.media3.exoplayer.drm;

import androidx.annotation.Nullable;
import androidx.media3.common.C;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.decoder.CryptoConfig;
import java.util.Map;
import java.util.UUID;

@UnstableApi
public final class ErrorStateDrmSession implements DrmSession {
    private final DrmSession.DrmSessionException error;

    public ErrorStateDrmSession(DrmSession.DrmSessionException drmSessionException) {
        this.error = (DrmSession.DrmSessionException) Assertions.checkNotNull(drmSessionException);
    }

    @Override
    public void acquire(@Nullable DrmSessionEventListener.EventDispatcher eventDispatcher) {
    }

    @Override
    @Nullable
    public CryptoConfig getCryptoConfig() {
        return null;
    }

    @Override
    @Nullable
    public DrmSession.DrmSessionException getError() {
        return this.error;
    }

    @Override
    @Nullable
    public byte[] getOfflineLicenseKeySetId() {
        return null;
    }

    @Override
    public final UUID getSchemeUuid() {
        return C.UUID_NIL;
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
    @Nullable
    public Map<String, String> queryKeyStatus() {
        return null;
    }

    @Override
    public void release(@Nullable DrmSessionEventListener.EventDispatcher eventDispatcher) {
    }

    @Override
    public boolean requiresSecureDecoder(String str) {
        return false;
    }
}
