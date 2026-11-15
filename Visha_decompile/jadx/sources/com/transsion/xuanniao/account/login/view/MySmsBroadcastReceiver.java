package com.transsion.xuanniao.account.login.view;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.transsion.xuanniao.account.model.data.SmsCodeEvent;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.greenrobot.eventbus.EventBus;

public class MySmsBroadcastReceiver extends BroadcastReceiver {
    @Override
    public void onReceive(Context context, Intent intent) {
        if ("com.google.android.gms.auth.api.phone.SMS_RETRIEVED".equals(intent.getAction())) {
            Bundle extras = intent.getExtras();
            Status status = (Status) extras.get("com.google.android.gms.auth.api.phone.EXTRA_STATUS");
            Log.d("com.palm.id.log", "MySmsBroadcastReceiver onReceive status = " + status);
            if (status.getStatusCode() != 0) {
                return;
            }
            Matcher matcher = Pattern.compile("\\d+").matcher((String) extras.get("com.google.android.gms.auth.api.phone.EXTRA_SMS_MESSAGE"));
            if (matcher.find()) {
                EventBus.getDefault().post(new SmsCodeEvent(matcher.group()));
            }
        }
    }
}
