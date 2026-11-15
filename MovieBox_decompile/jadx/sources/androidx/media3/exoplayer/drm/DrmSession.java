package androidx.media3.exoplayer.drm;

import java.io.IOException;
import java.util.Map;
import java.util.UUID;

public interface DrmSession {

    public static class DrmSessionException extends IOException {
        public final int errorCode;

        public DrmSessionException(Throwable th2, int i10) {
            super(th2);
            this.errorCode = i10;
        }
    }

    UUID a();

    boolean b();

    androidx.media3.decoder.b c();

    boolean d(String str);

    void e(r.a aVar);

    void f(r.a aVar);

    DrmSessionException getError();

    int getState();

    Map queryKeyStatus();
}
