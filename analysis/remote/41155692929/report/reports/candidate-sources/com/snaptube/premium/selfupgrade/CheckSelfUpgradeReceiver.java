package com.snaptube.premium.selfupgrade;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class CheckSelfUpgradeReceiver extends BroadcastReceiver {
    @Override
    public void onReceive(Context context, Intent intent) {
        CheckSelfUpgradeManager.t("received_check_upgrade_broadcast");
    }
}
