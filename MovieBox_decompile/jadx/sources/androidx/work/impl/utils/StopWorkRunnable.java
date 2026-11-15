package androidx.work.impl.utils;

import androidx.annotation.NonNull;
import androidx.work.impl.d0;

public class StopWorkRunnable implements Runnable {
    private static final String TAG = androidx.work.j.i("StopWorkRunnable");
    private final boolean mStopInForeground;
    private final androidx.work.impl.u mToken;
    private final d0 mWorkManagerImpl;

    public StopWorkRunnable(@NonNull d0 d0Var, @NonNull androidx.work.impl.u uVar, boolean z10) {
        this.mWorkManagerImpl = d0Var;
        this.mToken = uVar;
        this.mStopInForeground = z10;
    }

    @Override
    public void run() {
        boolean zT = this.mStopInForeground ? this.mWorkManagerImpl.q().t(this.mToken) : this.mWorkManagerImpl.q().u(this.mToken);
        androidx.work.j.e().a(TAG, "StopWorkRunnable for " + this.mToken.a().b() + "; Processor.stopWork = " + zT);
    }
}
