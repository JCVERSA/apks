package ka;

import com.google.android.exoplayer2.util.p0;
import da.i;
import java.util.Collections;
import java.util.List;
import java.util.Map;

final class h implements i {

    private final d f63917a;

    private final long[] f63918b;

    private final Map f63919c;

    private final Map f63920d;

    private final Map f63921e;

    public h(d dVar, Map map, Map map2, Map map3) {
        this.f63917a = dVar;
        this.f63920d = map2;
        this.f63921e = map3;
        this.f63919c = map != null ? Collections.unmodifiableMap(map) : Collections.emptyMap();
        this.f63918b = dVar.j();
    }

    @Override
    public List getCues(long j10) {
        return this.f63917a.h(j10, this.f63919c, this.f63920d, this.f63921e);
    }

    @Override
    public long getEventTime(int i10) {
        return this.f63918b[i10];
    }

    @Override
    public int getEventTimeCount() {
        return this.f63918b.length;
    }

    @Override
    public int getNextEventTimeIndex(long j10) {
        int iE = p0.e(this.f63918b, j10, false, false);
        if (iE < this.f63918b.length) {
            return iE;
        }
        return -1;
    }
}
