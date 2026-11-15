package io.appmetrica.analytics.coreutils.internal.cache;

public final class b implements Runnable {
    public final LocationDataCacheUpdateScheduler a;

    public b(LocationDataCacheUpdateScheduler locationDataCacheUpdateScheduler) {
        this.a = locationDataCacheUpdateScheduler;
    }

    @Override
    public final void run() {
        if (this.a.c.shouldUpdate()) {
            this.a.d.a.b.updateLastKnown();
        }
    }
}
