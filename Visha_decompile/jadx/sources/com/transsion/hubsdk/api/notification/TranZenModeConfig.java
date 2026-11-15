package com.transsion.hubsdk.api.notification;

import android.app.NotificationManager;
import com.transsion.hubsdk.aosp.notification.TranAospZenModeConfig;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.notification.TranThubZenModeConfig;
import com.transsion.hubsdk.interfaces.notification.ITranZenModeConfigAdapter;

public class TranZenModeConfig {
    private TranAospZenModeConfig mAospService;
    private TranThubZenModeConfig mThubService;

    public boolean areAllPriorityOnlyRingerSoundsMuted(NotificationManager.Policy policy) {
        return getService(TranVersion.Core.VERSION_33271).areAllPriorityOnlyRingerSoundsMuted(policy);
    }

    public ITranZenModeConfigAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranThubZenModeConfig tranThubZenModeConfig = this.mThubService;
            if (tranThubZenModeConfig != null) {
                return tranThubZenModeConfig;
            }
            TranThubZenModeConfig tranThubZenModeConfig2 = new TranThubZenModeConfig();
            this.mThubService = tranThubZenModeConfig2;
            return tranThubZenModeConfig2;
        }
        TranAospZenModeConfig tranAospZenModeConfig = this.mAospService;
        if (tranAospZenModeConfig != null) {
            return tranAospZenModeConfig;
        }
        TranAospZenModeConfig tranAospZenModeConfig2 = new TranAospZenModeConfig();
        this.mAospService = tranAospZenModeConfig2;
        return tranAospZenModeConfig2;
    }
}
