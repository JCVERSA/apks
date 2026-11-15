package com.transsion.hubsdk.aosp.view;

import android.view.Surface;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.view.ITranSurfaceAdapter;

public class TranAospSurface implements ITranSurfaceAdapter {
    private static final String TAG = "TranAospSurface";

    @Override
    public int setBuffersFormatOverride(Surface surface, int i) {
        TranSdkLog.e(TAG, "setBuffersFormatOverride not support");
        return -1;
    }
}
