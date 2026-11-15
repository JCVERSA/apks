package ai;

import android.app.Application;
import com.blankj.utilcode.util.Utils;
import com.transsion.ad.MBAd;
import com.transsion.ad.strategy.AppManager;
import com.transsion.ga.AthenaAnalytics;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;
import qi.h;

public final class b {

    public static final b f360a = new b();

    private static final AtomicBoolean f361b = new AtomicBoolean(false);

    private b() {
    }

    public final void a(String event, Map map, String str) {
        Intrinsics.h(event, "event");
        Intrinsics.h(map, "map");
        if (!a.f358a.a()) {
            xh.a.e(xh.a.f75336a, "Report_ad", "AdReportManager --> onReport() --> 业务线关闭埋点上报，不上报", 0, false, 4, null);
            return;
        }
        if (com.transsion.ad.scene.b.f41153a.h()) {
            xh.a.e(xh.a.f75336a, "Report_ad", "AdReportManager --> onReport() --> 广告数据上报链路已关闭，不上报", 0, false, 4, null);
            return;
        }
        AtomicBoolean atomicBoolean = f361b;
        if (!atomicBoolean.get()) {
            Application applicationA = Utils.a();
            MBAd.a aVarB = MBAd.f40749a.b();
            AthenaAnalytics.Q(applicationA, "mb_ad", 6525, aVarB != null ? aVarB.k() : false, false);
            atomicBoolean.set(true);
            xh.a.c(xh.a.f75336a, "AdReportManager --> onReport() --> 广告埋点Athena初始化完成", 0, false, 6, null);
        }
        map.put("ad_vn", "4.0.3");
        map.put("biz_pkg", com.blankj.utilcode.util.c.e());
        map.put("biz_vc", Integer.valueOf(com.blankj.utilcode.util.c.f()));
        map.put("biz_vn", com.blankj.utilcode.util.c.h());
        h hVar = h.f69682a;
        if (str == null) {
            str = "";
        }
        hVar.t(event, map, str, 6525, AppManager.f41166a.a());
    }
}
