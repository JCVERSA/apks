package com.transsion.utils.net;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;
import defpackage.pz6;
import defpackage.vz6;

public class NetStatusReceiver extends BroadcastReceiver {
    public vz6 a;

    @Override
    public void onReceive(Context context, Intent intent) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isAvailable()) {
                vz6 vz6Var = this.a;
                if (vz6Var != null) {
                    vz6Var.onDisconnect();
                }
            } else {
                int type = activeNetworkInfo.getType();
                if (type == 0) {
                    vz6 vz6Var2 = this.a;
                    if (vz6Var2 != null) {
                        vz6Var2.onConnect(pz6.a(context));
                    }
                } else if (type != 1) {
                    vz6 vz6Var3 = this.a;
                    if (vz6Var3 != null) {
                        vz6Var3.unknowNet();
                    }
                } else {
                    vz6 vz6Var4 = this.a;
                    if (vz6Var4 != null) {
                        vz6Var4.onConnect(1);
                    }
                }
            }
        } catch (Exception e) {
            Log.e("NetStatusReceiver", "onReceive " + e.getMessage());
        }
    }
}
