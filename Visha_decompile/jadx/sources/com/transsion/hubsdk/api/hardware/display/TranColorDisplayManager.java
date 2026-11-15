package com.transsion.hubsdk.api.hardware.display;

import android.content.Context;
import android.os.Bundle;
import com.transsion.hubsdk.aosp.hardware.display.TranAospColorDisplayManager;
import com.transsion.hubsdk.common.annotation.TranLevel;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.hardware.display.TranThubColorDisplayManager;
import com.transsion.hubsdk.interfaces.hardware.display.ITranColorDisplayManagerAdapter;

public class TranColorDisplayManager {
    private TranAospColorDisplayManager mAospService;
    private TranThubColorDisplayManager mThubService;

    public int getMaximumColorTemperature(Context context) {
        return getService(TranVersion.Core.VERSION_33171).getMaximumColorTemperature(context);
    }

    public int getMinimumColorTemperature(Context context) {
        return getService(TranVersion.Core.VERSION_33171).getMinimumColorTemperature(context);
    }

    public int getNightDisplayColorTemperature() {
        return getService(TranVersion.Core.VERSION_33171).getNightDisplayColorTemperature();
    }

    public ITranColorDisplayManagerAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranThubColorDisplayManager tranThubColorDisplayManager = this.mThubService;
            if (tranThubColorDisplayManager != null) {
                return tranThubColorDisplayManager;
            }
            TranThubColorDisplayManager tranThubColorDisplayManager2 = new TranThubColorDisplayManager();
            this.mThubService = tranThubColorDisplayManager2;
            return tranThubColorDisplayManager2;
        }
        TranAospColorDisplayManager tranAospColorDisplayManager = this.mAospService;
        if (tranAospColorDisplayManager != null) {
            return tranAospColorDisplayManager;
        }
        TranAospColorDisplayManager tranAospColorDisplayManager2 = new TranAospColorDisplayManager();
        this.mAospService = tranAospColorDisplayManager2;
        return tranAospColorDisplayManager2;
    }

    @TranLevel(level = 0)
    public boolean isNightDisplayActivated() {
        return getService(TranVersion.Core.VERSION_33111).isNightDisplayActivated();
    }

    public boolean isNightDisplayAvailable(Context context) {
        return getService(TranVersion.Core.VERSION_33171).isNightDisplayAvailable(context);
    }

    public void setEyeCareEnabled(String str, int i, boolean z, int i2, int i3, Bundle bundle) {
        getService(TranVersion.Core.VERSION_33431).setEyeCareEnabled(str, i, z, i2, i3, bundle);
    }

    @TranLevel(level = 2)
    public boolean setNightDisplayActivated(boolean z) {
        return getService(TranVersion.Core.VERSION_33111).setNightDisplayActivated(z);
    }

    public boolean setNightDisplayColorTemperature(int i) {
        return getService(TranVersion.Core.VERSION_33171).setNightDisplayColorTemperature(i);
    }
}
