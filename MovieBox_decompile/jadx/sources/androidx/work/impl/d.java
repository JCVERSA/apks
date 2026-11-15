package androidx.work.impl;

import android.os.Handler;
import android.os.Looper;

public class d implements androidx.work.o {

    private final Handler f15251a = androidx.core.os.h.a(Looper.getMainLooper());

    @Override
    public void a(Runnable runnable) {
        this.f15251a.removeCallbacks(runnable);
    }

    @Override
    public void b(long j10, Runnable runnable) {
        this.f15251a.postDelayed(runnable, j10);
    }
}
