package b2;

import androidx.media3.exoplayer.hls.playlist.HlsPlaylistParser;
import androidx.media3.exoplayer.upstream.q;

public final class a implements e {
    @Override
    public q.a a() {
        return new HlsPlaylistParser();
    }

    @Override
    public q.a b(androidx.media3.exoplayer.hls.playlist.d dVar, androidx.media3.exoplayer.hls.playlist.c cVar) {
        return new HlsPlaylistParser(dVar, cVar);
    }
}
