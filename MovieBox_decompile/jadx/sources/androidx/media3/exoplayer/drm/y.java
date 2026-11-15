package androidx.media3.exoplayer.drm;

import android.media.MediaDrmException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import x1.f4;

public final class y implements b0 {
    @Override
    public int a() {
        return 1;
    }

    @Override
    public androidx.media3.decoder.b b(byte[] bArr) {
        throw new IllegalStateException();
    }

    @Override
    public boolean c(byte[] bArr, String str) {
        throw new IllegalStateException();
    }

    @Override
    public b0.a d(byte[] bArr, List list, int i10, HashMap map) {
        throw new IllegalStateException();
    }

    @Override
    public void f(byte[] bArr, f4 f4Var) {
        a0.a(this, bArr, f4Var);
    }

    @Override
    public b0.d getProvisionRequest() {
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
    public void e(b0.b bVar) {
    }
}
