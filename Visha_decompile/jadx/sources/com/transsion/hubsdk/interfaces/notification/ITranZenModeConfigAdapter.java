package com.transsion.hubsdk.interfaces.notification;

import android.app.NotificationManager;

public interface ITranZenModeConfigAdapter {
    boolean areAllPriorityOnlyRingerSoundsMuted(NotificationManager.Policy policy);
}
