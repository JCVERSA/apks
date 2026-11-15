package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.CustomTabsServiceConnection;
import androidx.browser.customtabs.CustomTabsSession;
import com.google.android.gms.internal.ads.zzhfp;
import java.util.List;

public final class xye {
    public CustomTabsSession a;
    public CustomTabsClient b;
    public CustomTabsServiceConnection c;
    public wye d;

    public static boolean g(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://www.example.com"));
            ResolveInfo resolveInfoResolveActivity = packageManager.resolveActivity(intent, 0);
            List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
            if (listQueryIntentActivities != null && resolveInfoResolveActivity != null) {
                for (int i = 0; i < listQueryIntentActivities.size(); i++) {
                    if (resolveInfoResolveActivity.activityInfo.name.equals(listQueryIntentActivities.get(i).activityInfo.name)) {
                        return resolveInfoResolveActivity.activityInfo.packageName.equals(wyi.a(context));
                    }
                }
            }
        }
        return false;
    }

    public final CustomTabsSession a() {
        CustomTabsClient customTabsClient = this.b;
        if (customTabsClient == null) {
            this.a = null;
        } else if (this.a == null) {
            this.a = customTabsClient.newSession(null);
        }
        return this.a;
    }

    public final void b(Activity activity) {
        String strA;
        if (this.b == null && (strA = wyi.a(activity)) != null) {
            zzhfp zzhfpVar = new zzhfp(this);
            this.c = zzhfpVar;
            CustomTabsClient.bindCustomTabsService(activity, strA, zzhfpVar);
        }
    }

    public final void c(CustomTabsClient customTabsClient) {
        this.b = customTabsClient;
        customTabsClient.warmup(0L);
        wye wyeVar = this.d;
        if (wyeVar != null) {
            wyeVar.zza();
        }
    }

    public final void d() {
        this.b = null;
        this.a = null;
    }

    public final void e(wye wyeVar) {
        this.d = wyeVar;
    }

    public final void f(Activity activity) {
        CustomTabsServiceConnection customTabsServiceConnection = this.c;
        if (customTabsServiceConnection == null) {
            return;
        }
        activity.unbindService(customTabsServiceConnection);
        this.b = null;
        this.a = null;
        this.c = null;
    }
}
