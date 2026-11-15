package com.transsion.hubsdk.interfaces.app;

import android.app.Activity;

public interface ITranActivityClientAdapter {
    void setBackToDynamicIsland(Activity activity, boolean z);

    void setRecoveryWhenError(Activity activity, boolean z);
}
