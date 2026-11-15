package android.support.v4.media;

class MediaBrowserCompat$MediaBrowserImplApi21$2 implements Runnable {
    final MediaBrowserCompat.g this$0;
    final MediaBrowserCompat.e val$cb;
    final String val$mediaId;

    MediaBrowserCompat$MediaBrowserImplApi21$2(MediaBrowserCompat.g gVar, MediaBrowserCompat.e eVar, String str) {
        this.this$0 = gVar;
        this.val$cb = eVar;
        this.val$mediaId = str;
    }

    @Override
    public void run() {
        this.val$cb.a(this.val$mediaId);
    }
}
