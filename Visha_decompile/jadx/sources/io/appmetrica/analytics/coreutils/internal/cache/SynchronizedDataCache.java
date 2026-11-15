package io.appmetrica.analytics.coreutils.internal.cache;

import androidx.annotation.AnyThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public abstract class SynchronizedDataCache<T> extends DataCache<T> {
    public SynchronizedDataCache(long j, long j2, @NonNull String str) {
        super(j, j2, str);
    }

    @Override
    @Nullable
    public synchronized T getData() {
        return (T) super.getData();
    }

    @Override
    @AnyThread
    public synchronized boolean shouldUpdate() {
        return super.shouldUpdate();
    }

    @Override
    public synchronized void updateData(@NonNull T t) {
        super.updateData(t);
    }
}
