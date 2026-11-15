package v9;

import android.net.Uri;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;

public final class h {

    private static final AtomicLong f73489h = new AtomicLong();

    public final long f73490a;

    public final com.google.android.exoplayer2.upstream.n f73491b;

    public final Uri f73492c;

    public final Map f73493d;

    public final long f73494e;

    public final long f73495f;

    public final long f73496g;

    public h(long j10, com.google.android.exoplayer2.upstream.n nVar, long j11) {
        this(j10, nVar, nVar.f26665a, Collections.emptyMap(), j11, 0L, 0L);
    }

    public static long a() {
        return f73489h.getAndIncrement();
    }

    public h(long j10, com.google.android.exoplayer2.upstream.n nVar, Uri uri, Map map, long j11, long j12, long j13) {
        this.f73490a = j10;
        this.f73491b = nVar;
        this.f73492c = uri;
        this.f73493d = map;
        this.f73494e = j11;
        this.f73495f = j12;
        this.f73496g = j13;
    }
}
