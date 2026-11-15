package com.transsion.push.broadcast;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.transsion.push.PushConstants;
import com.transsion.push.config.PushRepository;
import com.transsion.push.tracker.Tracker;
import com.transsion.push.utils.FirebaseUtils;
import com.transsion.push.utils.PushLogUtils;
import com.transsion.push.utils.ServiceUtils;
import defpackage.ez6;
import defpackage.xj1;

public class PushBroadcastReceiver extends BroadcastReceiver {
    @Override
    public void onReceive(Context context, Intent intent) {
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
            xj1.b(context.getApplicationContext());
            if (ez6.a()) {
                try {
                    if (TextUtils.isEmpty((String) PushRepository.getInstance().getSpValue(PushConstants.SP_KEY_FCM_TOKEN, ""))) {
                        PushLogUtils.LOG.g("network available but token empty, retry updateToken");
                        FirebaseUtils.h();
                    }
                    Bundle bundle = new Bundle();
                    bundle.putString(PushConstants.EXTRA_PUSH_SERVICE_TYPE, PushConstants.PUSH_SERVICE_TYPE_SYNC_CONFIG);
                    ServiceUtils.startJobThread(context.getApplicationContext(), bundle);
                    Tracker.getInstance().trackActiveSyncInit();
                } catch (Exception unused) {
                }
            }
        }
    }
}
