package androidx.media;

import android.os.Bundle;

class MediaBrowserServiceCompat$MediaBrowserServiceImplBase$3 implements Runnable {
    final MediaBrowserServiceCompat.j this$1;
    final Bundle val$options;
    final String val$parentId;
    final b val$remoteUserInfo;

    MediaBrowserServiceCompat$MediaBrowserServiceImplBase$3(MediaBrowserServiceCompat.j jVar, b bVar, String str, Bundle bundle) {
        this.val$remoteUserInfo = bVar;
        this.val$parentId = str;
        this.val$options = bundle;
    }

    @Override
    public void run() {
        for (int i10 = 0; i10 < this.this$1.f9447a.f9403e.size(); i10++) {
            MediaBrowserServiceCompat.ConnectionRecord connectionRecord = (MediaBrowserServiceCompat.ConnectionRecord) this.this$1.f9447a.f9403e.valueAt(i10);
            if (connectionRecord.f9410d.equals(this.val$remoteUserInfo)) {
                this.this$1.c(connectionRecord, this.val$parentId, this.val$options);
                return;
            }
        }
    }
}
