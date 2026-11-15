package g2;

import androidx.media3.exoplayer.c4;
import androidx.media3.exoplayer.v2;
import java.util.List;

public interface i {
    long b(long j10, c4 c4Var);

    void c(e eVar);

    boolean d(e eVar, boolean z10, androidx.media3.exoplayer.upstream.m.c cVar, androidx.media3.exoplayer.upstream.m mVar);

    void e(v2 v2Var, long j10, List list, g gVar);

    boolean f(long j10, e eVar, List list);

    int getPreferredQueueSize(long j10, List list);

    void maybeThrowError();

    void release();
}
