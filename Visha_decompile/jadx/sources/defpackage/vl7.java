package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageItemInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.graphics.drawable.Drawable;
import androidx.media3.extractor.AacUtil;
import java.security.MessageDigest;

public abstract class vl7 {
    public static Drawable a(Context context, ApplicationInfo applicationInfo) {
        try {
            Class<?> cls = Class.forName("android.util.IconDrawableFactory");
            return (Drawable) cls.getMethod("getBadgedIcon", PackageItemInfo.class, ApplicationInfo.class, Integer.TYPE).invoke(cls.getMethod("newInstance", Context.class).invoke(null, context), applicationInfo, applicationInfo, Integer.valueOf(applicationInfo.uid / AacUtil.AAC_LC_MAX_RATE_BYTES_PER_SECOND));
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String b(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 64);
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            Signature[] signatureArr = packageInfo.signatures;
            if (signatureArr == null || signatureArr.length <= 0) {
                return "";
            }
            byte[] bArrDigest = messageDigest.digest(signatureArr[0].toByteArray());
            StringBuilder sb = new StringBuilder();
            for (byte b : bArrDigest) {
                sb.append(Integer.toHexString((b & 255) | 256).substring(1, 3));
            }
            return sb.toString().toUpperCase();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static void c(Activity activity, boolean z) {
        if (z) {
            if ((activity.getWindow().getAttributes().flags & 8192) != 0) {
                return;
            }
            activity.getWindow().addFlags(8192);
        } else {
            if ((activity.getWindow().getAttributes().flags & 8192) == 0) {
                return;
            }
            activity.getWindow().clearFlags(8192);
        }
    }

    public static boolean d(Context context, String str) {
        try {
            PackageManager packageManager = context.getPackageManager();
            return packageManager.getPackageInfo(str, 0) != null && packageManager.getApplicationInfo(str, 0).enabled;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean e(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        return applicationInfo.uid == 1000 || (applicationInfo.flags & 1) != 0;
    }
}
