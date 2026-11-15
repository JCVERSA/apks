package com.transsion.search.speech;

import androidx.core.app.NotificationCompat;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.hisavana.common.tracking.TrackingKey;
import java.util.LinkedHashMap;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

public final class q {

    public static final q f50220a = new q();

    private static String f50221b;

    private q() {
    }

    public final void a() {
        com.transsion.baselib.helper.a.f42121a.b("sr_dialog_cancel_btn", MapsKt.h());
    }

    public final void b() {
        com.transsion.baselib.helper.a.f42121a.b("sr_mic_btn", MapsKt.h());
    }

    public final void c(String msg, int i10) {
        Intrinsics.h(msg, "msg");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(EventConstants.KEY_ACTION, "fail");
        linkedHashMap.put(NotificationCompat.CATEGORY_MESSAGE, msg);
        linkedHashMap.put("code", String.valueOf(i10));
        linkedHashMap.put(TrackingKey.TRIGGER_ID, String.valueOf(f50221b));
        com.transsion.baselib.helper.a.f42121a.a("sr_dialog_sr", linkedHashMap);
        f50221b = null;
    }

    public final void d() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(EventConstants.KEY_ACTION, "trigger");
        String strA = d.f50205a.a(10);
        f50221b = strA;
        linkedHashMap.put(TrackingKey.TRIGGER_ID, String.valueOf(strA));
        com.transsion.baselib.helper.a.f42121a.a("sr_dialog_sr", linkedHashMap);
    }

    public final void e() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(EventConstants.KEY_ACTION, NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS);
        linkedHashMap.put(TrackingKey.TRIGGER_ID, String.valueOf(f50221b));
        com.transsion.baselib.helper.a.f42121a.a("sr_dialog_sr", linkedHashMap);
        f50221b = null;
    }

    public final void f() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(EventConstants.KEY_ACTION, "strategy");
        linkedHashMap.put(AppMeasurementSdk.ConditionalUserProperty.VALUE, "two");
        linkedHashMap.put("model", com.blankj.utilcode.util.k.b());
        com.transsion.baselib.helper.a.f42121a.b("sr_dialog_sr", MapsKt.h());
    }
}
