package androidx.media3.exoplayer.drm;

import java.util.Map;
import java.util.UUID;

public final class z implements DrmSession {

    private final DrmSession.DrmSessionException f11302a;

    public z(DrmSession.DrmSessionException drmSessionException) {
        this.f11302a = (DrmSession.DrmSessionException) androidx.media3.common.util.a.e(drmSessionException);
    }

    @Override
    public final UUID a() {
        return androidx.media3.common.h.f9669a;
    }

    @Override
    public boolean b() {
        return false;
    }

    @Override
    public androidx.media3.decoder.b c() {
        return null;
    }

    @Override
    public boolean d(String str) {
        return false;
    }

    @Override
    public DrmSession.DrmSessionException getError() {
        return this.f11302a;
    }

    @Override
    public int getState() {
        return 1;
    }

    @Override
    public Map queryKeyStatus() {
        return null;
    }

    @Override
    public void e(r.a aVar) {
    }

    @Override
    public void f(r.a aVar) {
    }
}
