package ia;

import com.google.android.exoplayer2.util.p0;
import da.i;
import java.util.Collections;
import java.util.List;

final class d implements i {

    private final List f62035a;

    private final List f62036b;

    public d(List list, List list2) {
        this.f62035a = list;
        this.f62036b = list2;
    }

    @Override
    public List getCues(long j10) {
        int iG = p0.g(this.f62036b, Long.valueOf(j10), true, false);
        return iG == -1 ? Collections.emptyList() : (List) this.f62035a.get(iG);
    }

    @Override
    public long getEventTime(int i10) {
        com.google.android.exoplayer2.util.a.a(i10 >= 0);
        com.google.android.exoplayer2.util.a.a(i10 < this.f62036b.size());
        return ((Long) this.f62036b.get(i10)).longValue();
    }

    @Override
    public int getEventTimeCount() {
        return this.f62036b.size();
    }

    @Override
    public int getNextEventTimeIndex(long j10) {
        int iD = p0.d(this.f62036b, Long.valueOf(j10), false, false);
        if (iD < this.f62036b.size()) {
            return iD;
        }
        return -1;
    }
}
