package com.transsion.hubsdk.core.graphics;

import android.graphics.drawable.VectorDrawable;
import com.transsion.hubsdk.graphics.TranVectorDrawable;
import com.transsion.hubsdk.interfaces.graphics.ITranVectorDrawableAdapter;

public class TranThubVectorDrawable implements ITranVectorDrawableAdapter {
    private TranVectorDrawable mTranVectorDrawable = new TranVectorDrawable();

    @Override
    public boolean updateIconColor(VectorDrawable vectorDrawable, int i, int i2, int i3, String str) {
        TranVectorDrawable tranVectorDrawable = this.mTranVectorDrawable;
        if (tranVectorDrawable != null) {
            return tranVectorDrawable.updateIconColor(vectorDrawable, i, i2, i3, str);
        }
        return false;
    }
}
