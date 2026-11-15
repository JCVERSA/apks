package androidx.media3.exoplayer.drm;

public abstract class k {
    public static void a(DrmSession drmSession, DrmSession drmSession2) {
        if (drmSession == drmSession2) {
            return;
        }
        if (drmSession2 != null) {
            drmSession2.e(null);
        }
        if (drmSession != null) {
            drmSession.f(null);
        }
    }
}
