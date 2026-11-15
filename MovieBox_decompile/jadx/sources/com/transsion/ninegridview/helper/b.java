package com.transsion.ninegridview.helper;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import kotlin.jvm.internal.Intrinsics;
import org.mvel2.ast.ASTNode;

public final class b {

    public static final b f45813a = new b();

    private b() {
    }

    public final void a(Activity activity, int i10) {
        Intrinsics.h(activity, "activity");
        String packageName = activity.getPackageName();
        Intrinsics.g(packageName, "getPackageName(...)");
        Intent intent = new Intent("com.android.setting.ACTION_GET_PERMISSION_DETAILS");
        intent.putExtra("packagename", packageName);
        intent.addFlags(ASTNode.DEOP);
        try {
            try {
                try {
                    if (i10 > 0) {
                        activity.startActivityForResult(intent, i10);
                    } else {
                        activity.startActivity(intent);
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            } catch (ActivityNotFoundException unused) {
                Intent intent2 = new Intent("android.settings.MANAGE_APPLICATIONS_SETTINGS");
                intent2.addFlags(ASTNode.DEOP);
                if (i10 > 0) {
                    activity.startActivityForResult(intent2, i10);
                } else {
                    activity.startActivity(intent2);
                }
            }
        } catch (ActivityNotFoundException unused2) {
            Intent intent3 = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent3.setData(Uri.parse("package:" + packageName));
            intent3.addFlags(ASTNode.DEOP);
            if (i10 > 0) {
                activity.startActivityForResult(intent3, i10);
            } else {
                activity.startActivity(intent3);
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }
}
