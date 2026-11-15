package b2;

import androidx.media3.exoplayer.offline.r;
import androidx.media3.exoplayer.upstream.q;
import java.util.List;

public final class c implements e {

    private final e f15502a;

    private final List f15503b;

    public c(e eVar, List list) {
        this.f15502a = eVar;
        this.f15503b = list;
    }

    @Override
    public q.a a() {
        return new r(this.f15502a.a(), this.f15503b);
    }

    @Override
    public q.a b(androidx.media3.exoplayer.hls.playlist.d dVar, androidx.media3.exoplayer.hls.playlist.c cVar) {
        return new r(this.f15502a.b(dVar, cVar), this.f15503b);
    }
}
