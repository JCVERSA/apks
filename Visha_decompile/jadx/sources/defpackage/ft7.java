package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import com.lzy.okgo.cookie.SerializableCookie;
import com.transsion.dbdata.beans.onlinevideo.RouterBean;
import com.transsion.playercommon.data.SheetDialogParamsConstant;
import com.transsion.playercommon.router.RouterUtils;

public final class ft7 {
    public static final ft7 a = new ft7();

    public static final Intent b(Context context, RouterBean.RouterData routerData) {
        y45.j(context, "context");
        y45.j(routerData, "data");
        Intent intent = new Intent(routerData.isShortVideo() ? "com.transsion.onlinevideo.mangotv.shorts.ShortPlayerDetailActivity" : "com.transsion.onlinevideo.mangotv.PlayerDetailActivity");
        intent.setPackage(context.getPackageName());
        intent.putExtra(RouterUtils.ROUTER_DATA, routerData);
        intent.putExtra(RouterUtils.FROM_ROUTER, true);
        return intent;
    }

    public static final void c(Context context, Uri uri) {
        y45.j(context, "context");
        y45.j(uri, "uri");
        RouterBean.RouterData routerDataM = m(uri);
        if (routerDataM == null) {
            Log.e("OttPlayDeepLinkHelper", "execute: invalid ott_play uri=" + uri);
            return;
        }
        Log.i("OttPlayDeepLinkHelper", "execute: route to player, isShort=" + routerDataM.isShortVideo() + ", video_id=" + routerDataM.getVideo_id());
        Intent intentAddFlags = b(context, routerDataM).addFlags(335544320);
        y45.i(intentAddFlags, "addFlags(...)");
        context.startActivity(intentAddFlags);
    }

    public static long g(ft7 ft7Var, Uri uri, String[] strArr, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 0;
        }
        return ft7Var.f(uri, strArr, j);
    }

    public static final boolean i(Context context, Intent intent) {
        Uri data;
        y45.j(context, SerializableCookie.HOST);
        if (intent == null || !y45.e("android.intent.action.VIEW", intent.getAction()) || (data = intent.getData()) == null || !j(data)) {
            return false;
        }
        if (!(context instanceof Activity)) {
            c(context, data);
            return true;
        }
        if (m(data) != null) {
            c(context, data);
            ((Activity) context).finish();
            return true;
        }
        Log.e("OttPlayDeepLinkHelper", "handleDeepLinkIfNeeded: invalid ott_play uri=" + data);
        a.l((Activity) context);
        return true;
    }

    public static final boolean j(Uri uri) {
        return uri != null && y45.e("ott_play", uri.getLastPathSegment());
    }

    public static final RouterBean.RouterData m(Uri uri) {
        Log.i("OttPlayDeepLinkHelper", "parseRouterData uri=" + uri);
        if (!j(uri)) {
            return null;
        }
        y45.g(uri);
        ft7 ft7Var = a;
        boolean z = true;
        boolean z2 = ft7Var.d(uri, "is_youtube", 0) == 1;
        int iD = ft7Var.d(uri, "source_type", z2 ? 4 : 1);
        if (ft7Var.d(uri, "is_vk", 0) != 1 && iD != 5) {
            z = false;
        }
        if (z2) {
            String queryParameter = uri.getQueryParameter(hb0.KEY_NAME_VK_SOURCE_ID);
            if (queryParameter == null) {
                return ft7Var.k(uri, "missing source_id");
            }
            RouterBean.RouterData routerData = new RouterBean.RouterData(1, queryParameter, uri.getQueryParameter("youtube_video_name"), uri.getQueryParameter("youtube_channel"), uri.getQueryParameter("youtube_channel_cover"), uri.getQueryParameter("youtube_cover"));
            ft7Var.a(uri, routerData);
            return routerData;
        }
        if (z) {
            String queryParameter2 = uri.getQueryParameter("vk_id");
            if (queryParameter2 == null) {
                return ft7Var.k(uri, "missing vk_id");
            }
            String queryParameter3 = uri.getQueryParameter("video_url");
            if (queryParameter3 == null) {
                return ft7Var.k(uri, "missing video_url");
            }
            String queryParameter4 = uri.getQueryParameter("type_bean_json");
            String str = queryParameter4 == null ? "" : queryParameter4;
            String queryParameter5 = uri.getQueryParameter("title");
            RouterBean.RouterData routerData2 = new RouterBean.RouterData(queryParameter2, queryParameter5 == null ? "" : queryParameter5, queryParameter3, 5, str);
            ft7Var.a(uri, routerData2);
            return routerData2;
        }
        long jE = ft7Var.e(uri, "video_id", 0L);
        if (jE <= 0) {
            return ft7Var.k(uri, "missing or invalid video_id");
        }
        String queryParameter6 = uri.getQueryParameter(hb0.KEY_NAME_VK_SOURCE_ID);
        if (queryParameter6 == null) {
            return ft7Var.k(uri, "missing source_id");
        }
        String queryParameter7 = uri.getQueryParameter("title");
        RouterBean.RouterData routerData3 = (queryParameter7 == null || queryParameter7.length() == 0) ? new RouterBean.RouterData(jE, queryParameter6) : new RouterBean.RouterData(jE, queryParameter6, queryParameter7);
        routerData3.setSourceType(iD);
        routerData3.setSerialId(ft7Var.e(uri, "serial_id", 0L));
        long jG = g(ft7Var, uri, new String[]{"video_serial_id", "video_serail_id"}, 0L, 2, null);
        routerData3.setVideo_serail_id(jG);
        if (routerData3.getSerialId() == 0 && jG > 0) {
            routerData3.setSerialId(jG);
        }
        String strH = ft7Var.h(uri, "video_serial_source_id", "video_serail_source_id");
        if (strH != null) {
            routerData3.setVideo_serail_source_id(strH);
        }
        routerData3.setVideo_force_play(ft7Var.d(uri, "force_play", 0));
        ft7Var.a(uri, routerData3);
        return routerData3;
    }

    public final void a(Uri uri, RouterBean.RouterData routerData) {
        String queryParameter = uri.getQueryParameter("from_card");
        if (queryParameter == null) {
            queryParameter = "external_deeplink";
        }
        routerData.setFrom_card(queryParameter);
        String queryParameter2 = uri.getQueryParameter(SheetDialogParamsConstant.FROM_PAGE);
        if (queryParameter2 != null) {
            routerData.setFrom_page(queryParameter2);
        }
        routerData.setData_type(d(uri, "data_type", 0));
        routerData.setTopic_id(e(uri, "topic_id", 0L));
        if (d(uri, "is_short", 0) == 1) {
            routerData.setShortVideo(true);
        }
        if (d(uri, "play_from_history", 0) == 1) {
            routerData.setMbNotPlayFromHistory(1);
        }
    }

    public final int d(Uri uri, String str, int i) {
        Integer numR;
        String queryParameter = uri.getQueryParameter(str);
        return (queryParameter == null || (numR = f1a.r(queryParameter)) == null) ? i : numR.intValue();
    }

    public final long e(Uri uri, String str, long j) {
        Long lT;
        String queryParameter = uri.getQueryParameter(str);
        return (queryParameter == null || (lT = f1a.t(queryParameter)) == null) ? j : lT.longValue();
    }

    public final long f(Uri uri, String[] strArr, long j) {
        for (String str : strArr) {
            String queryParameter = uri.getQueryParameter(str);
            Long lT = queryParameter != null ? f1a.t(queryParameter) : null;
            if (lT != null) {
                return lT.longValue();
            }
        }
        return j;
    }

    public final String h(Uri uri, String... strArr) {
        for (String str : strArr) {
            String queryParameter = uri.getQueryParameter(str);
            if (queryParameter != null && queryParameter.length() != 0) {
                return queryParameter;
            }
        }
        return null;
    }

    public final RouterBean.RouterData k(Uri uri, String str) {
        Log.e("OttPlayDeepLinkHelper", "parseRouterData failed: " + str + ", uri=" + uri);
        return null;
    }

    public final void l(Activity activity) {
        Intent launchIntentForPackage = activity.getPackageManager().getLaunchIntentForPackage(activity.getPackageName());
        if (launchIntentForPackage != null) {
            launchIntentForPackage.addFlags(335544320);
            activity.startActivity(launchIntentForPackage);
        }
        activity.finish();
    }
}
