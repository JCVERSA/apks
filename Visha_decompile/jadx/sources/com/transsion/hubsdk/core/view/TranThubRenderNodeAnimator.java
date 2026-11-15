package com.transsion.hubsdk.core.view;

import com.transsion.hubsdk.interfaces.view.ITranRenderNodeAnimatorAdapter;
import com.transsion.hubsdk.view.TranRenderNodeAnimator;

public class TranThubRenderNodeAnimator implements ITranRenderNodeAnimatorAdapter {
    private TranRenderNodeAnimator mTranRenderNodeAnimator = new TranRenderNodeAnimator();

    @Override
    public void clearPromote() {
        if (this.mTranRenderNodeAnimator == null) {
            this.mTranRenderNodeAnimator = new TranRenderNodeAnimator();
        }
        this.mTranRenderNodeAnimator.clearPromote();
    }

    @Override
    public void setInstance(Object obj) {
        if (this.mTranRenderNodeAnimator == null) {
            this.mTranRenderNodeAnimator = new TranRenderNodeAnimator();
        }
        this.mTranRenderNodeAnimator.setInstance(obj);
    }

    @Override
    public void setPromote(boolean z) {
        if (this.mTranRenderNodeAnimator == null) {
            this.mTranRenderNodeAnimator = new TranRenderNodeAnimator();
        }
        this.mTranRenderNodeAnimator.setPromote(z);
    }
}
