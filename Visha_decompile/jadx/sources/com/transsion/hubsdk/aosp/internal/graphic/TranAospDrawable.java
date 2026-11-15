package com.transsion.hubsdk.aosp.internal.graphic;

import com.transsion.hubsdk.interfaces.internal.graphic.ITranDrawableAdapter;

public class TranAospDrawable implements ITranDrawableAdapter {
    private TranAospDrawableExt mTranAospDrawableExt;

    private TranAospDrawableExt getAospDrawable() {
        if (this.mTranAospDrawableExt == null) {
            this.mTranAospDrawableExt = new TranAospDrawableExt();
        }
        return this.mTranAospDrawableExt;
    }

    @Override
    public void setBlurSaturation(Object obj, float f) {
        getAospDrawable().setBlurSaturation(obj, f);
    }
}
