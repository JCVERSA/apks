package aa;

import com.google.android.exoplayer2.upstream.b0;
import java.util.List;

public final class c implements e {

    private final e f258a;

    private final List f259b;

    public c(e eVar, List list) {
        this.f258a = eVar;
        this.f259b = list;
    }

    @Override
    public b0.a a() {
        return new com.google.android.exoplayer2.offline.d(this.f258a.a(), this.f259b);
    }

    @Override
    public b0.a b(com.google.android.exoplayer2.source.hls.playlist.e eVar, com.google.android.exoplayer2.source.hls.playlist.d dVar) {
        return new com.google.android.exoplayer2.offline.d(this.f258a.b(eVar, dVar), this.f259b);
    }
}
