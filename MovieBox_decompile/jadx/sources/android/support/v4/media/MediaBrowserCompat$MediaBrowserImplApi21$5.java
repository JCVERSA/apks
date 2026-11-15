package android.support.v4.media;

import android.os.Bundle;

class MediaBrowserCompat$MediaBrowserImplApi21$5 implements Runnable {
    final MediaBrowserCompat.g this$0;
    final MediaBrowserCompat.k val$callback;
    final Bundle val$extras;
    final String val$query;

    MediaBrowserCompat$MediaBrowserImplApi21$5(MediaBrowserCompat.g gVar, MediaBrowserCompat.k kVar, String str, Bundle bundle) {
        this.this$0 = gVar;
        this.val$callback = kVar;
        this.val$query = str;
        this.val$extras = bundle;
    }

    @Override
    public void run() {
        this.val$callback.a(this.val$query, this.val$extras);
    }
}
