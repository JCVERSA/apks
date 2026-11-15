package com.transsion.hubsdk.core.content.res;

import com.transsion.hubsdk.content.res.AsyncDrawableCache;
import com.transsion.hubsdk.interfaces.content.res.ITranAsyncDrawableCacheAdapter;

public class TranThubAsyncDrawableCache implements ITranAsyncDrawableCacheAdapter {
    @Override
    public void clearCacheBitmap() {
        AsyncDrawableCache.clearCacheBitmap();
    }
}
