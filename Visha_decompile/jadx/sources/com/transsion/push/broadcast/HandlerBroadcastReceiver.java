package com.transsion.push.broadcast;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.transsion.push.PushConstants;
import com.transsion.push.PushManager;
import com.transsion.push.tracker.Tracker;
import com.transsion.push.utils.PushLogUtils;
import com.transsion.push.utils.ServiceUtils;
import defpackage.l27;

public class HandlerBroadcastReceiver extends BroadcastReceiver {
    public final void a(Context context, Intent intent) {
        try {
            Bundle bundle = new Bundle();
            bundle.putString("message", intent.getStringExtra("message"));
            bundle.putString(PushConstants.EXTRA_PUSH_SERVICE_TYPE, "message");
            ServiceUtils.startTargetIntentService(context.getApplicationContext(), bundle);
        } catch (Exception e) {
            PushLogUtils.LOG.i("e:" + e.getMessage());
        }
    }

    @Override
    public void onReceive(Context context, Intent intent) {
        PushManager.getInstance().init(context.getApplicationContext());
        Tracker.getInstance().init();
        PushLogUtils.LOG.g("receive messages,action:" + intent.getAction());
        if ((context.getPackageName() + PushConstants.MESSAGE_HANDLER_ACTION_SUFFIX).equals(intent.getAction())) {
            l27.f(context, intent);
        } else if (PushConstants.ACTION_PUSH_MSG_RECEIVER.equals(intent.getAction())) {
            a(context, intent);
        }
    }
}
