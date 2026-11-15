package defpackage;

import android.text.TextUtils;

public abstract class zvh {
    public static void a() {
        if (!nuh.b()) {
            throw new IllegalStateException("Method called before OM SDK activation");
        }
    }

    public static void b(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException(str2);
        }
    }

    public static void c(Object obj, String str) {
        if (obj == null) {
            throw new IllegalArgumentException(str);
        }
    }

    public static void d(String str, int i, String str2) {
        if (str.length() > 256) {
            throw new IllegalArgumentException("CustomReferenceData is greater than 256 characters");
        }
    }
}
