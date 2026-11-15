package com.transsion.cloud.manager;

import com.transsion.dbdata.beans.VideoCloudCache;
import java.util.Comparator;
import kotlin.Metadata;
import kotlin.comparisons.a;

@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
public final class VideoCloudCacheManager$getNonRecentVideos$$inlined$sortedByDescending$1<T> implements Comparator {
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final int compare(T t, T t2) {
        return a.d(Long.valueOf(((VideoCloudCache) t2).getCacheTime()), Long.valueOf(((VideoCloudCache) t).getCacheTime()));
    }
}
