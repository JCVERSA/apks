package com.transsion.liblan.util;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.net.Uri;
import java.io.File;

public class AndroidUtil {
    public static final boolean IS_P_OR_LATER = true;
    public static final boolean IS_O_OR_LATER = true;
    public static final boolean IS_NOUGAT_MR_1_OR_LATER = true;
    public static final boolean IS_NOUGAT_OR_LATER = true;
    public static final boolean IS_MARSH_MALLOW_OR_LATER = true;
    public static final boolean IS_LOLLI_POP_OR_LATER = true;
    public static final boolean IS_KIT_KAT_OR_LATER = true;
    public static final boolean IS_JELLY_BEAN_MR_2_OR_LATER = true;

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

    public static Activity resolveActivity(Context context) {
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            return resolveActivity(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }
}
