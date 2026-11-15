package com.transsion.hubsdk.core.app;

import android.app.Activity;
import com.transsion.hubsdk.app.TranActivityClient;
import com.transsion.hubsdk.interfaces.app.ITranActivityClientAdapter;

public class TranThubActivityClient implements ITranActivityClientAdapter {
    private TranActivityClient mActivityClient = new TranActivityClient();

    @Override
    public void setBackToDynamicIsland(Activity activity, boolean z) {
        if (this.mActivityClient == null) {
            this.mActivityClient = new TranActivityClient();
        }
        this.mActivityClient.setBackToDynamicIsland(activity, z);
    }

    @Override
    public void setRecoveryWhenError(Activity activity, boolean z) {
        if (this.mActivityClient == null) {
            this.mActivityClient = new TranActivityClient();
        }
        this.mActivityClient.setRecoveryWhenError(activity, z);
    }
}
