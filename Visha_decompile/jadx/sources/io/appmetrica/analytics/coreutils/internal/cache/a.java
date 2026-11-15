package io.appmetrica.analytics.coreutils.internal.cache;

public final class a implements Runnable {
    public final LocationDataCacheUpdateScheduler a;

    public a(LocationDataCacheUpdateScheduler locationDataCacheUpdateScheduler) {
        this.a = locationDataCacheUpdateScheduler;
    }

    @Override
    public final void run() {
        this.a.b.updateLastKnown();
    }
}
