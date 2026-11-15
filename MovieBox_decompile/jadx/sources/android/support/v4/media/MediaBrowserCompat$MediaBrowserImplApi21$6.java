package android.support.v4.media;

import android.os.Bundle;

class MediaBrowserCompat$MediaBrowserImplApi21$6 implements Runnable {
    final MediaBrowserCompat.g this$0;
    final String val$action;
    final MediaBrowserCompat.d val$callback;
    final Bundle val$extras;

    MediaBrowserCompat$MediaBrowserImplApi21$6(MediaBrowserCompat.g gVar, MediaBrowserCompat.d dVar, String str, Bundle bundle) {
        this.this$0 = gVar;
        this.val$callback = dVar;
        this.val$action = str;
        this.val$extras = bundle;
    }

    @Override
    public void run() {
        this.val$callback.a(this.val$action, this.val$extras, null);
    }
}
