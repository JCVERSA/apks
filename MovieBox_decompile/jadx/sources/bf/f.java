package bf;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.text.TextUtils;
import java.io.File;

public abstract class f {
    private static String a(Context context) {
        try {
            ApplicationInfo applicationInfo = context.getApplicationInfo();
            if (applicationInfo == null) {
                return null;
            }
            return applicationInfo.sourceDir;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String b(Context context) {
        return c(context, null);
    }

    public static String c(Context context, String str) {
        b bVarD = d(context);
        return bVarD == null ? str : bVarD.a();
    }

    public static b d(Context context) {
        String strA = a(context);
        if (TextUtils.isEmpty(strA)) {
            return null;
        }
        return c.a(new File(strA));
    }
}
