package androidx.media;

import android.media.session.MediaSessionManager;
import android.os.Build;
import android.text.TextUtils;

public final class b {

    c f9462a;

    public b(String str, int i10, int i11) {
        if (str == null) {
            throw new NullPointerException("package shouldn't be null");
        }
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("packageName should be nonempty");
        }
        if (Build.VERSION.SDK_INT >= 28) {
            this.f9462a = new h(str, i10, i11);
        } else {
            this.f9462a = new i(str, i10, i11);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof b) {
            return this.f9462a.equals(((b) obj).f9462a);
        }
        return false;
    }

    public int hashCode() {
        return this.f9462a.hashCode();
    }

    public b(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
        String strA = h.a(remoteUserInfo);
        if (strA != null) {
            if (!TextUtils.isEmpty(strA)) {
                this.f9462a = new h(remoteUserInfo);
                return;
            }
            throw new IllegalArgumentException("packageName should be nonempty");
        }
        throw new NullPointerException("package shouldn't be null");
    }
}
