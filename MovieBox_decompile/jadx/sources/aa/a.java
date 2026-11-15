package aa;

import com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParser;
import com.google.android.exoplayer2.upstream.b0;

public final class a implements e {
    @Override
    public b0.a a() {
        return new HlsPlaylistParser();
    }

    @Override
    public b0.a b(com.google.android.exoplayer2.source.hls.playlist.e eVar, com.google.android.exoplayer2.source.hls.playlist.d dVar) {
        return new HlsPlaylistParser(eVar, dVar);
    }
}
