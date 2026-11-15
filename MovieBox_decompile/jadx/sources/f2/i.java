package f2;

import android.net.Uri;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;

public final class i {

    private static final AtomicLong f59909h = new AtomicLong();

    public final long f59910a;

    public final w1.h f59911b;

    public final Uri f59912c;

    public final Map f59913d;

    public final long f59914e;

    public final long f59915f;

    public final long f59916g;

    public i(long j10, w1.h hVar, long j11) {
        this(j10, hVar, hVar.f74097a, Collections.emptyMap(), j11, 0L, 0L);
    }

    public static long a() {
        return f59909h.getAndIncrement();
    }

    public i(long j10, w1.h hVar, Uri uri, Map map, long j11, long j12, long j13) {
        this.f59910a = j10;
        this.f59911b = hVar;
        this.f59912c = uri;
        this.f59913d = map;
        this.f59914e = j11;
        this.f59915f = j12;
        this.f59916g = j13;
    }
}
