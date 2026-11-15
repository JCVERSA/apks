package com.hunantv.media.source;

import java.util.List;
import java.util.Queue;

public interface IImgoQueueCache extends IImgoCache {
    Queue<CacheTask> getPrepareQueue();

    List<CacheTask> getRunningList();
}
