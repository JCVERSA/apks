package com.doman.core.d;

import android.os.Environment;
import android.text.TextUtils;
import com.doman.core.CoreMain;
import java.io.File;

public final class j {
    public static String a() {
        try {
            File externalFilesDir = CoreMain.getInstance().getContext().getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS);
            return externalFilesDir != null ? externalFilesDir.toString() : "";
        } catch (Throwable unused) {
            return "";
        }
    }

    public static boolean a(String str, String str2) {
        String[] strArrSplit;
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && (strArrSplit = str.split("://")) != null && strArrSplit.length > 0) {
            String str3 = strArrSplit[0];
            if (str2.equalsIgnoreCase(str3)) {
                return true;
            }
            if ((str3 + "://").equalsIgnoreCase(str3)) {
                return true;
            }
        }
        return false;
    }
}
