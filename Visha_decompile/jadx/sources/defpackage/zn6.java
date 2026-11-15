package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.util.Log;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.List;

public class zn6 {
    public final Context a;
    public String b;
    public String c;
    public int d;
    public int e = 0;

    public zn6(Context context) {
        this.a = context;
    }

    public static String c(zv3 zv3Var) {
        String strD = zv3Var.m().d();
        if (strD != null) {
            return strD;
        }
        String strC = zv3Var.m().c();
        if (!strC.startsWith("1:")) {
            return strC;
        }
        String[] strArrSplit = strC.split(StringUtils.PROCESS_POSTFIX_DELIMITER);
        if (strArrSplit.length < 2) {
            return null;
        }
        String str = strArrSplit[1];
        if (str.isEmpty()) {
            return null;
        }
        return str;
    }

    public synchronized String a() {
        try {
            if (this.b == null) {
                h();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.b;
    }

    public synchronized String b() {
        try {
            if (this.c == null) {
                h();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.c;
    }

    public synchronized int d() {
        PackageInfo packageInfoF;
        try {
            if (this.d == 0 && (packageInfoF = f("com.google.android.gms")) != null) {
                this.d = packageInfoF.versionCode;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.d;
    }

    public synchronized int e() {
        int i = this.e;
        if (i != 0) {
            return i;
        }
        PackageManager packageManager = this.a.getPackageManager();
        if (packageManager.checkPermission("com.google.android.c2dm.permission.SEND", "com.google.android.gms") == -1) {
            Log.e("FirebaseMessaging", "Google Play services missing or without correct permission.");
            return 0;
        }
        if (!d28.g()) {
            Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
            intent.setPackage("com.google.android.gms");
            List<ResolveInfo> listQueryIntentServices = packageManager.queryIntentServices(intent, 0);
            if (listQueryIntentServices != null && listQueryIntentServices.size() > 0) {
                this.e = 1;
                return 1;
            }
        }
        Intent intent2 = new Intent("com.google.iid.TOKEN_REQUEST");
        intent2.setPackage("com.google.android.gms");
        List<ResolveInfo> listQueryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent2, 0);
        if (listQueryBroadcastReceivers != null && listQueryBroadcastReceivers.size() > 0) {
            this.e = 2;
            return 2;
        }
        Log.w("FirebaseMessaging", "Failed to resolve IID implementation package, falling back");
        if (d28.g()) {
            this.e = 2;
        } else {
            this.e = 1;
        }
        return this.e;
    }

    public final PackageInfo f(String str) {
        try {
            return this.a.getPackageManager().getPackageInfo(str, 0);
        } catch (PackageManager.NameNotFoundException e) {
            Log.w("FirebaseMessaging", "Failed to find package " + e);
            return null;
        }
    }

    public boolean g() {
        return e() != 0;
    }

    public final synchronized void h() {
        PackageInfo packageInfoF = f(this.a.getPackageName());
        if (packageInfoF != null) {
            this.b = Integer.toString(packageInfoF.versionCode);
            this.c = packageInfoF.versionName;
        }
    }
}
