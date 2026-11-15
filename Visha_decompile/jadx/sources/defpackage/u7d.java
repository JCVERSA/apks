package defpackage;

import android.content.Context;
import android.text.TextUtils;

public abstract class u7d {
    public static String a(Context context) {
        StringBuffer stringBuffer = new StringBuffer();
        try {
            if (i2d.b(context, "android.permission.RECORD_AUDIO")) {
                stringBuffer.append("1");
            } else {
                stringBuffer.append("2");
            }
            if (i2d.b(context, "android.permission.CALL_PHONE")) {
                stringBuffer.append("1");
            } else {
                stringBuffer.append("2");
            }
            if (i2d.b(context, "android.permission.CAMERA")) {
                stringBuffer.append("1");
            } else {
                stringBuffer.append("2");
            }
            if (i2d.b(context, "android.permission.VIBRATE")) {
                stringBuffer.append("1");
            } else {
                stringBuffer.append("2");
            }
            if (TextUtils.isEmpty(stringBuffer)) {
                stringBuffer = new StringBuffer("3333");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return stringBuffer.toString();
    }
}
