package la;

import da.i;
import java.util.Collections;
import java.util.List;

final class b implements i {

    public static final b f65671b = new b();

    private final List f65672a;

    public b(da.b bVar) {
        this.f65672a = Collections.singletonList(bVar);
    }

    @Override
    public List getCues(long j10) {
        return j10 >= 0 ? this.f65672a : Collections.emptyList();
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

    private b() {
        this.f65672a = Collections.emptyList();
    }
}
