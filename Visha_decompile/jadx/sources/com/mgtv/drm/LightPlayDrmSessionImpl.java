package com.mgtv.drm;

import com.mgtv.drm.jni.LightPlayNative;

class LightPlayDrmSessionImpl implements ILightPlayDrmSession {
    private long sessionHandler;

    public LightPlayDrmSessionImpl() throws IllegalStateException {
        long jOpenSession = LightPlayNative.openSession();
        this.sessionHandler = jOpenSession;
        if (jOpenSession == 0) {
            throw new IllegalStateException("open session failed");
        }
    }

    @Override
    public void close() {
        long j = this.sessionHandler;
        if (j != 0) {
            LightPlayNative.closeSession(j);
            this.sessionHandler = 0L;
        }
    }

    @Override
    public byte[] getLicenseRequest() {
        long j = this.sessionHandler;
        if (j != 0) {
            return LightPlayNative.getLicenseRequest(j);
        }
        return null;
    }

    @Override
    public int provideLicenseResponse(byte[] bArr) {
        long j = this.sessionHandler;
        if (j != 0) {
            return LightPlayNative.provideLicenseResponse(j, bArr);
        }
        return -1;
    }
}
