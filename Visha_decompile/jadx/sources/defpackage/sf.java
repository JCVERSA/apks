package defpackage;

import android.text.TextUtils;
import java.text.SimpleDateFormat;
import java.util.Date;

public abstract class sf {
    public static String a;

    public static String a() {
        if (TextUtils.isEmpty(a) && ul4.a().getApplicationContext() != null) {
            try {
                a = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss SSS Z").format(new Date(ul4.a().getApplicationContext().getPackageManager().getPackageInfo(ul4.a().getApplicationContext().getPackageName(), 0).firstInstallTime));
            } catch (Exception e) {
                ja1.Log().d("ssp", "get installTime is error: " + e.getMessage());
            }
        }
        return a;
    }
}
