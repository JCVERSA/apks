package h2;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.Ordering;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.List;

final class e implements a {

    private static final Ordering f61223b = Ordering.natural().onResultOf(new com.google.common.base.f() {
        @Override
        public final Object apply(Object obj) {
            return e.h((h3.e) obj);
        }
    }).compound(Ordering.natural().reverse().onResultOf(new com.google.common.base.f() {
        @Override
        public final Object apply(Object obj) {
            return e.i((h3.e) obj);
        }
    }));

    private final List f61224a = new ArrayList();

    public static Long h(h3.e eVar) {
        return Long.valueOf(eVar.f61238b);
    }

    public static Long i(h3.e eVar) {
        return Long.valueOf(eVar.f61239c);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public ImmutableList a(long j10) {
        if (!this.f61224a.isEmpty()) {
            if (j10 >= ((h3.e) this.f61224a.get(0)).f61238b) {
                ArrayList arrayList = new ArrayList();
                for (int i10 = 0; i10 < this.f61224a.size(); i10++) {
                    h3.e eVar = (h3.e) this.f61224a.get(i10);
                    if (j10 >= eVar.f61238b && j10 < eVar.f61240d) {
                        arrayList.add(eVar);
                    }
                    if (j10 < eVar.f61238b) {
                        break;
                    }
                }
                ImmutableList immutableListSortedCopyOf = ImmutableList.sortedCopyOf(f61223b, arrayList);
                ImmutableList.a aVarBuilder = ImmutableList.builder();
                for (int i11 = 0; i11 < immutableListSortedCopyOf.size(); i11++) {
                    aVarBuilder.l(((h3.e) immutableListSortedCopyOf.get(i11)).f61237a);
                }
                return aVarBuilder.e();
            }
        }
        return ImmutableList.of();
    }

    @Override
    public long b(long j10) {
        if (this.f61224a.isEmpty()) {
            return C.TIME_UNSET;
        }
        if (j10 < ((h3.e) this.f61224a.get(0)).f61238b) {
            return C.TIME_UNSET;
        }
        long jMax = ((h3.e) this.f61224a.get(0)).f61238b;
        for (int i10 = 0; i10 < this.f61224a.size(); i10++) {
            long j11 = ((h3.e) this.f61224a.get(i10)).f61238b;
            long j12 = ((h3.e) this.f61224a.get(i10)).f61240d;
            if (j12 > j10) {
                if (j11 > j10) {
                    break;
                }
                jMax = Math.max(jMax, j11);
            } else {
                jMax = Math.max(jMax, j12);
            }
        }
        return jMax;
    }

    @Override
    public long c(long j10) {
        long jMin = -9223372036854775807L;
        for (int i10 = 0; i10 < this.f61224a.size(); i10++) {
            long j11 = ((h3.e) this.f61224a.get(i10)).f61238b;
            long j12 = ((h3.e) this.f61224a.get(i10)).f61240d;
            if (j10 < j11) {
                if (jMin != C.TIME_UNSET) {
                    jMin = Math.min(jMin, j11);
                    break;
                }
                jMin = j11;
                break;
            }
            if (j10 < j12) {
                jMin = jMin == C.TIME_UNSET ? j12 : Math.min(jMin, j12);
            }
        }
        if (jMin != C.TIME_UNSET) {
            return jMin;
        }
        return Long.MIN_VALUE;
    }

    @Override
    public void clear() {
        this.f61224a.clear();
    }

    @Override
    public boolean d(h3.e eVar, long j10) {
        androidx.media3.common.util.a.a(eVar.f61238b != C.TIME_UNSET);
        androidx.media3.common.util.a.a(eVar.f61239c != C.TIME_UNSET);
        boolean z10 = eVar.f61238b <= j10 && j10 < eVar.f61240d;
        for (int size = this.f61224a.size() - 1; size >= 0; size--) {
            if (eVar.f61238b >= ((h3.e) this.f61224a.get(size)).f61238b) {
                this.f61224a.add(size + 1, eVar);
                return z10;
            }
        }
        this.f61224a.add(0, eVar);
        return z10;
    }

    @Override
    public void e(long j10) {
        int i10 = 0;
        while (i10 < this.f61224a.size()) {
            long j11 = ((h3.e) this.f61224a.get(i10)).f61238b;
            if (j10 > j11 && j10 > ((h3.e) this.f61224a.get(i10)).f61240d) {
                this.f61224a.remove(i10);
                i10--;
            } else if (j10 < j11) {
                return;
            }
            i10++;
        }
    }
}
