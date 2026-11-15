package com.transsion.hubsdk.api.internal.display;

import com.transsion.hubsdk.aosp.internal.display.TranAospBrightnessSynchronizer;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.internal.display.TranThubBrightnessSynchronizer;
import com.transsion.hubsdk.interfaces.internal.display.ITranBrightnessSynchronizerAdapter;

public class TranBrightnessSynchronizer {
    private static TranAospBrightnessSynchronizer sAospService;
    private static TranThubBrightnessSynchronizer sThubService;

    public static int brightnessFloatToInt(float f) {
        return getService(TranVersion.Core.VERSION_33151).brightnessFloatToInt(f);
    }

    public static ITranBrightnessSynchronizerAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranThubBrightnessSynchronizer tranThubBrightnessSynchronizer = sThubService;
            if (tranThubBrightnessSynchronizer != null) {
                return tranThubBrightnessSynchronizer;
            }
            TranThubBrightnessSynchronizer tranThubBrightnessSynchronizer2 = new TranThubBrightnessSynchronizer();
            sThubService = tranThubBrightnessSynchronizer2;
            return tranThubBrightnessSynchronizer2;
        }
        TranAospBrightnessSynchronizer tranAospBrightnessSynchronizer = sAospService;
        if (tranAospBrightnessSynchronizer != null) {
            return tranAospBrightnessSynchronizer;
        }
        TranAospBrightnessSynchronizer tranAospBrightnessSynchronizer2 = new TranAospBrightnessSynchronizer();
        sAospService = tranAospBrightnessSynchronizer2;
        return tranAospBrightnessSynchronizer2;
    }
}
