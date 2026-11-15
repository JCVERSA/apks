package h3;

import androidx.media3.common.util.a1;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Ordering;
import com.google.common.collect.g3;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

public final class g implements k {

    private static final Ordering f61241c = Ordering.natural().onResultOf(new com.google.common.base.f() {
        @Override
        public final Object apply(Object obj) {
            return g.c((e) obj);
        }
    });

    private final ImmutableList f61242a;

    private final long[] f61243b;

    /* JADX WARN: Code duplicated, block: B:23:0x00b4  */
    /* JADX WARN: Multi-variable type inference failed */
    public g(List list) {
        if (list.size() == 1) {
            e eVar = (e) g3.j(list);
            long jD = d(eVar.f61238b);
            if (eVar.f61239c == C.TIME_UNSET) {
                this.f61242a = ImmutableList.of(eVar.f61237a);
                this.f61243b = new long[]{jD};
                return;
            } else {
                this.f61242a = ImmutableList.of(eVar.f61237a, ImmutableList.of());
                this.f61243b = new long[]{jD, eVar.f61239c + jD};
                return;
            }
        }
        long[] jArr = new long[list.size() * 2];
        this.f61243b = jArr;
        Arrays.fill(jArr, Long.MAX_VALUE);
        ArrayList arrayList = new ArrayList();
        ImmutableList immutableListSortedCopyOf = ImmutableList.sortedCopyOf(f61241c, list);
        int i10 = 0;
        for (int i11 = 0; i11 < immutableListSortedCopyOf.size(); i11++) {
            e eVar2 = (e) immutableListSortedCopyOf.get(i11);
            long jD2 = d(eVar2.f61238b);
            long j10 = eVar2.f61239c + jD2;
            if (i10 != 0) {
                int i12 = i10 - 1;
                long j11 = this.f61243b[i12];
                if (j11 < jD2) {
                    this.f61243b[i10] = jD2;
                    arrayList.add(eVar2.f61237a);
                    i10++;
                } else if (j11 == jD2 && ((ImmutableList) arrayList.get(i12)).isEmpty()) {
                    arrayList.set(i12, eVar2.f61237a);
                } else {
                    androidx.media3.common.util.u.h("CuesWithTimingSubtitle", "Truncating unsupported overlapping cues.");
                    this.f61243b[i12] = jD2;
                    arrayList.set(i12, eVar2.f61237a);
                }
            } else {
                this.f61243b[i10] = jD2;
                arrayList.add(eVar2.f61237a);
                i10++;
            }
            if (eVar2.f61239c != C.TIME_UNSET) {
                this.f61243b[i10] = j10;
                arrayList.add(ImmutableList.of());
                i10++;
            }
        }
        this.f61242a = ImmutableList.copyOf((Collection) arrayList);
    }

    public static Comparable c(e eVar) {
        return Long.valueOf(d(eVar.f61238b));
    }

    private static long d(long j10) {
        if (j10 == C.TIME_UNSET) {
            return 0L;
        }
        return j10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public ImmutableList getCues(long j10) {
        int iH = a1.h(this.f61243b, j10, true, false);
        return iH == -1 ? ImmutableList.of() : (ImmutableList) this.f61242a.get(iH);
    }

    @Override
    public long getEventTime(int i10) {
        androidx.media3.common.util.a.a(i10 < this.f61242a.size());
        return this.f61243b[i10];
    }

    @Override
    public int getEventTimeCount() {
        return this.f61242a.size();
    }

    @Override
    public int getNextEventTimeIndex(long j10) {
        int iD = a1.d(this.f61243b, j10, false, false);
        if (iD < this.f61242a.size()) {
            return iD;
        }
        return -1;
    }
}
