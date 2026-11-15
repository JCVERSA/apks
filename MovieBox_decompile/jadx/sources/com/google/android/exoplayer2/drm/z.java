package com.google.android.exoplayer2.drm;

import android.media.MediaDrmException;
import g9.u1;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class z implements c0 {
    @Override
    public int a() {
        return 1;
    }

    @Override
    public com.google.android.exoplayer2.decoder.b b(byte[] bArr) {
        throw new IllegalStateException();
    }

    @Override
    public boolean c(byte[] bArr, String str) {
        throw new IllegalStateException();
    }

    @Override
    public c0.a d(byte[] bArr, List list, int i10, HashMap map) {
        throw new IllegalStateException();
    }

    @Override
    public void f(byte[] bArr, u1 u1Var) {
        b0.a(this, bArr, u1Var);
    }

    @Override
    public c0.d getProvisionRequest() {
        throw new IllegalStateException();
    }

    @Override
    public byte[] openSession() throws MediaDrmException {
        throw new MediaDrmException("Attempting to open a session using a dummy ExoMediaDrm.");
    }

    @Override
    public byte[] provideKeyResponse(byte[] bArr, byte[] bArr2) {
        throw new IllegalStateException();
    }

    @Override
    public void provideProvisionResponse(byte[] bArr) {
        throw new IllegalStateException();
    }

    @Override
    public Map queryKeyStatus(byte[] bArr) {
        throw new IllegalStateException();
    }

    @Override
    public void restoreKeys(byte[] bArr, byte[] bArr2) {
        throw new IllegalStateException();
    }

    @Override
    public void release() {
    }

    @Override
    public void closeSession(byte[] bArr) {
    }

    @Override
    public void e(c0.b bVar) {
    }
}
