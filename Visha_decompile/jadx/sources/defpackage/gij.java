package defpackage;

import android.os.SystemClock;
import androidx.media3.common.C;

public final class gij {
    public Exception a;
    public long b = C.TIME_UNSET;
    public long c = C.TIME_UNSET;

    public final void a() {
        this.a = null;
        this.b = C.TIME_UNSET;
        this.c = C.TIME_UNSET;
    }

    public final void b(Exception exc) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (this.a == null) {
            this.a = exc;
        }
        if (this.b == C.TIME_UNSET && !xij.z()) {
            this.b = 200 + jElapsedRealtime;
        }
        long j = this.b;
        if (j == C.TIME_UNSET || jElapsedRealtime < j) {
            this.c = jElapsedRealtime + 50;
            return;
        }
        Exception exc2 = this.a;
        if (exc2 != exc) {
            exc2.addSuppressed(exc);
        }
        Exception exc3 = this.a;
        a();
        throw exc3;
    }

    public final boolean c() {
        if (this.a == null) {
            return false;
        }
        return xij.z() || SystemClock.elapsedRealtime() < this.c;
    }
}
