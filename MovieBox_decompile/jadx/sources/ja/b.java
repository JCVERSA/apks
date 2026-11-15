package ja;

import com.google.android.exoplayer2.util.p0;
import da.i;
import java.util.Collections;
import java.util.List;

final class b implements i {

    private final da.b[] f63086a;

    private final long[] f63087b;

    public b(da.b[] bVarArr, long[] jArr) {
        this.f63086a = bVarArr;
        this.f63087b = jArr;
    }

    @Override
    public List getCues(long j10) {
        da.b bVar;
        int i10 = p0.i(this.f63087b, j10, true, false);
        return (i10 == -1 || (bVar = this.f63086a[i10]) == da.b.f58922r) ? Collections.emptyList() : Collections.singletonList(bVar);
    }

    @Override
    public long getEventTime(int i10) {
        com.google.android.exoplayer2.util.a.a(i10 >= 0);
        com.google.android.exoplayer2.util.a.a(i10 < this.f63087b.length);
        return this.f63087b[i10];
    }

    @Override
    public int getEventTimeCount() {
        return this.f63087b.length;
    }

    @Override
    public int getNextEventTimeIndex(long j10) {
        int iE = p0.e(this.f63087b, j10, false, false);
        if (iE < this.f63087b.length) {
            return iE;
        }
        return -1;
    }
}
