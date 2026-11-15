package com.transsion.hubsdk.aosp.internal.display;

import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.internal.display.ITranBrightnessSynchronizerAdapter;

public class TranAospBrightnessSynchronizer implements ITranBrightnessSynchronizerAdapter {
    @Override
    public int brightnessFloatToInt(float f) {
        return ((Integer) TranDoorMan.invokeMethod(TranDoorMan.getMethod(TranDoorMan.getClass("com.android.internal.display.BrightnessSynchronizer"), "brightnessFloatToInt", Float.TYPE), null, Float.valueOf(f))).intValue();
    }
}
