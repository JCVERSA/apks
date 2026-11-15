package defpackage;

import android.os.SystemClock;
import java.util.ArrayList;
import java.util.List;

public final class mme {
    public static final boolean c = nme.b;
    public final List a = new ArrayList();
    public boolean b = false;

    public final synchronized void a(String str, long j) {
        if (this.b) {
            throw new IllegalStateException("Marker added to finished log");
        }
        this.a.add(new lme(str, j, SystemClock.elapsedRealtime()));
    }

    public final synchronized void b(String str) {
        this.b = true;
        List<lme> list = this.a;
        long j = list.size() == 0 ? 0L : ((lme) list.get(list.size() - 1)).c - ((lme) list.get(0)).c;
        if (j > 0) {
            long j2 = ((lme) list.get(0)).c;
            nme.a("(%-4d ms) %s", Long.valueOf(j), str);
            for (lme lmeVar : list) {
                long j3 = lmeVar.c;
                nme.a("(+%-4d) [%2d] %s", Long.valueOf(j3 - j2), Long.valueOf(lmeVar.b), lmeVar.a);
                j2 = j3;
            }
        }
    }

    public final void finalize() {
        if (this.b) {
            return;
        }
        b("Request on the loose");
        nme.b("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
    }
}
