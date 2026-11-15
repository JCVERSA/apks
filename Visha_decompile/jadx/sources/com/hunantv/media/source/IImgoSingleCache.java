package com.hunantv.media.source;

public interface IImgoSingleCache extends IImgoCache {
    void cancel();

    CacheTask getRunningTask();
}
