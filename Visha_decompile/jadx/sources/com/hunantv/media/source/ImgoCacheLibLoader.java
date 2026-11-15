package com.hunantv.media.source;

import android.content.Context;
import com.hunantv.media.player.loader.ImgoLibLoader;

public class ImgoCacheLibLoader {
    public static boolean isLibsLoaded() {
        return ImgoLibLoader.getInstance().isDsLibLoaded() && ImgoLibLoader.getInstance().isCacheLibLoaded();
    }

    public static synchronized boolean loadLibs(Context context) {
        return false;
    }
}
