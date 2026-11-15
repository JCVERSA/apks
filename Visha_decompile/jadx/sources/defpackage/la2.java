package defpackage;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.hisavana.common.constant.ComConstants;
import com.transsion.core.deviceinfo.DeviceInfo;
import com.transsion.push.utils.PushLogUtils;
import java.util.TimeZone;
import org.apache.commons.lang3.time.TimeZones;

public abstract class la2 {
    public static void a(StringBuilder sb, int i, int i2) {
        String string = Integer.toString(i2);
        for (int i3 = 0; i3 < i - string.length(); i3++) {
            sb.append('0');
        }
        sb.append(string);
    }

    public static String b(boolean z, boolean z2, int i) {
        char c;
        int i2 = i / ComConstants.defScheduleTime;
        if (i2 < 0) {
            i2 = -i2;
            c = '-';
        } else {
            c = '+';
        }
        StringBuilder sb = new StringBuilder(9);
        if (z) {
            sb.append(TimeZones.GMT_ID);
        }
        sb.append(c);
        a(sb, 2, i2 / 60);
        if (z2) {
            sb.append(':');
        }
        a(sb, 2, i2 % 60);
        return sb.toString();
    }

    public static String c() {
        try {
            return b(true, true, TimeZone.getDefault().getRawOffset());
        } catch (Throwable th) {
            PushLogUtils.LOG.i(Log.getStackTraceString(th));
            return "";
        }
    }

    public static int d() {
        String strF = DeviceInfo.f();
        if (TextUtils.isEmpty(strF) || strF.length() < 3) {
            return 0;
        }
        try {
            return Integer.parseInt(strF.substring(0, 3));
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    public static int e() {
        String strF = DeviceInfo.f();
        if (!TextUtils.isEmpty(strF) && strF.length() >= 4) {
            try {
                return Integer.parseInt(strF.substring(3));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return 0;
    }

    public static String f() {
        try {
            return xj1.a().getPackageName();
        } catch (Exception unused) {
            return "";
        }
    }

    public static String g(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static boolean h(Context context) {
        return (context.getResources().getConfiguration().screenLayout & 15) >= 3;
    }
}
