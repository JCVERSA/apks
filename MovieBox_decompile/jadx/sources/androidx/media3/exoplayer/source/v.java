package androidx.media3.exoplayer.source;

import android.net.Uri;
import java.util.Map;
import x1.f4;

public interface v {

    public interface a {
        v a(f4 f4Var);
    }

    void a();

    long b();

    int c(k2.l0 l0Var);

    void d(androidx.media3.common.j jVar, Uri uri, Map map, long j10, long j11, k2.t tVar);

    void release();

    void seek(long j10, long j11);
}
