package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import androidx.core.content.ContextCompat;

public class zr1 {
    public final Context a;
    public final SharedPreferences b;
    public final kk8 c;
    public boolean d;

    public zr1(Context context, String str, kk8 kk8Var) {
        Context contextA = a(context);
        this.a = contextA;
        this.b = contextA.getSharedPreferences("com.google.firebase.common.prefs:" + str, 0);
        this.c = kk8Var;
        this.d = c();
    }

    public static Context a(Context context) {
        return ContextCompat.createDeviceProtectedStorageContext(context);
    }

    public synchronized boolean b() {
        return this.d;
    }

    public final boolean c() {
        return this.b.contains("firebase_data_collection_default_enabled") ? this.b.getBoolean("firebase_data_collection_default_enabled", true) : d();
    }

    public final boolean d() {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        try {
            PackageManager packageManager = this.a.getPackageManager();
            if (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(this.a.getPackageName(), 128)) == null || (bundle = applicationInfo.metaData) == null || !bundle.containsKey("firebase_data_collection_default_enabled")) {
                return true;
            }
            return applicationInfo.metaData.getBoolean("firebase_data_collection_default_enabled");
        } catch (PackageManager.NameNotFoundException unused) {
            return true;
        }
    }
}
