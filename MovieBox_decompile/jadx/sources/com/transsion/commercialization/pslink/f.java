package com.transsion.commercialization.pslink;

import androidx.core.app.NotificationCompat;
import com.cloud.tmc.integration.event.EventConstants;
import java.util.LinkedHashMap;

public final class f {

    public static final f f42650a = new f();

    private f() {
    }

    public final void a() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(EventConstants.KEY_ACTION, "download_dialog_click_member_guide");
        com.transsion.baselib.helper.a.f42121a.b("download_intercept", linkedHashMap);
    }

    public final void b() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(EventConstants.KEY_ACTION, "download_dialog_click_rewarded");
        com.transsion.baselib.helper.a.f42121a.b("download_intercept", linkedHashMap);
    }

    public final void c() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(EventConstants.KEY_ACTION, "download_dialog_click_try_another");
        com.transsion.baselib.helper.a.f42121a.b("download_intercept", linkedHashMap);
    }

    public final void d() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(EventConstants.KEY_ACTION, "download_intercept_dialog_change_click");
        com.transsion.baselib.helper.a.f42121a.b("download_intercept", linkedHashMap);
    }

    public final void e() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(EventConstants.KEY_ACTION, "download_intercept_dialog_member_click");
        com.transsion.baselib.helper.a.f42121a.b("download_intercept", linkedHashMap);
    }

    public final void f() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(EventConstants.KEY_ACTION, "download_intercept_dialog_show");
        com.transsion.baselib.helper.a.f42121a.a("download_intercept", linkedHashMap);
    }

    public final void g() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(EventConstants.KEY_ACTION, "download_dialog_show");
        com.transsion.baselib.helper.a.f42121a.a("download_intercept", linkedHashMap);
    }

    public final void h(String str, int i10) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("packageName", String.valueOf(str));
        linkedHashMap.put(NotificationCompat.CATEGORY_STATUS, String.valueOf(i10));
        com.transsion.baselib.helper.a.f42121a.d(linkedHashMap);
    }
}
