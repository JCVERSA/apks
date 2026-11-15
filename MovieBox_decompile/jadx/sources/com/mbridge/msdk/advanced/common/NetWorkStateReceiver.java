package com.mbridge.msdk.advanced.common;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import android.util.Base64;
import android.webkit.WebView;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import org.json.JSONObject;

public class NetWorkStateReceiver extends BroadcastReceiver {

    private static final String f33206c = "NetWorkStateReceiver";

    private WebView f33207a;

    private int f33208b;

    public NetWorkStateReceiver(WebView webView) {
        this.f33207a = webView;
    }

    public void a() {
        this.f33207a = null;
    }

    @Override
    public void onReceive(Context context, Intent intent) {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                a(this.f33207a, 0);
                return;
            }
            if (!com.mbridge.msdk.foundation.same.a.f34522z) {
                a(this.f33207a, 0);
                return;
            }
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                a(this.f33207a, 0);
                return;
            }
            if (activeNetworkInfo.getState() != NetworkInfo.State.CONNECTING && activeNetworkInfo.getState() != NetworkInfo.State.DISCONNECTING) {
                if (activeNetworkInfo.getType() == 1) {
                    a(this.f33207a, 9);
                    return;
                }
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                if (telephonyManager == null) {
                    a(this.f33207a, 0);
                    return;
                }
                int networkType = telephonyManager.getNetworkType();
                this.f33208b = networkType;
                int iC = k0.c(networkType);
                this.f33208b = iC;
                a(this.f33207a, iC);
            }
        } catch (Throwable th2) {
            o0.a(f33206c, th2.getMessage());
        }
    }

    public void a(WebView webView, int i10) {
        if (webView != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("netstat", i10);
                f.a().a(webView, "onNetstatChanged", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
            } catch (Throwable th2) {
                o0.a(f33206c, th2.getMessage());
            }
        }
    }
}
