package com.transsion.hubsdk.api.view;

import android.graphics.drawable.Drawable;
import android.view.View;
import com.transsion.hubsdk.aosp.view.TranAospViewRootImpl;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.view.TranThubViewRootImpl;
import com.transsion.hubsdk.interfaces.view.ITranViewRootImplAdapter;

public class TranViewRootImpl {
    private static final String TAG = "TranViewRootImpl";
    private TranAospViewRootImpl mAospService;
    private TranThubViewRootImpl mThubService;

    public Drawable createBackgroundBlurDrawable(View view, int i, int i2, float f) {
        if (view != null) {
            return getService(TranVersion.Core.VERSION_33141).createBackgroundBlurDrawable(view, i, i2, f);
        }
        throw new IllegalArgumentException("View cannot be null");
    }

    public ITranViewRootImplAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranSdkLog.i(TAG, "TranThubViewRootImpl");
            TranThubViewRootImpl tranThubViewRootImpl = this.mThubService;
            if (tranThubViewRootImpl != null) {
                return tranThubViewRootImpl;
            }
            TranThubViewRootImpl tranThubViewRootImpl2 = new TranThubViewRootImpl();
            this.mThubService = tranThubViewRootImpl2;
            return tranThubViewRootImpl2;
        }
        TranSdkLog.i(TAG, "TranAospViewRootImpl");
        TranAospViewRootImpl tranAospViewRootImpl = this.mAospService;
        if (tranAospViewRootImpl != null) {
            return tranAospViewRootImpl;
        }
        TranAospViewRootImpl tranAospViewRootImpl2 = new TranAospViewRootImpl();
        this.mAospService = tranAospViewRootImpl2;
        return tranAospViewRootImpl2;
    }

    public void notifyInsetsChanged(View view) {
        if (view == null) {
            throw new IllegalArgumentException("view cannot be null");
        }
        getService(TranVersion.Core.VERSION_33161).notifyInsetsChanged(view);
    }

    public Drawable createBackgroundBlurDrawable(View view, int i) {
        if (view != null) {
            return getService(TranVersion.Core.VERSION_33181).createBackgroundBlurDrawable(view, i);
        }
        throw new IllegalArgumentException("param view cannot be null");
    }
}
