package androidx.media3.exoplayer.drm;

import android.media.MediaDrmException;
import android.os.PersistableBundle;
import androidx.annotation.Nullable;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.decoder.CryptoConfig;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@UnstableApi
public final class DummyExoMediaDrm implements ExoMediaDrm {
    public static DummyExoMediaDrm getInstance() {
        return new DummyExoMediaDrm();
    }

    @Override
    public void acquire() {
    }

    @Override
    public void closeSession(byte[] bArr) {
    }

    @Override
    public CryptoConfig createCryptoConfig(byte[] bArr) {
        throw new IllegalStateException();
    }

    @Override
    public int getCryptoType() {
        return 1;
    }

    @Override
    public ExoMediaDrm.KeyRequest getKeyRequest(byte[] bArr, @Nullable List<DrmInitData.SchemeData> list, int i, @Nullable HashMap<String, String> map) {
        throw new IllegalStateException();
    }

    @Override
    @Nullable
    public PersistableBundle getMetrics() {
        return null;
    }

    @Override
    public byte[] getPropertyByteArray(String str) {
        return Util.EMPTY_BYTE_ARRAY;
    }

    @Override
    public String getPropertyString(String str) {
        return "";
    }

    @Override
    public ExoMediaDrm.ProvisionRequest getProvisionRequest() {
        throw new IllegalStateException();
    }

    @Override
    public byte[] openSession() throws MediaDrmException {
        throw new MediaDrmException("Attempting to open a session using a dummy ExoMediaDrm.");
    }

    @Override
    @Nullable
    public byte[] provideKeyResponse(byte[] bArr, byte[] bArr2) {
        throw new IllegalStateException();
    }

    @Override
    public void provideProvisionResponse(byte[] bArr) {
        throw new IllegalStateException();
    }

    @Override
    public Map<String, String> queryKeyStatus(byte[] bArr) {
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
    public void setOnEventListener(@Nullable ExoMediaDrm.OnEventListener onEventListener) {
    }

    @Override
    public void setOnExpirationUpdateListener(@Nullable ExoMediaDrm.OnExpirationUpdateListener onExpirationUpdateListener) {
    }

    @Override
    public void setOnKeyStatusChangeListener(@Nullable ExoMediaDrm.OnKeyStatusChangeListener onKeyStatusChangeListener) {
    }

    @Override
    public void setPropertyByteArray(String str, byte[] bArr) {
    }

    @Override
    public void setPropertyString(String str, String str2) {
    }
}
