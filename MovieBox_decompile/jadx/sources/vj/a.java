package vj;

import com.cloud.tmc.integration.event.EventConstants;
import com.hisavana.common.tracking.TrackingKey;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    public static final a f73652a = new a();

    private a() {
    }

    private final void a(boolean z10, uj.a aVar, String str, String str2) {
        HashMap map = new HashMap();
        map.put(EventConstants.KEY_SOURCE, aVar.j().getValue());
        map.put("module_name", str);
        map.put(TrackingKey.GAME_NAME, aVar.d());
        String strG = aVar.g();
        if (strG != null) {
            map.put("game_id", strG);
        }
        if (str2 != null) {
            map.put("action_type", str2);
        }
        String strH = aVar.h();
        if (strH != null) {
            if (z10) {
                com.transsion.baselib.helper.a.f42121a.b(strH, map);
            } else {
                com.transsion.baselib.helper.a.f42121a.a(strH, map);
            }
        }
    }

    static void b(a aVar, boolean z10, uj.a aVar2, String str, String str2, int i10, Object obj) {
        if ((i10 & 8) != 0) {
            str2 = null;
        }
        aVar.a(z10, aVar2, str, str2);
    }

    public final void c(uj.a info, String pageStyle) {
        Intrinsics.h(info, "info");
        Intrinsics.h(pageStyle, "pageStyle");
        b(this, false, info, pageStyle, null, 8, null);
    }

    public final void d(uj.a info, String pageStyle) {
        Intrinsics.h(info, "info");
        Intrinsics.h(pageStyle, "pageStyle");
        b(this, true, info, pageStyle, null, 8, null);
    }

    public final void e(uj.a info, String pageStyle, String actionType) {
        Intrinsics.h(info, "info");
        Intrinsics.h(pageStyle, "pageStyle");
        Intrinsics.h(actionType, "actionType");
        a(true, info, pageStyle, actionType);
    }
}
