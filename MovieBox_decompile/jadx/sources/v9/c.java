package v9;

import com.google.android.exoplayer2.source.b0;

public class c implements b0 {

    protected final b0[] f73487a;

    public c(b0[] b0VarArr) {
        this.f73487a = b0VarArr;
    }

    @Override
    public boolean continueLoading(long j10) {
        boolean zContinueLoading;
        boolean z10 = false;
        do {
            long nextLoadPositionUs = getNextLoadPositionUs();
            if (nextLoadPositionUs == Long.MIN_VALUE) {
                break;
            }
            zContinueLoading = false;
            for (b0 b0Var : this.f73487a) {
                long nextLoadPositionUs2 = b0Var.getNextLoadPositionUs();
                boolean z11 = nextLoadPositionUs2 != Long.MIN_VALUE && nextLoadPositionUs2 <= j10;
                if (nextLoadPositionUs2 == nextLoadPositionUs || z11) {
                    zContinueLoading |= b0Var.continueLoading(j10);
                }
            }
            z10 |= zContinueLoading;
        } while (zContinueLoading);
        return z10;
    }

    @Override
    public final long getBufferedPositionUs() {
        long jMin = Long.MAX_VALUE;
        for (b0 b0Var : this.f73487a) {
            long bufferedPositionUs = b0Var.getBufferedPositionUs();
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
        for (b0 b0Var : this.f73487a) {
            long nextLoadPositionUs = b0Var.getNextLoadPositionUs();
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
        for (b0 b0Var : this.f73487a) {
            if (b0Var.isLoading()) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final void reevaluateBuffer(long j10) {
        for (b0 b0Var : this.f73487a) {
            b0Var.reevaluateBuffer(j10);
        }
    }
}
