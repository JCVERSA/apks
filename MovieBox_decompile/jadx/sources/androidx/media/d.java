package androidx.media;

import android.media.session.MediaSessionManager;

public abstract class d {
    public static MediaSessionManager.RemoteUserInfo a(String str, int i10, int i11) {
        return new MediaSessionManager.RemoteUserInfo(str, i10, i11);
    }
}
