package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;

public abstract class ti5 {
    public static String a(Context context) {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        for (ResolveInfo resolveInfo : context.getPackageManager().queryIntentActivities(intent, 65536)) {
            if (resolveInfo != null && !TextUtils.isEmpty(resolveInfo.activityInfo.packageName)) {
                if (resolveInfo.activityInfo.packageName.contains("hilauncher")) {
                    return "com.transsion.hilauncher.unreadprovider";
                }
                if (resolveInfo.activityInfo.packageName.contains("XOSLauncher")) {
                    return "com.transsion.XOSLauncher.unreadprovider";
                }
                if (resolveInfo.activityInfo.packageName.contains("itel.launcher")) {
                    return "com.transsion.itel.launcher.unreadprovider";
                }
                if (resolveInfo.activityInfo.packageName.contains("walauncher")) {
                    return "com.transsion.walauncher.unreadprovider";
                }
            }
        }
        return "";
    }

    public static void b(int i, Context context) {
        Bundle bundle = new Bundle();
        bundle.putString("package", context.getPackageName());
        bundle.putString("class", "com.transsion.magicmovie.activity.TRSplashActivity");
        bundle.putInt("badgenumber", i);
        try {
            String strA = a(context);
            if (TextUtils.isEmpty(strA)) {
                return;
            }
            context.getContentResolver().call(Uri.parse("content://" + strA), "change_badge", (String) null, bundle);
        } catch (Exception e) {
            Log.e("LauncherBadgeUtils", "setbadge fail e" + e);
        }
    }
}
