package f2;

import androidx.media3.exoplayer.source.f0;
import androidx.media3.exoplayer.v2;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Collection;
import java.util.List;

public final class d implements f0 {

    private final ImmutableList f59903a;

    private long f59904b;

    private static final class a implements f0 {

        private final f0 f59905a;

        private final ImmutableList f59906b;

        public a(f0 f0Var, List list) {
            this.f59905a = f0Var;
            this.f59906b = ImmutableList.copyOf((Collection) list);
        }

        @Override
        public boolean a(v2 v2Var) {
            return this.f59905a.a(v2Var);
        }

        public ImmutableList c() {
            return this.f59906b;
        }

        @Override
        public long getBufferedPositionUs() {
            return this.f59905a.getBufferedPositionUs();
        }

        @Override
        public long getNextLoadPositionUs() {
            return this.f59905a.getNextLoadPositionUs();
        }

        @Override
        public boolean isLoading() {
            return this.f59905a.isLoading();
        }

        @Override
        public void reevaluateBuffer(long j10) {
            this.f59905a.reevaluateBuffer(j10);
        }
    }

    public d(List list, List list2) {
        ImmutableList.a aVarBuilder = ImmutableList.builder();
        androidx.media3.common.util.a.a(list.size() == list2.size());
        for (int i10 = 0; i10 < list.size(); i10++) {
            aVarBuilder.a(new a((f0) list.get(i10), (List) list2.get(i10)));
        }
        this.f59903a = aVarBuilder.e();
        this.f59904b = C.TIME_UNSET;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public boolean a(v2 v2Var) {
        boolean zA;
        boolean z10 = false;
        do {
            long nextLoadPositionUs = getNextLoadPositionUs();
            if (nextLoadPositionUs == Long.MIN_VALUE) {
                break;
            }
            zA = false;
            for (int i10 = 0; i10 < this.f59903a.size(); i10++) {
                long nextLoadPositionUs2 = ((a) this.f59903a.get(i10)).getNextLoadPositionUs();
                boolean z11 = nextLoadPositionUs2 != Long.MIN_VALUE && nextLoadPositionUs2 <= v2Var.f12738a;
                if (nextLoadPositionUs2 == nextLoadPositionUs || z11) {
                    zA |= ((a) this.f59903a.get(i10)).a(v2Var);
                }
            }
            z10 |= zA;
        } while (zA);
        return z10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public long getBufferedPositionUs() {
        long jMin = Long.MAX_VALUE;
        long jMin2 = Long.MAX_VALUE;
        for (int i10 = 0; i10 < this.f59903a.size(); i10++) {
            a aVar = (a) this.f59903a.get(i10);
            long bufferedPositionUs = aVar.getBufferedPositionUs();
            if ((aVar.c().contains(1) || aVar.c().contains(2) || aVar.c().contains(4)) && bufferedPositionUs != Long.MIN_VALUE) {
                jMin = Math.min(jMin, bufferedPositionUs);
            }
            if (bufferedPositionUs != Long.MIN_VALUE) {
                jMin2 = Math.min(jMin2, bufferedPositionUs);
            }
        }
        if (jMin != Long.MAX_VALUE) {
            this.f59904b = jMin;
            return jMin;
        }
        if (jMin2 == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        long j10 = this.f59904b;
        return j10 != C.TIME_UNSET ? j10 : jMin2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public long getNextLoadPositionUs() {
        long jMin = Long.MAX_VALUE;
        for (int i10 = 0; i10 < this.f59903a.size(); i10++) {
            long nextLoadPositionUs = ((a) this.f59903a.get(i10)).getNextLoadPositionUs();
            if (nextLoadPositionUs != Long.MIN_VALUE) {
                jMin = Math.min(jMin, nextLoadPositionUs);
            }
        }
        if (jMin == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return jMin;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public boolean isLoading() {
        for (int i10 = 0; i10 < this.f59903a.size(); i10++) {
            if (((a) this.f59903a.get(i10)).isLoading()) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void reevaluateBuffer(long j10) {
        for (int i10 = 0; i10 < this.f59903a.size(); i10++) {
            ((a) this.f59903a.get(i10)).reevaluateBuffer(j10);
        }
    }
}
