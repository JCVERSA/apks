package ga;

import da.i;
import java.util.List;

final class b implements i {

    private final List f60956a;

    public b(List list) {
        this.f60956a = list;
    }

    @Override
    public List getCues(long j10) {
        return this.f60956a;
    }

    @Override
    public long getEventTime(int i10) {
        return 0L;
    }

    @Override
    public int getEventTimeCount() {
        return 1;
    }

    @Override
    public int getNextEventTimeIndex(long j10) {
        return -1;
    }
}
