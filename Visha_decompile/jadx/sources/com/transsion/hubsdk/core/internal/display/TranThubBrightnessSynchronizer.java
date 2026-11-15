package com.transsion.hubsdk.core.internal.display;

import com.transsion.hubsdk.interfaces.internal.display.ITranBrightnessSynchronizerAdapter;
import com.transsion.hubsdk.internal.display.TranBrightnessSynchronizerExt;

public class TranThubBrightnessSynchronizer implements ITranBrightnessSynchronizerAdapter {
    @Override
    public int brightnessFloatToInt(float f) {
        return TranBrightnessSynchronizerExt.brightnessFloatToInt(f);
    }
}
