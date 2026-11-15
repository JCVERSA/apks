package com.transsion.hubsdk.core.view;

import android.os.Looper;
import android.view.View;
import com.transsion.hubsdk.interfaces.view.ITranAsyncThreadAnimImplAdapter;
import com.transsion.hubsdk.view.TranAsyncThreadAnimImpl;

public class TranThubAsyncThreadAnimImpl implements ITranAsyncThreadAnimImplAdapter {
    private TranAsyncThreadAnimImpl mTranAsyncThreadAnimImpl = new TranAsyncThreadAnimImpl();

    @Override
    public boolean asyncAnimScheduleTraversals(View view) {
        return this.mTranAsyncThreadAnimImpl.asyncAnimScheduleTraversals(view);
    }

    @Override
    public void init(Looper looper) {
        this.mTranAsyncThreadAnimImpl.init(looper);
    }

    @Override
    public void release() {
        this.mTranAsyncThreadAnimImpl.release();
    }

    @Override
    public boolean setViewAlpha(View view, float f) {
        return this.mTranAsyncThreadAnimImpl.setViewAlpha(view, f);
    }

    @Override
    public boolean setViewScaleX(View view, float f) {
        return this.mTranAsyncThreadAnimImpl.setViewScaleX(view, f);
    }

    @Override
    public boolean setViewScaleY(View view, float f) {
        return this.mTranAsyncThreadAnimImpl.setViewScaleY(view, f);
    }

    @Override
    public boolean setViewTranslationX(View view, float f) {
        return this.mTranAsyncThreadAnimImpl.setViewTranslationX(view, f);
    }

    @Override
    public boolean setViewTranslationY(View view, float f) {
        return this.mTranAsyncThreadAnimImpl.setViewTranslationY(view, f);
    }
}
