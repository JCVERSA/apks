package com.google.firebase.messaging;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.util.Log;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayDeque;
import java.util.Queue;

public class v0 {

    private static v0 f31343e;

    private String f31344a = null;

    private Boolean f31345b = null;

    private Boolean f31346c = null;

    private final Queue f31347d = new ArrayDeque();

    private v0() {
    }

    private int a(Context context, Intent intent) {
        String strF = f(context, intent);
        if (strF != null) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Restricting intent to a specific service: ");
                sb2.append(strF);
            }
            intent.setClassName(context.getPackageName(), strF);
        }
        try {
            if ((e(context) ? e1.h(context, intent) : context.startService(intent)) != null) {
                return -1;
            }
            Log.e("FirebaseMessaging", "Error while delivering the message: ServiceIntent not found.");
            return TTAdConstant.DEEPLINK_FALLBACK_CODE;
        } catch (IllegalStateException e10) {
            Log.e("FirebaseMessaging", "Failed to start service while in background: " + e10);
            return TTAdConstant.AD_ID_IS_NULL_CODE;
        } catch (SecurityException e11) {
            Log.e("FirebaseMessaging", "Error while delivering the message to the serviceIntent", e11);
            return 401;
        }
    }

    static synchronized v0 b() {
        try {
            if (f31343e == null) {
                f31343e = new v0();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f31343e;
    }

    private synchronized String f(Context context, Intent intent) {
        ServiceInfo serviceInfo;
        String str;
        try {
            String str2 = this.f31344a;
            if (str2 != null) {
                return str2;
            }
            ResolveInfo resolveInfoResolveService = context.getPackageManager().resolveService(intent, 0);
            if (resolveInfoResolveService != null && (serviceInfo = resolveInfoResolveService.serviceInfo) != null) {
                if (context.getPackageName().equals(serviceInfo.packageName) && (str = serviceInfo.name) != null) {
                    if (str.startsWith(".")) {
                        this.f31344a = context.getPackageName() + serviceInfo.name;
                    } else {
                        this.f31344a = serviceInfo.name;
                    }
                    return this.f31344a;
                }
                Log.e("FirebaseMessaging", "Error resolving target intent service, skipping classname enforcement. Resolved service was: " + serviceInfo.packageName + "/" + serviceInfo.name);
                return null;
            }
            Log.e("FirebaseMessaging", "Failed to resolve target intent service, skipping classname enforcement");
            return null;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    Intent c() {
        return (Intent) this.f31347d.poll();
    }

    boolean d(Context context) {
        if (this.f31346c == null) {
            this.f31346c = Boolean.valueOf(context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0);
        }
        if (!this.f31345b.booleanValue()) {
            Log.isLoggable("FirebaseMessaging", 3);
        }
        return this.f31346c.booleanValue();
    }

    boolean e(Context context) {
        if (this.f31345b == null) {
            this.f31345b = Boolean.valueOf(context.checkCallingOrSelfPermission("android.permission.WAKE_LOCK") == 0);
        }
        if (!this.f31345b.booleanValue()) {
            Log.isLoggable("FirebaseMessaging", 3);
        }
        return this.f31345b.booleanValue();
    }

    public int g(Context context, Intent intent) {
        Log.isLoggable("FirebaseMessaging", 3);
        this.f31347d.offer(intent);
        Intent intent2 = new Intent("com.google.firebase.MESSAGING_EVENT");
        intent2.setPackage(context.getPackageName());
        return a(context, intent2);
    }
}
