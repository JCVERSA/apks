package defpackage;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.transsion.ga.AthenaAnalytics;
import com.transsion.push.PushConstants;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.List;

public abstract class ik {
    public static String a;

    public static Bundle a(Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        bundle.putString("session_id", md8.n());
        bundle.putString("sdk_version", md8.l());
        bundle.putInt("sdk_version_int", md8.m());
        bundle.putString("user_agent", mjb.c());
        bundle.putInt("type", md8.o());
        bundle.putString("make", md8.c());
        bundle.putString("ostype", "Android");
        bundle.putInt(CommonUrlParts.SCREEN_WIDTH, md8.k());
        bundle.putInt(CommonUrlParts.SCREEN_HEIGHT, md8.j());
        bundle.putInt("screen_density", md8.i());
        bundle.putString("base_station", DeviceUtil.h());
        bundle.putDouble("latitude", za4.d());
        bundle.putDouble("longitude", za4.f());
        bundle.putLong("coordtime", za4.b());
        bundle.putString("oneid", DeviceUtil.k());
        bundle.putInt("turn_off_per_ads", DeviceUtil.g());
        if (TextUtils.isEmpty(a)) {
            try {
                a = AthenaAnalytics.G(ul4.a(), true);
            } catch (Exception e) {
                ja1.Log().e("ssp", "getAppVAID " + Log.getStackTraceString(e));
            }
        }
        bundle.putString(PushConstants.PROVIDER_VAID, a);
        bundle.putString("gaid", DeviceUtil.f());
        return bundle;
    }

    public static boolean b(List list, String str) {
        if (list == null || list.isEmpty()) {
            return false;
        }
        return list.contains(str);
    }

    public static void c(Runnable runnable) {
        HSScopeHelper.a.r(runnable);
    }
}
