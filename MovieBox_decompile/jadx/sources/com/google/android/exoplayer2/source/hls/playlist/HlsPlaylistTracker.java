package com.google.android.exoplayer2.source.hls.playlist;

import android.net.Uri;
import com.google.android.exoplayer2.source.hls.f;
import com.google.android.exoplayer2.source.p;
import com.google.android.exoplayer2.upstream.z;
import java.io.IOException;

public interface HlsPlaylistTracker {

    public static final class PlaylistResetException extends IOException {
        public final Uri url;

        public PlaylistResetException(Uri uri) {
            this.url = uri;
        }
    }

    public static final class PlaylistStuckException extends IOException {
        public final Uri url;

        public PlaylistStuckException(Uri uri) {
            this.url = uri;
        }
    }

    public interface a {
        HlsPlaylistTracker a(f fVar, z zVar, aa.e eVar);
    }

    public interface b {
        boolean a(Uri uri, z.c cVar, boolean z10);

        void c();
    }

    public interface c {
        void f(d dVar);
    }

    void a(Uri uri);

    long b();

    e c();

    void d(Uri uri);

    boolean e(Uri uri);

    boolean f();

    boolean g(Uri uri, long j10);

    void h();

    d i(Uri uri, boolean z10);

    void k(b bVar);

    void m(b bVar);

    void o(Uri uri, p.a aVar, c cVar);

    void stop();
}
