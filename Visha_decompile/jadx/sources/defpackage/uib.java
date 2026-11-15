package defpackage;

import android.net.Uri;
import android.text.TextUtils;

public abstract class uib {
    public static boolean a(Uri uri) {
        return (uri == null || TextUtils.isEmpty(uri.toString()) || !uri.toString().contains("com.google.android.apps.nbu.files.provider")) ? false : true;
    }
}
