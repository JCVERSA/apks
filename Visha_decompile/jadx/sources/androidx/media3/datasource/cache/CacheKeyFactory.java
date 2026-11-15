package androidx.media3.datasource.cache;

import androidx.media3.common.util.UnstableApi;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.cache.CacheKeyFactory;

@UnstableApi
public interface CacheKeyFactory {
    public static final CacheKeyFactory DEFAULT = new CacheKeyFactory() {
        @Override
        public final String buildCacheKey(DataSpec dataSpec) {
            return CacheKeyFactory.lambda$static$0(dataSpec);
        }
    };

    static String lambda$static$0(DataSpec dataSpec) {
        String str = dataSpec.key;
        return str != null ? str : dataSpec.uri.toString();
    }

    String buildCacheKey(DataSpec dataSpec);
}
