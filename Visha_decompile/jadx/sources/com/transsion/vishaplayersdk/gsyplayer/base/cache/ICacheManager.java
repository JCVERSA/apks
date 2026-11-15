package com.transsion.vishaplayersdk.gsyplayer.base.cache;

import android.content.Context;
import com.transsion.vishaplayersdk.gsyplayer.base.ijk.IMediaPlayer;
import java.io.File;
import java.util.Map;

public interface ICacheManager {

    public interface ICacheAvailableListener {
        void onCacheAvailable(File file, String str, int i);
    }

    boolean cachePreview(Context context, File file, String str);

    void clearCache(Context context, File file, String str);

    void doCacheLogic(Context context, IMediaPlayer iMediaPlayer, String str, Map<String, String> map, File file);

    boolean hadCached();

    void release();

    void setCacheAvailableListener(ICacheAvailableListener iCacheAvailableListener);
}
