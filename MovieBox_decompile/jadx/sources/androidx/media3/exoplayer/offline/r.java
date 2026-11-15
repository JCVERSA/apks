package androidx.media3.exoplayer.offline;

import android.net.Uri;
import java.io.InputStream;
import java.util.List;

public final class r implements androidx.media3.exoplayer.upstream.q.a {

    private final androidx.media3.exoplayer.upstream.q.a f12117a;

    private final List f12118b;

    public r(androidx.media3.exoplayer.upstream.q.a aVar, List list) {
        this.f12117a = aVar;
        this.f12118b = list;
    }

    @Override
    public q parse(Uri uri, InputStream inputStream) {
        q qVar = (q) this.f12117a.parse(uri, inputStream);
        List list = this.f12118b;
        return (list == null || list.isEmpty()) ? qVar : (q) qVar.copy(this.f12118b);
    }
}
