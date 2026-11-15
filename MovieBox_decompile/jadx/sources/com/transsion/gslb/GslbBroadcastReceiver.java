package com.transsion.gslb;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

public class GslbBroadcastReceiver extends BroadcastReceiver {
    @Override
    public void onReceive(Context context, Intent intent) {
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
            try {
                Worker worker = GslbSdk.getWorker();
                if (worker != null) {
                    worker.retry();
                }
            } catch (Exception e10) {
                Utils.LOG.i(Log.getStackTraceString(e10));
            }
        }
    }
}
