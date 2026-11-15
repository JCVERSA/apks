package io.appmetrica.analytics.coreutils.internal.cache;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import io.appmetrica.analytics.coreapi.internal.cache.CacheUpdateScheduler;
import io.appmetrica.analytics.coreapi.internal.cache.UpdateConditionsChecker;

public abstract class DataCache<T> implements UpdateConditionsChecker {
    private CacheUpdateScheduler a;

    @NonNull
    protected final CachedDataProvider.CachedData<T> mCachedData;

    public DataCache(long j, long j2, @NonNull String str) {
        String.format("[DataCache-%s]", str);
        this.mCachedData = new CachedDataProvider.CachedData<>(j, j2, str);
    }

    @NonNull
    @VisibleForTesting
    public CachedDataProvider.CachedData<T> getCachedData() {
        return this.mCachedData;
    }

    @Nullable
    public T getData() {
        CacheUpdateScheduler cacheUpdateScheduler;
        if (shouldUpdate() && (cacheUpdateScheduler = this.a) != null) {
            cacheUpdateScheduler.scheduleUpdateIfNeededNow();
        }
        if (this.mCachedData.shouldClearData()) {
            this.mCachedData.setData(null);
        }
        return this.mCachedData.getData();
    }

    public void setUpdateScheduler(@NonNull CacheUpdateScheduler cacheUpdateScheduler) {
        this.a = cacheUpdateScheduler;
    }

    @Override
    public boolean shouldUpdate() {
        return this.mCachedData.isEmpty() || this.mCachedData.shouldUpdateData();
    }

    public abstract boolean shouldUpdate(@NonNull T t);

    public void updateCacheControl(long j, long j2) {
        this.mCachedData.setExpirationPolicy(j, j2);
    }

    public void updateData(@NonNull T t) {
        if (shouldUpdate(t)) {
            this.mCachedData.setData(t);
            CacheUpdateScheduler cacheUpdateScheduler = this.a;
            if (cacheUpdateScheduler != null) {
                cacheUpdateScheduler.onStateUpdated();
            }
        }
    }
}
