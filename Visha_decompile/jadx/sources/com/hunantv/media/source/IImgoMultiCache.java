package com.hunantv.media.source;

public interface IImgoMultiCache extends IImgoCache {
    void pause(CacheTask cacheTask);

    void resume(CacheTask cacheTask);
}
