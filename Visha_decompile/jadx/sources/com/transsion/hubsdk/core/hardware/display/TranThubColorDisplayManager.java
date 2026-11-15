package com.transsion.hubsdk.core.hardware.display;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.android.internal.annotations.VisibleForTesting;
import com.transsion.hubsdk.TranServiceManager;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.hardware.display.ITranColorDisplayManager;
import com.transsion.hubsdk.hardware.display.TranColorDisplayBridge;
import com.transsion.hubsdk.interfaces.hardware.display.ITranColorDisplayManagerAdapter;

public class TranThubColorDisplayManager implements ITranColorDisplayManagerAdapter {
    private static final String TAG = "TranThubColorDisplayManager";
    private ITranColorDisplayManager mService = ITranColorDisplayManager.Stub.asInterface(TranServiceManager.getServiceIBinder("color_display"));

    @Override
    public int getMaximumColorTemperature(Context context) {
        return TranColorDisplayBridge.getMaximumColorTemperature(context);
    }

    @Override
    public int getMinimumColorTemperature(Context context) {
        return TranColorDisplayBridge.getMinimumColorTemperature(context);
    }

    @Override
    public int getNightDisplayColorTemperature() {
        ITranColorDisplayManager iTranColorDisplayManager = this.mService;
        if (iTranColorDisplayManager == null) {
            return 0;
        }
        try {
            return iTranColorDisplayManager.getNightDisplayColorTemperature();
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "getNightDisplayColorTemperature:" + e);
            return 0;
        }
    }

    @Override
    public boolean isNightDisplayActivated() {
        ITranColorDisplayManager iTranColorDisplayManager = this.mService;
        if (iTranColorDisplayManager == null) {
            return false;
        }
        try {
            return iTranColorDisplayManager.isNightDisplayActivated();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean isNightDisplayAvailable(Context context) {
        return TranColorDisplayBridge.isNightDisplayAvailable(context);
    }

    @Override
    public void setEyeCareEnabled(String str, int i, boolean z, int i2, int i3, Bundle bundle) {
        ITranColorDisplayManager iTranColorDisplayManager = this.mService;
        if (iTranColorDisplayManager == null) {
            return;
        }
        try {
            iTranColorDisplayManager.setEyeCareEnabled(str, i, z, i2, i3, bundle);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "setEyeCareEnabled:" + e);
        }
    }

    @Override
    public boolean setNightDisplayActivated(boolean z) {
        ITranColorDisplayManager iTranColorDisplayManager = this.mService;
        if (iTranColorDisplayManager == null) {
            return false;
        }
        try {
            return iTranColorDisplayManager.setNightDisplayActivated(z);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "setNightDisplayActivated:" + e);
            return false;
        }
    }

    @Override
    public boolean setNightDisplayColorTemperature(int i) {
        ITranColorDisplayManager iTranColorDisplayManager = this.mService;
        if (iTranColorDisplayManager == null) {
            return false;
        }
        try {
            return iTranColorDisplayManager.setNightDisplayColorTemperature(i);
        } catch (RemoteException e) {
            TranSdkLog.e(TAG, "setNightDisplayColorTemperature:" + e);
            return false;
        }
    }

    @VisibleForTesting
    public void setService(ITranColorDisplayManager iTranColorDisplayManager) {
        this.mService = iTranColorDisplayManager;
    }
}
