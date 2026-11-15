package io.appmetrica.analytics.coreutils.internal.cache;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;

public interface CachedDataProvider {

    public static class CachedData<T> {
        private final String a;
        private volatile long b;
        private volatile long c;
        private long d = 0;
        private Object e = null;

        public CachedData(long j, long j2, @NonNull String str) {
            this.a = String.format("[CachedData-%s]", str);
            this.b = j;
            this.c = j2;
        }

        @Nullable
        public T getData() {
            return (T) this.e;
        }

        @VisibleForTesting
        public long getExpiryTime() {
            return this.c;
        }

        @VisibleForTesting
        public long getRefreshTime() {
            return this.b;
        }

        public final boolean isEmpty() {
            return this.e == null;
        }

        public void setData(@Nullable T t) {
            this.e = t;
            this.d = System.currentTimeMillis();
        }

        public void setExpirationPolicy(long j, long j2) {
            this.b = j;
            this.c = j2;
        }

        public final boolean shouldClearData() {
            if (this.d == 0) {
                return false;
            }
            long jCurrentTimeMillis = System.currentTimeMillis() - this.d;
            return jCurrentTimeMillis > this.c || jCurrentTimeMillis < 0;
        }

        public final boolean shouldUpdateData() {
            long jCurrentTimeMillis = System.currentTimeMillis() - this.d;
            return jCurrentTimeMillis > this.b || jCurrentTimeMillis < 0;
        }

        @NonNull
        public String toString() {
            return "CachedData{tag='" + this.a + "', refreshTime=" + this.b + ", expiryTime=" + this.c + ", mCachedTime=" + this.d + ", mCachedData=" + this.e + '}';
        }
    }
}
