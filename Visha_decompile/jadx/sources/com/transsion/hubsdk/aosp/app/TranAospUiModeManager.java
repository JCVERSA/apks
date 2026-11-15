package com.transsion.hubsdk.aosp.app;

import android.app.UiModeManager;
import com.transsion.hubsdk.common.init.TranHubSdkManager;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.app.ITranUiModeManagerAdapter;

public class TranAospUiModeManager implements ITranUiModeManagerAdapter {
    private static final String TAG = "TranAospUiModeManager";
    private final UiModeManager mUiModeManager = (UiModeManager) TranHubSdkManager.getContext().getSystemService("uimode");

    @Override
    public boolean setNightModeActivated(boolean z) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(this.mUiModeManager.getClass(), "setNightModeActivated", Boolean.TYPE), this.mUiModeManager, Boolean.valueOf(z));
        if (objInvokeMethod instanceof Boolean) {
            return ((Boolean) objInvokeMethod).booleanValue();
        }
        return false;
    }
}
