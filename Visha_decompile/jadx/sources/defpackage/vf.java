package defpackage;

import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.RemoteViews;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.audio.R;
import com.transsion.audio.appwidgt.AppWidgetMusicProvider;
import com.transsion.audio.appwidgt.AppWidgetMusicSecondProvider;
import com.transsion.audio.appwidgt.AppWidgetMusicThirdProvider;
import com.transsion.audio.appwidgt.BaseAppMusicProvider;
import com.transsion.audio.service.MusicService;
import com.transsion.dbdata.beans.onlinevideo.RouterBean;
import com.transsion.playercommon.router.RouterUtils;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

public abstract class vf {
    public static PendingIntent a(Context context) {
        return c(context, "com.transsion.magicmovie.video_player_main_activity", null, 18);
    }

    public static PendingIntent b(Context context) {
        return c(context, "com.transsion.magicmovie.video_player_main_activity", null, 29);
    }

    public static PendingIntent c(Context context, String str, String str2, int i) {
        Intent intent = new Intent();
        if (str2 != null) {
            intent.setClassName(se.a(), str2);
        } else {
            intent.setPackage(se.a().getPackageName());
        }
        if (str != null) {
            intent.setAction(str);
        }
        LogUtils.i("getPendingIntent:" + context + StringUtils.COMMA + i);
        intent.setFlags(603979776);
        RouterBean.RouterData routerData = new RouterBean.RouterData(1, 0);
        intent.putExtra(RouterUtils.FROM_ROUTER, true);
        Bundle bundle = new Bundle();
        bundle.putParcelable(RouterUtils.ROUTER_DATA, routerData);
        intent.putExtra("appWidget", true);
        intent.putExtra("turn", i);
        intent.putExtra(RouterUtils.ROUTER_DATA, bundle);
        return PendingIntent.getActivity(se.a(), i, intent, 201326592);
    }

    public static PendingIntent d(Context context) {
        Intent intent = new Intent();
        intent.setAction("com.transsion.magicmovie.video_player_main_activity");
        intent.setPackage(context.getPackageName());
        RouterBean.RouterData routerData = new RouterBean.RouterData(1, 0);
        routerData.setFrom_page("widget_audio_tab");
        intent.putExtra(RouterUtils.FROM_ROUTER, true);
        Bundle bundle = new Bundle();
        bundle.putParcelable(RouterUtils.ROUTER_DATA, routerData);
        intent.putExtra(RouterUtils.ROUTER_DATA, bundle);
        intent.putExtra("com.transsion.magicshow.OPEN_AUDIO", true);
        intent.setFlags(603979776);
        return PendingIntent.getActivity(context, 30, intent, 201326592);
    }

    public static boolean e(Context context) {
        Class[] clsArr = {AppWidgetMusicProvider.class, AppWidgetMusicSecondProvider.class, AppWidgetMusicThirdProvider.class};
        boolean z = false;
        for (int i = 0; i < 3; i++) {
            int[] appWidgetIds = AppWidgetManager.getInstance(context).getAppWidgetIds(new ComponentName(context, (Class<?>) clsArr[i]));
            z = appWidgetIds != null && appWidgetIds.length > 0;
            if (z) {
                break;
            }
        }
        return z;
    }

    public static void f(Context context) {
        if (context == null) {
            return;
        }
        Class[] clsArr = {AppWidgetMusicProvider.class, AppWidgetMusicSecondProvider.class, AppWidgetMusicThirdProvider.class};
        AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(context);
        for (int i = 0; i < 3; i++) {
            Class cls = clsArr[i];
            int[] appWidgetIds = appWidgetManager.getAppWidgetIds(new ComponentName(context, (Class<?>) cls));
            if (appWidgetIds != null && appWidgetIds.length != 0) {
                Intent intent = new Intent("android.appwidget.action.APPWIDGET_UPDATE");
                intent.setComponent(new ComponentName(context, (Class<?>) cls));
                intent.putExtra("appWidgetIds", appWidgetIds);
                context.sendBroadcast(intent);
            }
        }
    }

    public static void g(Context context, int i) {
        AppWidgetManager appWidgetManager = (AppWidgetManager) context.getSystemService(AppWidgetManager.class);
        ComponentName componentName = new ComponentName(context, (Class<?>) new Class[]{AppWidgetMusicProvider.class, AppWidgetMusicSecondProvider.class, AppWidgetMusicThirdProvider.class}[i]);
        if (appWidgetManager.isRequestPinAppWidgetSupported()) {
            Intent intent = new Intent("add_widget_success");
            intent.setClass(context, MusicService.class);
            appWidgetManager.requestPinAppWidget(componentName, null, PendingIntent.getService(context, 0, intent, 67108864));
        }
    }

    public static void h(Context context) {
        if (context == null) {
            return;
        }
        AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(context);
        BaseAppMusicProvider[] baseAppMusicProviderArr = {new AppWidgetMusicProvider(), new AppWidgetMusicSecondProvider(), new AppWidgetMusicThirdProvider()};
        for (int i = 0; i < 3; i++) {
            BaseAppMusicProvider baseAppMusicProvider = baseAppMusicProviderArr[i];
            int[] appWidgetIds = appWidgetManager.getAppWidgetIds(new ComponentName(context, (Class<?>) baseAppMusicProvider.h()));
            if (appWidgetIds != null && appWidgetIds.length != 0) {
                for (int i2 : appWidgetIds) {
                    RemoteViews remoteViews = new RemoteViews(context.getPackageName(), baseAppMusicProvider.j());
                    remoteViews.setImageViewResource(R.id.iv_play, R.drawable.ic_music_widget_pause);
                    appWidgetManager.partiallyUpdateAppWidget(i2, remoteViews);
                }
            }
        }
    }
}
