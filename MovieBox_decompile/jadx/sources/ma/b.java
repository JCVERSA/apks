package ma;

import java.util.Collections;
import java.util.List;

final class b implements da.i {

    private final List f66295a;

    public b(List list) {
        this.f66295a = Collections.unmodifiableList(list);
    }

    @Override
    public List getCues(long j10) {
        return j10 >= 0 ? this.f66295a : Collections.emptyList();
    }

    @Override
    public long getEventTime(int i10) {
        com.google.android.exoplayer2.util.a.a(i10 == 0);
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
