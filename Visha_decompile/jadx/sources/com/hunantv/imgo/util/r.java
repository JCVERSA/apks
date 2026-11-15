package com.hunantv.imgo.util;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.core.content.PermissionChecker;
import com.transsion.playercommon.activities.BasePermissionActivity;

public class r {
    public static boolean a(@NonNull Context context, @NonNull String str) {
        try {
            if (context.getPackageManager().getPackageInfo(context.getPackageName(), 64).applicationInfo.targetSdkVersion >= 23) {
                return context.checkSelfPermission(str) == 0;
            }
            return PermissionChecker.checkSelfPermission(context, str) == 0;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return false;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static void a(Context context) {
        Intent intent = new Intent(BasePermissionActivity.PERMISSION_ACTION_OTHER);
        intent.setData(Uri.parse("package:" + context.getPackageName()));
        intent.setFlags(268435456);
        context.startActivity(intent);
    }
}
