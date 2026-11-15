package h2;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.g3;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;

final class f implements a {

    private final ArrayList f61225a = new ArrayList();

    private int f(long j10) {
        for (int i10 = 0; i10 < this.f61225a.size(); i10++) {
            if (j10 < ((h3.e) this.f61225a.get(i10)).f61238b) {
                return i10;
            }
        }
        return this.f61225a.size();
    }

    @Override
    public ImmutableList a(long j10) {
        int iF = f(j10);
        if (iF == 0) {
            return ImmutableList.of();
        }
        h3.e eVar = (h3.e) this.f61225a.get(iF - 1);
        long j11 = eVar.f61240d;
        return (j11 == C.TIME_UNSET || j10 < j11) ? eVar.f61237a : ImmutableList.of();
    }

    @Override
    public long b(long j10) {
        if (this.f61225a.isEmpty() || j10 < ((h3.e) this.f61225a.get(0)).f61238b) {
            return C.TIME_UNSET;
        }
        for (int i10 = 1; i10 < this.f61225a.size(); i10++) {
            long j11 = ((h3.e) this.f61225a.get(i10)).f61238b;
            if (j10 == j11) {
                return j11;
            }
            if (j10 < j11) {
                h3.e eVar = (h3.e) this.f61225a.get(i10 - 1);
                long j12 = eVar.f61240d;
                return (j12 == C.TIME_UNSET || j12 > j10) ? eVar.f61238b : j12;
            }
        }
        h3.e eVar2 = (h3.e) g3.g(this.f61225a);
        long j13 = eVar2.f61240d;
        return (j13 == C.TIME_UNSET || j10 < j13) ? eVar2.f61238b : j13;
    }

    @Override
    public long c(long j10) {
        if (this.f61225a.isEmpty()) {
            return Long.MIN_VALUE;
        }
        if (j10 < ((h3.e) this.f61225a.get(0)).f61238b) {
            return ((h3.e) this.f61225a.get(0)).f61238b;
        }
        for (int i10 = 1; i10 < this.f61225a.size(); i10++) {
            h3.e eVar = (h3.e) this.f61225a.get(i10);
            if (j10 < eVar.f61238b) {
                long j11 = ((h3.e) this.f61225a.get(i10 - 1)).f61240d;
                return (j11 == C.TIME_UNSET || j11 <= j10 || j11 >= eVar.f61238b) ? eVar.f61238b : j11;
            }
        }
        long j12 = ((h3.e) g3.g(this.f61225a)).f61240d;
        if (j12 == C.TIME_UNSET || j10 >= j12) {
            return Long.MIN_VALUE;
        }
        return j12;
    }

    @Override
    public void clear() {
        this.f61225a.clear();
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0025  */
    @Override
    public boolean d(h3.e eVar, long j10) {
        boolean z10;
        androidx.media3.common.util.a.a(eVar.f61238b != C.TIME_UNSET);
        if (eVar.f61238b <= j10) {
            long j11 = eVar.f61240d;
            if (j11 == C.TIME_UNSET || j10 < j11) {
                z10 = true;
            } else {
                z10 = false;
            }
        } else {
            z10 = false;
        }
        for (int size = this.f61225a.size() - 1; size >= 0; size--) {
            if (eVar.f61238b >= ((h3.e) this.f61225a.get(size)).f61238b) {
                this.f61225a.add(size + 1, eVar);
                return z10;
            }
            if (((h3.e) this.f61225a.get(size)).f61238b <= j10) {
                z10 = false;
            }
        }
        this.f61225a.add(0, eVar);
        return z10;
    }

    @Override
    public void e(long j10) {
        int iF = f(j10);
        if (iF == 0) {
            return;
        }
        long j11 = ((h3.e) this.f61225a.get(iF - 1)).f61240d;
        if (j11 == C.TIME_UNSET || j11 >= j10) {
            iF--;
        }
        this.f61225a.subList(0, iF).clear();
    }
}
