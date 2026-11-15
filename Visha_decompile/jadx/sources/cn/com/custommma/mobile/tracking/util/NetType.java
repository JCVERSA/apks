package cn.com.custommma.mobile.tracking.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

public class NetType extends BroadcastReceiver {
    public String a(Context context) {
        NetworkInfo activeNetworkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null && activeNetworkInfo.isAvailable()) {
            if (activeNetworkInfo.getType() == 1) {
                return "1";
            }
            if (activeNetworkInfo.getType() == 0) {
                return "0";
            }
        }
        return "2";
    }

    @Override
    public void onReceive(Context context, Intent intent) {
        cn.com.custommma.mobile.tracking.api.a.f.put("WIFI", a(context));
        cn.com.custommma.mobile.tracking.api.a.g.put("WIFI", Long.valueOf(System.currentTimeMillis()));
    }
}
