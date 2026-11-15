package com.transsion.baselib.helper;

import android.content.Context;
import android.os.Build;
import java.util.Iterator;
import kotlin.jvm.internal.ArrayIteratorKt;

public final class e {

    public static final e f42126a = new e();

    private static final String[] f42127b;

    static {
        f42127b = Build.VERSION.SDK_INT < 33 ? new String[]{"android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE"} : new String[]{"android.permission.READ_MEDIA_VIDEO"};
    }

    private e() {
    }

    public final String[] a() {
        return f42127b;
    }

    public final boolean b(Context context, String[] strArr) {
        if (context == null || strArr == null) {
            return false;
        }
        Iterator itA = ArrayIteratorKt.a(strArr);
        while (itA.hasNext()) {
            if (androidx.core.content.b.checkSelfPermission(context, (String) itA.next()) != 0) {
                return false;
            }
        }
        return true;
    }

    public final boolean c(Context context) {
        return b(context, f42127b);
    }
}
