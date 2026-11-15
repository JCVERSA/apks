package defpackage;

import android.content.Context;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import com.transsion.push.PushConstants;
import com.transsion.sdk.oneid.OneID;
import java.util.UUID;

public abstract class sbd {
    public static String a = "";
    public static boolean b = false;

    public static String a() {
        if (!TextUtils.isEmpty(a)) {
            return a;
        }
        if (OneID.f()) {
            c4d.b("OneID isEnable = true");
            a = b ? OneID.e().b() : "";
        }
        return a;
    }

    public static void b(Context context) {
        if (TextUtils.isEmpty(a)) {
            try {
                String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
                if (!TextUtils.isEmpty(string)) {
                    a = UUID.nameUUIDFromBytes((context.getPackageName() + string).getBytes()).toString();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (TextUtils.isEmpty(a)) {
                a = UUID.randomUUID().toString();
            }
            try {
                k5d.a(context).c(PushConstants.PROVIDER_VAID, a);
            } catch (Exception e2) {
                c4d.d(Log.getStackTraceString(e2));
            }
        }
    }

    public static void c(Context context, int i, int i2) {
        try {
            OneID.d(context, i, i2);
            b = true;
        } catch (Exception e) {
            c4d.d(Log.getStackTraceString(e));
        }
    }

    public static String d(Context context) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            if (!TextUtils.isEmpty(a)) {
                return a;
            }
            if (OneID.f()) {
                c4d.b("OneID isEnable = true");
                a = b ? OneID.e().b() : "";
            }
            if (TextUtils.isEmpty(a)) {
                a = k5d.a(context).b(PushConstants.PROVIDER_VAID);
                b(context);
            }
            c4d.b("*******************/ vaid cost : " + (System.currentTimeMillis() - jCurrentTimeMillis) + " /*******************");
            return a;
        } catch (Exception e) {
            c4d.d(Log.getStackTraceString(e));
            b(context);
        }
    }
}
