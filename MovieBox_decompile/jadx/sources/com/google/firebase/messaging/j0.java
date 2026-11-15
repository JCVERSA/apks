package com.google.firebase.messaging;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.util.Log;
import com.google.android.gms.common.util.PlatformVersion;
import java.util.List;

class j0 {

    private final Context f31273a;

    private String f31274b;

    private String f31275c;

    private int f31276d;

    private int f31277e = 0;

    j0(Context context) {
        this.f31273a = context;
    }

    static String c(com.google.firebase.f fVar) {
        String strD = fVar.n().d();
        if (strD != null) {
            return strD;
        }
        String strC = fVar.n().c();
        if (!strC.startsWith("1:")) {
            return strC;
        }
        String[] strArrSplit = strC.split(":");
        if (strArrSplit.length < 2) {
            return null;
        }
        String str = strArrSplit[1];
        if (str.isEmpty()) {
            return null;
        }
        return str;
    }

    private PackageInfo f(String str) {
        try {
            return this.f31273a.getPackageManager().getPackageInfo(str, 0);
        } catch (PackageManager.NameNotFoundException e10) {
            Log.w("FirebaseMessaging", "Failed to find package " + e10);
            return null;
        }
    }

    private synchronized void h() {
        PackageInfo packageInfoF = f(this.f31273a.getPackageName());
        if (packageInfoF != null) {
            this.f31274b = Integer.toString(packageInfoF.versionCode);
            this.f31275c = packageInfoF.versionName;
        }
    }

    synchronized String a() {
        try {
            if (this.f31274b == null) {
                h();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f31274b;
    }

    synchronized String b() {
        try {
            if (this.f31275c == null) {
                h();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f31275c;
    }

    synchronized int d() {
        PackageInfo packageInfoF;
        try {
            if (this.f31276d == 0 && (packageInfoF = f("com.google.android.gms")) != null) {
                this.f31276d = packageInfoF.versionCode;
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f31276d;
    }

    synchronized int e() {
        int i10 = this.f31277e;
        if (i10 != 0) {
            return i10;
        }
        PackageManager packageManager = this.f31273a.getPackageManager();
        if (packageManager.checkPermission("com.google.android.c2dm.permission.SEND", "com.google.android.gms") == -1) {
            Log.e("FirebaseMessaging", "Google Play services missing or without correct permission.");
            return 0;
        }
        if (!PlatformVersion.isAtLeastO()) {
            Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
            intent.setPackage("com.google.android.gms");
            List<ResolveInfo> listQueryIntentServices = packageManager.queryIntentServices(intent, 0);
            if (listQueryIntentServices != null && listQueryIntentServices.size() > 0) {
                this.f31277e = 1;
                return 1;
            }
        }
        Intent intent2 = new Intent("com.google.iid.TOKEN_REQUEST");
        intent2.setPackage("com.google.android.gms");
        List<ResolveInfo> listQueryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent2, 0);
        if (listQueryBroadcastReceivers != null && listQueryBroadcastReceivers.size() > 0) {
            this.f31277e = 2;
            return 2;
        }
        Log.w("FirebaseMessaging", "Failed to resolve IID implementation package, falling back");
        if (PlatformVersion.isAtLeastO()) {
            this.f31277e = 2;
        } else {
            this.f31277e = 1;
        }
        return this.f31277e;
    }

    boolean g() {
        return e() != 0;
    }
}
