package com.transsion.sdk.oneid;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class c extends BroadcastReceiver {

    private boolean f49906a = true;

    c() {
    }

    @Override
    public void onReceive(Context context, Intent intent) {
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
            if (this.f49906a) {
                this.f49906a = false;
                return;
            }
            try {
                if (b.p(context)) {
                    e.a(context).l();
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }
}
