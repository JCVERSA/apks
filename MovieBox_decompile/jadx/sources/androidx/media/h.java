package androidx.media;

import android.media.session.MediaSessionManager;

final class h extends i {

    final MediaSessionManager.RemoteUserInfo f9463d;

    h(String str, int i10, int i11) {
        super(str, i10, i11);
        this.f9463d = d.a(str, i10, i11);
    }

    static String a(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
        return remoteUserInfo.getPackageName();
    }

    h(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
        super(remoteUserInfo.getPackageName(), remoteUserInfo.getPid(), remoteUserInfo.getUid());
        this.f9463d = remoteUserInfo;
    }
}
