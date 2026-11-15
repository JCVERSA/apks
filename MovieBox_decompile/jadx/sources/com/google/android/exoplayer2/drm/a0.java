package com.google.android.exoplayer2.drm;

import java.util.Map;
import java.util.UUID;

public final class a0 implements DrmSession {

    private final DrmSession.DrmSessionException f24326a;

    public a0(DrmSession.DrmSessionException drmSessionException) {
        this.f24326a = (DrmSession.DrmSessionException) com.google.android.exoplayer2.util.a.e(drmSessionException);
    }

    @Override
    public final UUID a() {
        return com.google.android.exoplayer2.l.f24512a;
    }

    @Override
    public boolean b() {
        return false;
    }

    @Override
    public com.google.android.exoplayer2.decoder.b c() {
        return null;
    }

    @Override
    public boolean d(String str) {
        return false;
    }

    @Override
    public DrmSession.DrmSessionException getError() {
        return this.f24326a;
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
    public void e(s.a aVar) {
    }

    @Override
    public void f(s.a aVar) {
    }
}
