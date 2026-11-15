package com.transsion.playercommon.mediasession;

import android.content.ComponentName;
import android.content.Context;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaControllerCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class MediaBrowserAdapter {
    public final String a;
    public final Context c;
    public MediaBrowserCompat h;
    public MediaControllerCompat i;
    public final List d = new ArrayList();
    public final MediaBrowserConnectionCallback e = new MediaBrowserConnectionCallback();
    public final MediaControllerCallback f = new MediaControllerCallback();
    public final MediaBrowserSubscriptionCallback g = new MediaBrowserSubscriptionCallback();
    public final b b = new b();

    public class MediaBrowserConnectionCallback extends MediaBrowserCompat.ConnectionCallback {

        public class a implements c {
            public a() {
            }

            @Override
            public void a(d dVar) {
                dVar.a(MediaBrowserAdapter.this.i);
            }
        }

        public MediaBrowserConnectionCallback() {
        }

        @Override
        public void onConnected() {
            try {
                Log.d("MediaBrowserAdapter", "onConnected: start" + MediaBrowserAdapter.this.h.isConnected());
                MediaBrowserAdapter mediaBrowserAdapter = MediaBrowserAdapter.this;
                mediaBrowserAdapter.i = new MediaControllerCompat(mediaBrowserAdapter.c, MediaBrowserAdapter.this.h.getSessionToken());
                MediaBrowserAdapter.this.i.registerCallback(MediaBrowserAdapter.this.f);
                MediaBrowserAdapter.this.f.onMetadataChanged(MediaBrowserAdapter.r(MediaBrowserAdapter.this.i));
                MediaBrowserAdapter.this.f.onPlaybackStateChanged(MediaBrowserAdapter.this.i.getPlaybackState());
                MediaBrowserAdapter.this.o(new a());
                Log.d("MediaBrowserAdapter", "onConnected: = " + MediaBrowserAdapter.this.h.isConnected());
                MediaBrowserAdapter.this.h.subscribe(MediaBrowserAdapter.this.h.getRoot(), MediaBrowserAdapter.this.g);
            } catch (Exception e) {
                Log.d("MediaBrowserAdapter", String.format("onConnected: Problem: %s", e.toString()));
                e.printStackTrace();
            }
        }

        @Override
        public void onConnectionFailed() {
            super.onConnectionFailed();
            Log.d("MediaBrowserAdapter", "onConnected: onConnectionFailed");
        }

        @Override
        public void onConnectionSuspended() {
            super.onConnectionSuspended();
            Log.d("MediaBrowserAdapter", "onConnected: onConnectionSuspended");
        }
    }

    public class MediaBrowserSubscriptionCallback extends MediaBrowserCompat.SubscriptionCallback {
        public MediaBrowserSubscriptionCallback() {
        }

        @Override
        public void onChildrenLoaded(String str, List list) {
            if (MediaBrowserAdapter.this.i == null) {
                return;
            }
            Log.d("MediaBrowserAdapter", "onChildrenLoaded");
            Iterator it = list.iterator();
            while (it.hasNext()) {
                MediaBrowserCompat.MediaItem mediaItem = (MediaBrowserCompat.MediaItem) it.next();
                Log.d("MediaBrowserAdapter", "onChildrenLoaded mediaItem = " + mediaItem);
                MediaBrowserAdapter.this.i.addQueueItem(mediaItem.getDescription());
            }
            MediaBrowserAdapter.this.i.getTransportControls().prepare();
        }
    }

    public class MediaControllerCallback extends MediaControllerCompat.Callback {

        public class a implements c {
            public final MediaMetadataCompat a;

            public a(MediaMetadataCompat mediaMetadataCompat) {
                this.a = mediaMetadataCompat;
            }

            @Override
            public void a(d dVar) {
                dVar.b(this.a);
            }
        }

        public class b implements c {
            public final PlaybackStateCompat a;

            public b(PlaybackStateCompat playbackStateCompat) {
                this.a = playbackStateCompat;
            }

            @Override
            public void a(d dVar) {
                dVar.c(this.a);
            }
        }

        public MediaControllerCallback() {
        }

        public final boolean a(MediaMetadataCompat mediaMetadataCompat, MediaMetadataCompat mediaMetadataCompat2) {
            if (mediaMetadataCompat == null || mediaMetadataCompat2 == null) {
                return false;
            }
            String strS = MediaBrowserAdapter.s(mediaMetadataCompat2, MediaMetadataCompat.METADATA_KEY_MEDIA_ID);
            String strS2 = MediaBrowserAdapter.s(mediaMetadataCompat, MediaMetadataCompat.METADATA_KEY_MEDIA_ID);
            if (strS == null || strS2 == null) {
                return false;
            }
            return strS.equals(strS2);
        }

        @Override
        public void onMetadataChanged(MediaMetadataCompat mediaMetadataCompat) {
            try {
                if (MediaBrowserAdapter.m(mediaMetadataCompat)) {
                    if (a(mediaMetadataCompat, MediaBrowserAdapter.this.b.a())) {
                        Log.d("MediaBrowserAdapter", "onMetadataChanged: Filtering out needless onMetadataChanged() update");
                    } else {
                        MediaBrowserAdapter.this.b.c(mediaMetadataCompat);
                        MediaBrowserAdapter.this.o(new a(mediaMetadataCompat));
                    }
                }
            } catch (RuntimeException e) {
                Log.w("MediaBrowserAdapter", "onMetadataChanged: ignore invalid metadata", e);
            }
        }

        @Override
        public void onPlaybackStateChanged(PlaybackStateCompat playbackStateCompat) {
            MediaBrowserAdapter.this.b.d(playbackStateCompat);
            MediaBrowserAdapter.this.o(new b(playbackStateCompat));
        }

        @Override
        public void onSessionDestroyed() {
            MediaBrowserAdapter.this.q();
            onPlaybackStateChanged(null);
            Log.d("MediaBrowserAdapter", "onSessionDestroyed: MusicService is dead!!!");
        }
    }

    public class a implements c {
        public a() {
        }

        @Override
        public void a(d dVar) {
            dVar.c(null);
        }
    }

    public class b {
        public PlaybackStateCompat a;
        public MediaMetadataCompat b;

        public b() {
        }

        public MediaMetadataCompat a() {
            return this.b;
        }

        public void b() {
            this.a = null;
            this.b = null;
        }

        public void c(MediaMetadataCompat mediaMetadataCompat) {
            this.b = mediaMetadataCompat;
        }

        public void d(PlaybackStateCompat playbackStateCompat) {
            this.a = playbackStateCompat;
        }
    }

    public interface c {
        void a(d dVar);
    }

    public static abstract class d {
        public void a(MediaControllerCompat mediaControllerCompat) {
        }

        public abstract void b(MediaMetadataCompat mediaMetadataCompat);

        public abstract void c(PlaybackStateCompat playbackStateCompat);
    }

    public MediaBrowserAdapter(Context context, String str) {
        this.c = context;
        this.a = str;
    }

    public static boolean m(MediaMetadataCompat mediaMetadataCompat) {
        if (mediaMetadataCompat == null) {
            return false;
        }
        try {
            mediaMetadataCompat.getString(MediaMetadataCompat.METADATA_KEY_TITLE);
            return true;
        } catch (RuntimeException e) {
            Log.w("MediaBrowserAdapter", "isMetadataReadable: ignore invalid metadata", e);
            return false;
        }
    }

    public static MediaMetadataCompat r(MediaControllerCompat mediaControllerCompat) {
        try {
            return mediaControllerCompat.getMetadata();
        } catch (RuntimeException e) {
            Log.w("MediaBrowserAdapter", "safeGetMetadata failed", e);
            return null;
        }
    }

    public static String s(MediaMetadataCompat mediaMetadataCompat, String str) {
        try {
            return mediaMetadataCompat.getString(str);
        } catch (RuntimeException e) {
            Log.w("MediaBrowserAdapter", "safeGetMetadataString failed, key=" + str, e);
            return null;
        }
    }

    public void l(d dVar) {
        if (dVar != null) {
            this.d.add(dVar);
        }
    }

    public void n() {
        if (this.h == null) {
            MediaBrowserCompat mediaBrowserCompat = new MediaBrowserCompat(this.c, new ComponentName(this.c, this.a), this.e, null);
            this.h = mediaBrowserCompat;
            mediaBrowserCompat.connect();
        }
        Log.d("MediaBrowserAdapter", "onStart: Creating MediaBrowser, and connecting =" + this.h);
    }

    public void o(c cVar) {
        for (d dVar : this.d) {
            if (dVar != null) {
                try {
                    cVar.a(dVar);
                } catch (Exception unused) {
                    p(dVar);
                }
            }
        }
    }

    public void p(d dVar) {
        if (dVar == null || !this.d.contains(dVar)) {
            return;
        }
        this.d.remove(dVar);
    }

    public final void q() {
        this.b.b();
        o(new a());
        Log.d("MediaBrowserAdapter", "resetState: ");
    }
}
