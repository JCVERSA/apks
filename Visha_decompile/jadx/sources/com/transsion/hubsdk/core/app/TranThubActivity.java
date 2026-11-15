package com.transsion.hubsdk.core.app;

import android.app.Activity;
import com.transsion.hubsdk.app.TranActivity;
import com.transsion.hubsdk.common.version.TranThubVersionUtil;
import com.transsion.hubsdk.interfaces.app.ITranActivityAdapter;

public class TranThubActivity implements ITranActivityAdapter {
    private static final String TAG = "TranThubActivity";
    private TranActivity mTranActivity;

    @Override
    public String getReferrer(Activity activity) {
        return null;
    }

    @Override
    @Deprecated
    public void sceneHappen(int i, String str, String str2, String str3, boolean z) {
        if (TranThubVersionUtil.isRecentAndroidT()) {
            if (this.mTranActivity == null) {
                this.mTranActivity = new TranActivity();
            }
            this.mTranActivity.sceneHappen(i, str, str2, str3, z);
        }
    }

    @Override
    public void setupAlert(Object obj) {
        if (this.mTranActivity == null) {
            this.mTranActivity = new TranActivity();
        }
        this.mTranActivity.setupAlert(obj);
    }
}
