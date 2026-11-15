package androidx.media;

import android.os.RemoteException;
import android.support.v4.media.session.MediaSessionCompat;
import android.util.Log;
import java.util.Iterator;

class MediaBrowserServiceCompat$MediaBrowserServiceImplBase$1 implements Runnable {
    final MediaBrowserServiceCompat.j this$1;
    final MediaSessionCompat.Token val$token;

    MediaBrowserServiceCompat$MediaBrowserServiceImplBase$1(MediaBrowserServiceCompat.j jVar, MediaSessionCompat.Token token) {
        this.val$token = token;
    }

    @Override
    public void run() {
        Iterator<Object> it = this.this$1.f9447a.f9403e.values().iterator();
        while (it.hasNext()) {
            MediaBrowserServiceCompat.ConnectionRecord connectionRecord = (MediaBrowserServiceCompat.ConnectionRecord) it.next();
            try {
                connectionRecord.f9412f.c(connectionRecord.f9414h.d(), this.val$token, connectionRecord.f9414h.c());
            } catch (RemoteException unused) {
                Log.w("MBServiceCompat", "Connection for " + connectionRecord.f9407a + " is no longer valid.");
                it.remove();
            }
        }
    }
}
