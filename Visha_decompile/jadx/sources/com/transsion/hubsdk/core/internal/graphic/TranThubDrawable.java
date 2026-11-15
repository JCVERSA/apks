package com.transsion.hubsdk.core.internal.graphic;

import com.transsion.hubsdk.interfaces.internal.graphic.ITranDrawableAdapter;
import com.transsion.hubsdk.internal.graphic.TranDrawable;

public class TranThubDrawable implements ITranDrawableAdapter {
    private TranDrawable mDrawable = new TranDrawable();

    @Override
    public void setBlurSaturation(Object obj, float f) {
        TranDrawable tranDrawable = this.mDrawable;
        if (tranDrawable != null) {
            tranDrawable.setBlurSaturation(obj, f);
        }
    }
}
