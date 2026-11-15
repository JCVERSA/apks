package defpackage;

import com.google.android.exoplayer2.source.q;

public class nd1 implements q {
    public final q[] b;

    public nd1(q[] qVarArr) {
        this.b = qVarArr;
    }

    @Override
    public boolean continueLoading(long j) {
        boolean zContinueLoading;
        boolean z = false;
        do {
            long nextLoadPositionUs = getNextLoadPositionUs();
            if (nextLoadPositionUs == Long.MIN_VALUE) {
                break;
            }
            zContinueLoading = false;
            for (q qVar : this.b) {
                long nextLoadPositionUs2 = qVar.getNextLoadPositionUs();
                boolean z2 = nextLoadPositionUs2 != Long.MIN_VALUE && nextLoadPositionUs2 <= j;
                if (nextLoadPositionUs2 == nextLoadPositionUs || z2) {
                    zContinueLoading |= qVar.continueLoading(j);
                }
            }
            z |= zContinueLoading;
        } while (zContinueLoading);
        return z;
    }

    @Override
    public final long getBufferedPositionUs() {
        long jMin = Long.MAX_VALUE;
        for (q qVar : this.b) {
            long bufferedPositionUs = qVar.getBufferedPositionUs();
            if (bufferedPositionUs != Long.MIN_VALUE) {
                jMin = Math.min(jMin, bufferedPositionUs);
            }
        }
        if (jMin == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return jMin;
    }

    @Override
    public final long getNextLoadPositionUs() {
        long jMin = Long.MAX_VALUE;
        for (q qVar : this.b) {
            long nextLoadPositionUs = qVar.getNextLoadPositionUs();
            if (nextLoadPositionUs != Long.MIN_VALUE) {
                jMin = Math.min(jMin, nextLoadPositionUs);
            }
        }
        if (jMin == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return jMin;
    }

    @Override
    public boolean isLoading() {
        for (q qVar : this.b) {
            if (qVar.isLoading()) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final void reevaluateBuffer(long j) {
        for (q qVar : this.b) {
            qVar.reevaluateBuffer(j);
        }
    }
}
