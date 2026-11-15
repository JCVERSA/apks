package com.transsion.hubsdk.core.notification;

import android.app.NotificationManager;
import com.transsion.hubsdk.interfaces.notification.ITranZenModeConfigAdapter;
import com.transsion.hubsdk.notification.TranZenModeConfig;

public class TranThubZenModeConfig implements ITranZenModeConfigAdapter {
    @Override
    public boolean areAllPriorityOnlyRingerSoundsMuted(NotificationManager.Policy policy) {
        return TranZenModeConfig.areAllPriorityOnlyRingerSoundsMuted(policy);
    }
}
