package com.transsion.hubsdk.core.content.pm;

import android.content.pm.ActivityInfo;
import com.transsion.hubsdk.content.pm.TranActivityInfo;
import com.transsion.hubsdk.interfaces.content.pm.ITranActivityInfoAdapter;

public class TranThubActivityInfo implements ITranActivityInfoAdapter {
    private TranActivityInfo mTranActivityInfo;

    public TranThubActivityInfo() {
        this.mTranActivityInfo = null;
        this.mTranActivityInfo = new TranActivityInfo();
    }

    @Override
    public boolean isResizeableMode(int i) {
        return this.mTranActivityInfo.isResizeableMode(i);
    }

    @Override
    public int resizeMode(ActivityInfo activityInfo) {
        return this.mTranActivityInfo.resizeMode(activityInfo);
    }
}
