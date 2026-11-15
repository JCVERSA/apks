package com.transsion.hubsdk.aosp.notification;

import android.app.NotificationManager;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.notification.ITranZenModeConfigAdapter;

public class TranAospZenModeConfig implements ITranZenModeConfigAdapter {
    private static Class<?> sClassName = TranDoorMan.getClass("android.service.notification.ZenModeConfig");

    @Override
    public boolean areAllPriorityOnlyRingerSoundsMuted(NotificationManager.Policy policy) {
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(sClassName, "areAllPriorityOnlyRingerSoundsMuted", NotificationManager.Policy.class), null, policy);
        if (objInvokeMethod == null || !(objInvokeMethod instanceof Boolean)) {
            return false;
        }
        return ((Boolean) objInvokeMethod).booleanValue();
    }
}
