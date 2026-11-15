package defpackage;

import com.alibaba.android.arouter.utils.Consts;

public abstract class nnb {
    public static int a(Object obj) {
        return b(obj, 0);
    }

    public static int b(Object obj, int i) {
        if (obj == null) {
            return i;
        }
        try {
            String strTrim = obj.toString().trim();
            return strTrim.contains(Consts.DOT) ? Integer.parseInt(strTrim.substring(0, strTrim.lastIndexOf(Consts.DOT))) : Integer.parseInt(strTrim);
        } catch (Exception unused) {
            return i;
        }
    }

    public static String c(Object obj) {
        try {
            return obj.toString();
        } catch (Exception unused) {
            return "";
        }
    }
}
