package com.transsion.ga;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.location.LocationManager;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.transsion.athena.config.data.model.anehat;
import com.transsion.athena.taaneh.aatnhe;

class h extends BroadcastReceiver {

    private boolean f43025a = true;

    h() {
    }

    @Override
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            if (this.f43025a) {
                this.f43025a = false;
                return;
            }
            try {
                if (aatnhe.c(context) && anehat.c(context)) {
                    AthenaAnalytics.f0();
                    AthenaAnalytics.E();
                    return;
                }
                return;
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        }
        if ("android.location.PROVIDERS_CHANGED".equals(action)) {
            if (com.transsion.athena.taaneh.anehat.a(context, "android.permission.ACCESS_FINE_LOCATION") || com.transsion.athena.taaneh.anehat.a(context, "android.permission.ACCESS_COARSE_LOCATION")) {
                try {
                    LocationManager locationManager = (LocationManager) context.getApplicationContext().getSystemService(RequestParameters.SUBRESOURCE_LOCATION);
                    if (!locationManager.isProviderEnabled("gps") && !locationManager.isProviderEnabled("network")) {
                        return;
                    }
                    AthenaAnalytics.K(9999).k(502, 3000L);
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
        }
    }
}
