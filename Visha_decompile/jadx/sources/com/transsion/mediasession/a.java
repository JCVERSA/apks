package com.transsion.mediasession;

import android.app.Application;
import android.content.Context;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaControllerCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Log;
import com.transsion.playercommon.mediasession.MediaBrowserAdapter;

public class a {
    public static a d;
    public C0228a a;
    public MediaBrowserAdapter b;
    public Context c;

    public class C0228a extends MediaBrowserAdapter.d {
        public C0228a() {
        }

        @Override
        public void a(MediaControllerCompat mediaControllerCompat) {
            super.a(mediaControllerCompat);
        }

        @Override
        public void b(MediaMetadataCompat mediaMetadataCompat) {
        }

        @Override
        public void c(PlaybackStateCompat playbackStateCompat) {
        }
    }

    public static a a() {
        if (d == null) {
            synchronized (a.class) {
                try {
                    if (d == null) {
                        d = new a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return d;
    }

    public void b(Application application) {
        if (application == null) {
            Log.e("MediaSessionManager", "Application is null");
            return;
        }
        if (this.b != null) {
            return;
        }
        Context applicationContext = application.getApplicationContext();
        this.c = applicationContext;
        this.b = new MediaBrowserAdapter(applicationContext, "com.transsion.mediasession.MediaSessionService");
        C0228a c0228a = new C0228a();
        this.a = c0228a;
        this.b.l(c0228a);
        MediaBrowserAdapter mediaBrowserAdapter = this.b;
        if (mediaBrowserAdapter != null) {
            mediaBrowserAdapter.n();
        }
    }
}
