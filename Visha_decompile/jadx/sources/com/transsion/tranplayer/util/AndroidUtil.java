package com.transsion.tranplayer.util;

import android.app.ActivityManager;
import android.net.Uri;
import java.io.File;

public class AndroidUtil {
    private static final String TAG = "AndroidUtil";
    public static final boolean isOOrLater = true;
    public static final boolean isNougatOrLater = true;
    public static final boolean isMarshMallowOrLater = true;
    public static final boolean isLolliPopOrLater = true;
    public static final boolean isKitKatOrLater = true;
    public static final boolean isJellyBeanMR2OrLater = true;
    private static long lastCheckTime = 0;
    private static Boolean sUserIsMonkey = null;

    public static Uri FileToUri(File file) {
        return Uri.fromFile(file);
    }

    public static Uri LocationToUri(String str) {
        Uri uri = Uri.parse(str);
        if (uri.getScheme() != null) {
            return uri;
        }
        throw new IllegalArgumentException("location has no scheme");
    }

    public static Uri PathToUri(String str) {
        return Uri.fromFile(new File(str));
    }

    public static File UriToFile(Uri uri) {
        return new File(uri.getPath().replaceFirst("file://", ""));
    }

    public static boolean isRunningByMonkey() {
        try {
            Boolean bool = sUserIsMonkey;
            if (bool == null) {
                sUserIsMonkey = Boolean.valueOf(ActivityManager.isUserAMonkey());
                return sUserIsMonkey.booleanValue();
            }
            if (bool.booleanValue() && System.currentTimeMillis() - lastCheckTime > 10000) {
                lastCheckTime = System.currentTimeMillis();
                sUserIsMonkey = Boolean.valueOf(ActivityManager.isUserAMonkey());
            }
            return sUserIsMonkey.booleanValue();
        } catch (Exception unused) {
        }
    }
}
