package com.hunantv.media.source;

import com.hunantv.media.source.jni.ImgoSourceNative;

public interface IImgoCache {

    public static class ExtraInfo {
        public static final int NULL = 0;
        private long mManagerAddress;

        public ExtraInfo(long j) {
            this.mManagerAddress = j;
        }

        public long getDynamicIntervalBytes() {
            long j = this.mManagerAddress;
            if (j != 0) {
                return ImgoSourceNative.getDynamicIntervalBytes(j);
            }
            return 0L;
        }
    }

    public interface TaskCallback {
        void onFailed(CacheTask cacheTask);

        void onFinish(CacheTask cacheTask);

        void onStart(CacheTask cacheTask);

        void onSuccess(CacheTask cacheTask);
    }

    void cache(CacheTask cacheTask);

    void cache(CacheTask cacheTask, boolean z);

    void cancel(CacheTask cacheTask);

    ExtraInfo getExtraInfo();

    void release();

    void setTaskCallback(TaskCallback taskCallback);
}
