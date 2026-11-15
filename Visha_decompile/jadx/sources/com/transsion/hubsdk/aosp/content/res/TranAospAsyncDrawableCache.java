package com.transsion.hubsdk.aosp.content.res;

import android.util.ArrayMap;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.content.res.ITranAsyncDrawableCacheAdapter;

public class TranAospAsyncDrawableCache implements ITranAsyncDrawableCacheAdapter {
    private static final String TAG = "TranAospAsyncDrawableCache";
    private static Class<?> sClassName = TranDoorMan.getClass("com.mediatek.res.AsyncDrawableCache");

    @Override
    public void clearCacheBitmap() {
        try {
            ArrayMap arrayMap = (ArrayMap) sClassName.getDeclaredField("sDrawableCache").get(sClassName);
            if (arrayMap == null || arrayMap.size() == 0) {
                return;
            }
            int size = arrayMap.size();
            arrayMap.clear();
            TranSdkLog.i(TAG, "clearCacheBitmap size = " + size);
        } catch (Exception e) {
            TranSdkLog.i(TAG, "clearCacheBitmap exception :" + e.getMessage());
        }
    }
}
