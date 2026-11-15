package defpackage;

import android.content.Context;
import android.util.Log;
import com.tencent.mmkv.MMKV;
import com.transsion.dbdata.beans.onlinevideo.RouterBean;
import com.transsion.playercommon.router.RouterUtils;

public abstract class bd4 {
    public static String a = "GalleryOnBackUtils";

    public static boolean a(Context context) {
        int iA = raa.a(context);
        String str = a;
        StringBuilder sb = new StringBuilder();
        sb.append("backNeedToHome,gallery version code=");
        sb.append(iA);
        sb.append(" backNeed:");
        sb.append(iA > 50000);
        Log.e(str, sb.toString());
        return iA > 50000;
    }

    public static void b(Context context) {
        if (a(context)) {
            c(context);
            p06.d0("visha_active_external");
        }
    }

    public static void c(Context context) {
        RouterUtils.route(new RouterBean.RouterBeanBuilder().withType(0).withParam(new RouterBean.RouterData(w6c.d(context, w6c.e, w6c.c(context, w6c.a, false) ? 2 : 0), MMKV.p().d("ott_filter_channel_visible") ? 1 : 0)).build(), context, true);
    }
}
