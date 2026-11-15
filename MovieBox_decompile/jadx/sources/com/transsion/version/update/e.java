package com.transsion.version.update;

import com.cloud.tmc.integration.event.EventConstants;
import com.transsion.web.api.WebConstants;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

public final class e {

    public static final e f55374a = new e();

    private e() {
    }

    public static void d(e eVar, String str, boolean z10, String str2, String str3, int i10, Object obj) {
        if ((i10 & 8) != 0) {
            str3 = null;
        }
        eVar.c(str, z10, str2, str3);
    }

    public final void a(String fromPage, boolean z10, String dialogType) {
        Intrinsics.h(fromPage, "fromPage");
        Intrinsics.h(dialogType, "dialogType");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("is_upgrade", String.valueOf(z10));
        linkedHashMap.put("dialog_type", dialogType);
        linkedHashMap.put(EventConstants.KEY_ACTION, "click");
        linkedHashMap.put(WebConstants.PAGE_FROM, fromPage);
        qi.h.f69682a.A("update_page", "update", linkedHashMap);
        if (z10) {
            d dVar = d.f55366a;
            dVar.b().putString("key_user_clicked_dialog_type", dialogType);
            dVar.b().putInt("key_last_installed_version_v2", com.blankj.utilcode.util.c.f());
        }
    }

    public final void b(Map map) {
        Intrinsics.h(map, "map");
        qi.h.f69682a.A("update_page", "update", map);
    }

    public final void c(String fromPage, boolean z10, String dialogType, String str) {
        Intrinsics.h(fromPage, "fromPage");
        Intrinsics.h(dialogType, "dialogType");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("show diffUpdateDialog from page:");
        sb2.append(fromPage);
        sb2.append(", ");
        sb2.append(linkedHashMap);
        linkedHashMap.put(EventConstants.KEY_ACTION, "show_dialog");
        linkedHashMap.put(WebConstants.PAGE_FROM, fromPage);
        linkedHashMap.put("manual", String.valueOf(z10));
        linkedHashMap.put("dialog_type", dialogType);
        linkedHashMap.put("ps_error_msg", String.valueOf(str));
        qi.h.f69682a.A("update_page", "update", linkedHashMap);
    }
}
