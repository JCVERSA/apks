package i3;

import h3.k;
import java.util.Collections;
import java.util.List;

final class f implements k {

    private final List f61829a;

    public f(List list) {
        this.f61829a = list;
    }

    @Override
    public List getCues(long j10) {
        return j10 >= 0 ? this.f61829a : Collections.emptyList();
    }

    @Override
    public long getEventTime(int i10) {
        androidx.media3.common.util.a.a(i10 == 0);
        return 0L;
    }

    @Override
    public int getEventTimeCount() {
        return 1;
    }

    @Override
    public int getNextEventTimeIndex(long j10) {
        return j10 < 0 ? 0 : -1;
    }
}
