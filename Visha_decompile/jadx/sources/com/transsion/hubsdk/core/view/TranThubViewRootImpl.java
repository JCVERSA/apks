package com.transsion.hubsdk.core.view;

import android.graphics.drawable.Drawable;
import android.view.View;
import com.transsion.hubsdk.interfaces.view.ITranViewRootImplAdapter;
import com.transsion.hubsdk.view.TranViewRootImpl;

public class TranThubViewRootImpl implements ITranViewRootImplAdapter {
    private TranViewRootImpl mTranViewRootImpl = new TranViewRootImpl();

    @Override
    public Drawable createBackgroundBlurDrawable(View view, int i, int i2, float f) {
        return this.mTranViewRootImpl.createBackgroundBlurDrawable(view, i, i2, f);
    }

    @Override
    public void notifyInsetsChanged(View view) {
        this.mTranViewRootImpl.notifyInsetsChanged(view);
    }

    @Override
    public Drawable createBackgroundBlurDrawable(View view, int i) {
        return this.mTranViewRootImpl.createBackgroundBlurDrawable(view, i);
    }
}
