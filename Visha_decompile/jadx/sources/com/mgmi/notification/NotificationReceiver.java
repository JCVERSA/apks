package com.mgmi.notification;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import defpackage.k7d;

public class NotificationReceiver extends BroadcastReceiver {
    @Override
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        int intExtra = intent.getIntExtra("notificationType", -1);
        String stringExtra = intent.getStringExtra("notificationURL");
        if ("mgmi_notification.apk.download.delete".equals(action)) {
            switch (intExtra) {
                case 47361:
                case 47362:
                    k7d.c(context).m(stringExtra);
                    k7d.c(context).m(stringExtra);
                    break;
            }
        }
        if ("mgmi_notification.apk.download.click".equals(action) && intExtra == 47362) {
            k7d k7dVarC = k7d.c(context);
            k7dVarC.l(stringExtra).g();
            k7dVarC.m(stringExtra);
            k7dVarC.k(stringExtra);
        }
    }
}
