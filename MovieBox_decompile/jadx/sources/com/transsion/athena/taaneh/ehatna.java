package com.transsion.athena.taaneh;

import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import com.transsion.push.PushConstants;
import com.transsion.sdk.oneid.OneID;
import java.util.UUID;
import m4.b;

public class ehatna {

    private static String f41685a = "";

    private static boolean f41686b;

    public static void a(Context context, int i10, int i11) {
        try {
            OneID.d(context, i10, i11);
            f41686b = true;
        } catch (Exception e10) {
            aethna.b(Log.getStackTraceString(e10));
        }
    }

    public static String b(Context context) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            if (!TextUtils.isEmpty(f41685a)) {
                return f41685a;
            }
            if (OneID.f()) {
                aethna.a("OneID isEnable = true");
                f41685a = f41686b ? OneID.e().b() : "";
            }
            if (TextUtils.isEmpty(f41685a)) {
                f41685a = b.b(context).a(PushConstants.PROVIDER_VAID);
                a(context);
            }
            aethna.a("*******************/ vaid cost : " + (System.currentTimeMillis() - jCurrentTimeMillis) + " /*******************");
            return f41685a;
        } catch (Exception e10) {
            aethna.b(Log.getStackTraceString(e10));
            a(context);
        }
    }

    public static String a() {
        if (!TextUtils.isEmpty(f41685a)) {
            return f41685a;
        }
        if (OneID.f()) {
            aethna.a("OneID isEnable = true");
            f41685a = f41686b ? OneID.e().b() : "";
        }
        return f41685a;
    }

    private static void a(Context context) {
        if (TextUtils.isEmpty(f41685a)) {
            if (Build.VERSION.SDK_INT >= 26) {
                try {
                    String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
                    if (!TextUtils.isEmpty(string)) {
                        f41685a = UUID.nameUUIDFromBytes((context.getPackageName() + string).getBytes()).toString();
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            if (TextUtils.isEmpty(f41685a)) {
                f41685a = UUID.randomUUID().toString();
            }
            try {
                b.b(context).c(PushConstants.PROVIDER_VAID, f41685a);
            } catch (Exception e11) {
                aethna.b(Log.getStackTraceString(e11));
            }
        }
    }
}
