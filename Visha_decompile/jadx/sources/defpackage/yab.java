package defpackage;

import java.util.Collections;
import java.util.List;
import java.util.Map;

public final class yab implements l2a {
    public final uab b;
    public final long[] c;
    public final Map d;
    public final Map e;
    public final Map f;

    public yab(uab uabVar, Map map, Map map2, Map map3) {
        this.b = uabVar;
        this.e = map2;
        this.f = map3;
        this.d = map != null ? Collections.unmodifiableMap(map) : Collections.emptyMap();
        this.c = uabVar.j();
    }

    @Override
    public List getCues(long j) {
        return this.b.h(j, this.d, this.e, this.f);
    }

    @Override
    public long getEventTime(int i) {
        return this.c[i];
    }

    @Override
    public int getEventTimeCount() {
        return this.c.length;
    }

    @Override
    public int getNextEventTimeIndex(long j) {
        int iE = blb.e(this.c, j, false, false);
        if (iE < this.c.length) {
            return iE;
        }
        return -1;
    }
}
