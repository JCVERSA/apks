package com.google.android.exoplayer2.drm;

import android.media.MediaDrmException;
import androidx.annotation.Nullable;
import defpackage.ul1;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class e implements g {
    @Override
    public void closeSession(byte[] bArr) {
    }

    @Override
    public ul1 createCryptoConfig(byte[] bArr) {
        throw new IllegalStateException();
    }

    @Override
    public int getCryptoType() {
        return 1;
    }

    @Override
    public g.a getKeyRequest(byte[] bArr, List list, int i, HashMap map) {
        throw new IllegalStateException();
    }

    @Override
    public g.C0079g getProvisionRequest() {
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
    public void release() {
    }

    @Override
    public boolean requiresSecureDecoder(byte[] bArr, String str) {
        throw new IllegalStateException();
    }

    @Override
    public void restoreKeys(byte[] bArr, byte[] bArr2) {
        throw new IllegalStateException();
    }

    @Override
    public void setOnEventListener(@Nullable g.c cVar) {
    }

    @Override
    public void setOnExpirationUpdateListener(@Nullable g.d dVar) {
    }

    @Override
    public void setOnKeyStatusChangeListener(@Nullable g.e eVar) {
    }
}
