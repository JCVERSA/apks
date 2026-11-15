package tu;

import android.os.Bundle;
import android.text.TextUtils;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.transsion.push.PushConstants;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

public final class l {
    public static void a(int i10, int i11, String str, String str2, int i12) {
        if ((i12 & 4) != 0) {
            str = null;
        }
        if ((i12 & 8) != 0) {
            str2 = null;
        }
        b(i10, i11, str, str2, com.transsion.upgradesdk.bean.c.STATUS_DEFAULT);
    }

    public static void b(int i10, int i11, String str, String str2, com.transsion.upgradesdk.bean.c customType) {
        Intrinsics.h(customType, "customType");
        Bundle bundle = new Bundle();
        bundle.putInt("t", i10);
        if (i11 > 0) {
            bundle.putInt("s", i11);
        }
        if (!TextUtils.isEmpty(str)) {
            bundle.putString("c", str);
        }
        if (!TextUtils.isEmpty(str2)) {
            bundle.putString("m", str2);
        }
        int i12 = customType.f54519a;
        if (i12 > 0) {
            bundle.putInt("customType", i12);
        }
        g("ps_upgrade_sdk_event", bundle);
    }

    public static void c(int i10, int i11, String str, String str2, com.transsion.upgradesdk.bean.c customType, Boolean bool, Boolean bool2, int i12) {
        if ((i12 & 4) != 0) {
            str = null;
        }
        if ((i12 & 8) != 0) {
            str2 = null;
        }
        if ((i12 & 16) != 0) {
            customType = com.transsion.upgradesdk.bean.c.STATUS_DEFAULT;
        }
        if ((i12 & 32) != 0) {
            bool = null;
        }
        if ((i12 & 64) != 0) {
            bool2 = null;
        }
        Intrinsics.h(customType, "customType");
        Bundle bundle = new Bundle();
        bundle.putInt("t", i10);
        if (i11 > 0) {
            bundle.putInt("s", i11);
        }
        if (!TextUtils.isEmpty(str)) {
            bundle.putString("c", str);
        }
        if (!TextUtils.isEmpty(str2)) {
            bundle.putString("m", str2);
        }
        if (bool2 != null) {
            bundle.putBoolean(PushConstants.PUSH_SERVICE_TYPE_SHOW, bool2.booleanValue());
        }
        if (bool != null) {
            bundle.putBoolean("f", bool.booleanValue());
        }
        int i13 = customType.f54519a;
        if (i13 > 0) {
            bundle.putInt("customType", i13);
        }
        g("ps_upgrade_report_event", bundle);
    }

    public static void d(int i10, boolean z10, com.transsion.upgradesdk.bean.c customType) {
        Intrinsics.h(customType, "customType");
        Bundle bundle = new Bundle();
        bundle.putString(AppMeasurementSdk.ConditionalUserProperty.VALUE, "R_USK_X_X");
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(NativeComponentConstants.KEY_COMPONENT_TYPE, i10);
            jSONObject.put("isManual", z10);
            jSONObject.put("customType", customType.f54519a);
            bundle.putString("extraValue", jSONObject.toString());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        g("ps_common_exposure", bundle);
    }

    public static void e(int i10, boolean z10, String str, com.transsion.upgradesdk.bean.c customType) {
        Intrinsics.h(customType, "customType");
        Bundle bundle = new Bundle();
        bundle.putString(AppMeasurementSdk.ConditionalUserProperty.VALUE, "R_USK_X_X");
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(NativeComponentConstants.KEY_COMPONENT_TYPE, i10);
            jSONObject.put("isManual", z10);
            jSONObject.put("customType", customType.f54519a);
            bundle.putString("extraValue", jSONObject.toString());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        bundle.putString("buttonType", str);
        g("ps_common_click", bundle);
    }

    public static final void f(String eventName, int i10, Bundle bundle) {
        Intrinsics.h(eventName, "$eventName");
        Intrinsics.h(bundle, "$bundle");
        new hi.a(eventName, i10).c(bundle, null).b();
    }

    public static void g(final String str, final Bundle bundle) {
        final int i10 = 1044;
        e.f72837a.execute(new Runnable() {
            @Override
            public final void run() {
                l.f(str, i10, bundle);
            }
        });
    }
}
