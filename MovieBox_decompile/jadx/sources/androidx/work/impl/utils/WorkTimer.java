package androidx.work.impl.utils;

import androidx.annotation.NonNull;
import java.util.HashMap;
import java.util.Map;

public class WorkTimer {

    private static final String f15334e = androidx.work.j.i("WorkTimer");

    final androidx.work.o f15335a;

    final Map f15336b = new HashMap();

    final Map f15337c = new HashMap();

    final Object f15338d = new Object();

    public static class WorkTimerRunnable implements Runnable {
        static final String TAG = "WrkTimerRunnable";
        private final j4.m mWorkGenerationalId;
        private final WorkTimer mWorkTimer;

        WorkTimerRunnable(@NonNull WorkTimer workTimer, @NonNull j4.m mVar) {
            this.mWorkTimer = workTimer;
            this.mWorkGenerationalId = mVar;
        }

        @Override
        public void run() {
            synchronized (this.mWorkTimer.f15338d) {
                try {
                    if (((WorkTimerRunnable) this.mWorkTimer.f15336b.remove(this.mWorkGenerationalId)) != null) {
                        a aVar = (a) this.mWorkTimer.f15337c.remove(this.mWorkGenerationalId);
                        if (aVar != null) {
                            aVar.b(this.mWorkGenerationalId);
                        }
                    } else {
                        androidx.work.j.e().a(TAG, String.format("Timer with %s is already marked as complete.", this.mWorkGenerationalId));
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public interface a {
        void b(j4.m mVar);
    }

    public WorkTimer(androidx.work.o oVar) {
        this.f15335a = oVar;
    }

    public void a(j4.m mVar, long j10, a aVar) {
        synchronized (this.f15338d) {
            androidx.work.j.e().a(f15334e, "Starting timer for " + mVar);
            b(mVar);
            WorkTimerRunnable workTimerRunnable = new WorkTimerRunnable(this, mVar);
            this.f15336b.put(mVar, workTimerRunnable);
            this.f15337c.put(mVar, aVar);
            this.f15335a.b(j10, workTimerRunnable);
        }
    }

    public void b(j4.m mVar) {
        synchronized (this.f15338d) {
            try {
                if (((WorkTimerRunnable) this.f15336b.remove(mVar)) != null) {
                    androidx.work.j.e().a(f15334e, "Stopping timer for " + mVar);
                    this.f15337c.remove(mVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
