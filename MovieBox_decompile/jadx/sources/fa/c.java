package fa;

import da.i;
import java.util.List;

final class c implements i {

    private final List f60109a;

    public c(List list) {
        this.f60109a = list;
    }

    @Override
    public List getCues(long j10) {
        return this.f60109a;
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
