package androidx.media;

import android.os.Bundle;
import android.os.IBinder;
import java.util.Iterator;

class MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2 implements Runnable {
    final MediaBrowserServiceCompat.j this$1;
    final Bundle val$options;
    final String val$parentId;

    MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2(MediaBrowserServiceCompat.j jVar, String str, Bundle bundle) {
        this.val$parentId = str;
        this.val$options = bundle;
    }

    @Override
    public void run() {
        Iterator<Object> it = this.this$1.f9447a.f9403e.keySet().iterator();
        while (it.hasNext()) {
            this.this$1.c((MediaBrowserServiceCompat.ConnectionRecord) this.this$1.f9447a.f9403e.get((IBinder) it.next()), this.val$parentId, this.val$options);
        }
    }
}
