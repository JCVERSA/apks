package com.transsion.hubsdk.api.view;

import android.os.Looper;
import android.view.View;
import com.transsion.hubsdk.aosp.view.TranAospAsyncThreadAnimImpl;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.view.TranThubAsyncThreadAnimImpl;
import com.transsion.hubsdk.interfaces.view.ITranAsyncThreadAnimImplAdapter;

public class TranAsyncThreadAnimImpl {
    private static final String TAG = "TranAsyncThreadAnimImpl";
    private TranAospAsyncThreadAnimImpl mAospService;
    private TranThubAsyncThreadAnimImpl mThubService;

    public boolean asyncAnimScheduleTraversals(View view) {
        if (view != null) {
            return getService(TranVersion.Core.VERSION_33451).asyncAnimScheduleTraversals(view);
        }
        throw new IllegalArgumentException("target view cannot be null");
    }

    public ITranAsyncThreadAnimImplAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranThubAsyncThreadAnimImpl tranThubAsyncThreadAnimImpl = this.mThubService;
            if (tranThubAsyncThreadAnimImpl != null) {
                return tranThubAsyncThreadAnimImpl;
            }
            TranThubAsyncThreadAnimImpl tranThubAsyncThreadAnimImpl2 = new TranThubAsyncThreadAnimImpl();
            this.mThubService = tranThubAsyncThreadAnimImpl2;
            return tranThubAsyncThreadAnimImpl2;
        }
        TranSdkLog.i(TAG, "TranAospAsyncThreadAnimImpl");
        TranAospAsyncThreadAnimImpl tranAospAsyncThreadAnimImpl = this.mAospService;
        if (tranAospAsyncThreadAnimImpl != null) {
            return tranAospAsyncThreadAnimImpl;
        }
        TranAospAsyncThreadAnimImpl tranAospAsyncThreadAnimImpl2 = new TranAospAsyncThreadAnimImpl();
        this.mAospService = tranAospAsyncThreadAnimImpl2;
        return tranAospAsyncThreadAnimImpl2;
    }

    public void init(Looper looper) {
        if (looper == null) {
            throw new IllegalArgumentException("looper cannot be null");
        }
        getService(TranVersion.Core.VERSION_33451).init(looper);
    }

    public void release() {
        getService(TranVersion.Core.VERSION_33451).release();
    }

    public boolean setViewAlpha(View view, float f) {
        if (view != null) {
            return getService(TranVersion.Core.VERSION_33451).setViewAlpha(view, f);
        }
        throw new IllegalArgumentException("target view cannot be null");
    }

    public boolean setViewScaleX(View view, float f) {
        if (view != null) {
            return getService(TranVersion.Core.VERSION_33451).setViewScaleX(view, f);
        }
        throw new IllegalArgumentException("target view cannot be null");
    }

    public boolean setViewScaleY(View view, float f) {
        if (view != null) {
            return getService(TranVersion.Core.VERSION_33451).setViewScaleY(view, f);
        }
        throw new IllegalArgumentException("target view cannot be null");
    }

    public boolean setViewTranslationX(View view, float f) {
        if (view != null) {
            return getService(TranVersion.Core.VERSION_33451).setViewTranslationX(view, f);
        }
        throw new IllegalArgumentException("target view cannot be null");
    }

    public boolean setViewTranslationY(View view, float f) {
        if (view != null) {
            return getService(TranVersion.Core.VERSION_33451).setViewTranslationY(view, f);
        }
        throw new IllegalArgumentException("target view cannot be null");
    }
}
