package com.hunantv.imgo.util;

import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import com.alibaba.android.arouter.utils.Consts;
import java.io.File;
import java.util.Locale;

public class x {
    public static String a(File file) {
        String strB = b(file);
        if (strB == null) {
            return "file/*";
        }
        String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(strB);
        return !TextUtils.isEmpty(mimeTypeFromExtension) ? mimeTypeFromExtension : "file/*";
    }

    private static String b(File file) {
        int iLastIndexOf;
        if (file != null && file.exists() && !file.isDirectory()) {
            String name = file.getName();
            if (!name.equals("") && !name.endsWith(Consts.DOT) && (iLastIndexOf = name.lastIndexOf(Consts.DOT)) != -1) {
                return name.substring(iLastIndexOf + 1).toLowerCase(Locale.US);
            }
        }
        return null;
    }
}
