package com.transsion.hubsdk.api.content.res;

import com.transsion.hubsdk.aosp.content.res.TranAospAsyncDrawableCache;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.content.res.TranThubAsyncDrawableCache;
import com.transsion.hubsdk.interfaces.content.res.ITranAsyncDrawableCacheAdapter;

public class TranAsyncDrawableCache {
    private TranAospAsyncDrawableCache mAospService;
    private TranThubAsyncDrawableCache mThubService;

    public void clearCacheBitmap() {
        getService(TranVersion.Core.VERSION_33141).clearCacheBitmap();
    }

    public ITranAsyncDrawableCacheAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranThubAsyncDrawableCache tranThubAsyncDrawableCache = this.mThubService;
            if (tranThubAsyncDrawableCache != null) {
                return tranThubAsyncDrawableCache;
            }
            TranThubAsyncDrawableCache tranThubAsyncDrawableCache2 = new TranThubAsyncDrawableCache();
            this.mThubService = tranThubAsyncDrawableCache2;
            return tranThubAsyncDrawableCache2;
        }
        TranAospAsyncDrawableCache tranAospAsyncDrawableCache = this.mAospService;
        if (tranAospAsyncDrawableCache != null) {
            return tranAospAsyncDrawableCache;
        }
        TranAospAsyncDrawableCache tranAospAsyncDrawableCache2 = new TranAospAsyncDrawableCache();
        this.mAospService = tranAospAsyncDrawableCache2;
        return tranAospAsyncDrawableCache2;
    }
}
