package oc;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import androidx.core.content.b;
import hc.c;

public class a {

    private final Context f67800a;

    private final SharedPreferences f67801b;

    private final c f67802c;

    private boolean f67803d;

    public a(Context context, String str, c cVar) {
        Context contextA = a(context);
        this.f67800a = contextA;
        this.f67801b = contextA.getSharedPreferences("com.google.firebase.common.prefs:" + str, 0);
        this.f67802c = cVar;
        this.f67803d = c();
    }

    private static Context a(Context context) {
        return Build.VERSION.SDK_INT < 24 ? context : b.createDeviceProtectedStorageContext(context);
    }

    private boolean c() {
        return this.f67801b.contains("firebase_data_collection_default_enabled") ? this.f67801b.getBoolean("firebase_data_collection_default_enabled", true) : d();
    }

    private boolean d() {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        try {
            PackageManager packageManager = this.f67800a.getPackageManager();
            if (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(this.f67800a.getPackageName(), 128)) == null || (bundle = applicationInfo.metaData) == null || !bundle.containsKey("firebase_data_collection_default_enabled")) {
                return true;
            }
            return applicationInfo.metaData.getBoolean("firebase_data_collection_default_enabled");
        } catch (PackageManager.NameNotFoundException unused) {
            return true;
        }
    }

    public synchronized boolean b() {
        return this.f67803d;
    }
}
