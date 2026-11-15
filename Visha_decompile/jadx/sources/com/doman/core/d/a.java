package com.doman.core.d;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.just.agentweb.DefaultWebClient;
import java.util.List;

public final class a {
    public static ResolveInfo a(Context context, String str) {
        try {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.VIEW");
            intent.setFlags(268435456);
            intent.setData(Uri.parse(str));
            List<ResolveInfo> listQueryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 0);
            if (listQueryIntentActivities != null && listQueryIntentActivities.size() > 0) {
                return listQueryIntentActivities.iterator().next();
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public static void b(Context context, @NonNull String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            intent.addFlags(268435456);
            context.startActivity(intent);
        } catch (Throwable unused) {
        }
    }

    public static boolean c(Context context, String str) {
        if (!a(str) || a(context, str) == null) {
            return false;
        }
        b(context, str);
        return true;
    }

    public static boolean a(Context context, Intent intent) {
        if (context == null) {
            return false;
        }
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        try {
            context.startActivity(intent);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    private static boolean a(String str) {
        return (TextUtils.isEmpty(str) || str.startsWith(DefaultWebClient.HTTP_SCHEME) || str.startsWith("https://") || str.startsWith("file:///") || str.startsWith("javascript:") || str.startsWith("yy:")) ? false : true;
    }
}
