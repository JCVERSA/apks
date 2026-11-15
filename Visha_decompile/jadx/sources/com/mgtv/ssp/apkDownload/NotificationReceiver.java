package com.mgtv.ssp.apkDownload;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;

public class NotificationReceiver extends BroadcastReceiver {
    @Override
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        int intExtra = intent.getIntExtra("notificationType", -1);
        String stringExtra = intent.getStringExtra("notificationURL");
        String stringExtra2 = intent.getStringExtra("notificationUUID");
        int intExtra2 = intent.getIntExtra("fznotificationID", -1);
        if ("ssp.notification.apk.download.delete".equals(action)) {
            if (intExtra == 100 || intExtra == 101) {
                b.a().b(stringExtra);
                b.a().b(stringExtra);
                return;
            }
            return;
        }
        if ("ssp.notification.apk.download.click".equals(action)) {
            if (intExtra == 100) {
                if (TextUtils.isEmpty(stringExtra)) {
                    return;
                }
                d.a().a(context, stringExtra2, stringExtra, intExtra2);
            } else {
                if (intExtra != 101) {
                    return;
                }
                e eVarA = b.a().a(stringExtra);
                if (eVarA != null) {
                    eVarA.c();
                }
                b.a().b(stringExtra);
                d.a().c(stringExtra);
            }
        }
    }
}
