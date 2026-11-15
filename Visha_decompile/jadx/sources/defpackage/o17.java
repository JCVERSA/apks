package defpackage;

import android.text.TextUtils;
import com.hisavana.common.bean.TAdErrorCode;

public abstract class o17 {
    public static Object a(Object obj, Object obj2) {
        return obj == null ? obj2 : obj;
    }

    public static String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return TAdErrorCode.EMPTY_MSG;
        }
        if (str.length() <= 100) {
            return str;
        }
        try {
            return str.substring(0, 100);
        } catch (Exception unused) {
            return TAdErrorCode.EMPTY_MSG;
        }
    }
}
