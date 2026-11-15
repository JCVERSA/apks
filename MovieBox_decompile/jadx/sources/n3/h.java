package n3;

import androidx.media3.common.util.a1;
import h3.k;
import java.util.Collections;
import java.util.List;
import java.util.Map;

final class h implements k {

    private final c f66926a;

    private final long[] f66927b;

    private final Map f66928c;

    private final Map f66929d;

    private final Map f66930e;

    public h(c cVar, Map map, Map map2, Map map3) {
        this.f66926a = cVar;
        this.f66929d = map2;
        this.f66930e = map3;
        this.f66928c = map != null ? Collections.unmodifiableMap(map) : Collections.emptyMap();
        this.f66927b = cVar.j();
    }

    @Override
    public List getCues(long j10) {
        return this.f66926a.h(j10, this.f66928c, this.f66929d, this.f66930e);
    }

    @Override
    public long getEventTime(int i10) {
        return this.f66927b[i10];
    }

    @Override
    public int getEventTimeCount() {
        return this.f66927b.length;
    }

    @Override
    public int getNextEventTimeIndex(long j10) {
        int iD = a1.d(this.f66927b, j10, false, false);
        if (iD < this.f66927b.length) {
            return iD;
        }
        return -1;
    }
}
