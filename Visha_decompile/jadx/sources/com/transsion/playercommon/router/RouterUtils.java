package com.transsion.playercommon.router;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.core.provider.FontsContractCompat;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.dbdata.beans.adsbean.AdItemBean;
import com.transsion.dbdata.beans.onlinevideo.RouterBean;
import com.transsion.playercommon.vishaweb.VishaWebViewActivity;
import com.transsion.vishaplayersdk.vkPlayer.VkConstant;
import defpackage.f5;
import defpackage.pp3;
import defpackage.r0a;
import defpackage.se;
import defpackage.tg8;
import defpackage.zdc;

public class RouterUtils {
    public static final String FROM_ROUTER = "from_router";
    public static final String ROUTER_DATA = "router_data";
    public static final String ROUTER_DATA_BOTTOM_POSITION = "router_data_bottom_position";
    public static final String ROUTER_DATA_TOP_POSITION = "router_data_top_position";
    private static final String ROUTER_FROM_SOURCE_LAUNCH_AD = "launch_ad_";
    private static final String TAG = "visha_" + RouterUtils.class.getSimpleName();
    public static final int TARGET_ID_APPLINK = 4;
    public static final int TARGET_ID_BOTTOM_TAB = -1;
    public static final int TARGET_ID_COLLECT_ACTIVITY = 8;
    public static final int TARGET_ID_COMMON_WEBVIEW_ACTIVITY = 10;
    public static final int TARGET_ID_DEFAULT = 0;
    public static final int TARGET_ID_FULL_SCREEN_WEBCAST_ACTIVITY = 7;
    public static final int TARGET_ID_HISTORY_ACTIVITY = 6;
    public static final int TARGET_ID_PLAYER_DETAIL_ACTIVITY = 1;
    public static final int TARGET_ID_REQUEST_SERVER = 5;
    public static final int TARGET_ID_SETTING_ACTIVITY = 9;
    public static final int TARGET_ID_SNIFF_WEB_ACTIVITY = 3;
    public static final int TARGET_ID_TOPIC_DETAIL_ACTIVITY = 2;

    public static String getFrom(int i) {
        if (i == 2) {
            return "video";
        }
        if (i == 3) {
            return "audio";
        }
        if (i != 4) {
            return i != 5 ? "unknown" : "more";
        }
        return "download";
    }

    public static boolean jumpFromAdViewResult(Context context, boolean z, AdItemBean adItemBean) {
        Log.i(TAG, "jumpFromAdViewResult " + adItemBean);
        if (adItemBean == null || !adItemBean.isSupportJump() || adItemBean.getTarget() == null) {
            return false;
        }
        RouterBean target = adItemBean.getTarget();
        if (!z || !(context instanceof Activity)) {
            target.setType(10);
            route(target, context, true);
        } else if (target.getType() == -1) {
            RouterBean.RouterData param = target.getParam();
            if (param == null) {
                param = new RouterBean.RouterData();
            }
            param.setFrom_page(ROUTER_FROM_SOURCE_LAUNCH_AD + adItemBean.getId());
            route(adItemBean.getTarget(), context, true);
            ((Activity) context).finish();
        } else {
            target.setForActivityResult(true, adItemBean.getId());
            target.setType(10);
            route(target, context, true);
        }
        return true;
    }

    private static void jumpToActivity(Context context, String str, RouterBean.RouterData routerData, boolean z, boolean z2) {
        Intent intent = new Intent();
        intent.setAction(str);
        intent.setPackage(context.getPackageName());
        if (routerData != null) {
            intent.putExtra(FROM_ROUTER, true);
            if (z2) {
                Bundle bundle = new Bundle();
                bundle.putParcelable(ROUTER_DATA, routerData);
                intent.putExtra(ROUTER_DATA, bundle);
            } else {
                intent.putExtra(ROUTER_DATA, routerData);
            }
        }
        if (z) {
            intent.addFlags(268435456);
        }
        f5.c(intent, context);
    }

    private static void jumpToActivityForResult(Context context, String str, RouterBean.RouterData routerData, boolean z, boolean z2, int i) {
        if (!(context instanceof Activity)) {
            Log.e(TAG, "jumpToActivityForResult: context is null or not instance of Activity");
            return;
        }
        Intent intent = new Intent();
        intent.setAction(str);
        intent.setPackage(context.getPackageName());
        if (routerData != null) {
            intent.putExtra(FROM_ROUTER, true);
            if (z2) {
                Bundle bundle = new Bundle();
                bundle.putParcelable(ROUTER_DATA, routerData);
                intent.putExtra(ROUTER_DATA, bundle);
            } else {
                intent.putExtra(ROUTER_DATA, routerData);
            }
        }
        if (z) {
            intent.addFlags(268435456);
        }
        f5.b(intent, i, (Activity) context);
    }

    public static void jumpToCloudDriveFileShareActivity(Context context, String str, String str2) {
        Intent intent = new Intent();
        intent.setClassName(context, "com.transsion.cloud.share.CloudDriveBottomShareActivity");
        intent.setPackage(context.getPackageName());
        intent.putExtra(FontsContractCompat.Columns.FILE_ID, str);
        intent.putExtra("file_name", str2);
        f5.c(intent, context);
    }

    private static void jumpToCommonWebViewActivity(Context context, String str, String str2) {
        Intent intent = new Intent("com.transsion.sniffer_load.open_html_url");
        intent.setPackage(se.a().getPackageName());
        intent.putExtra(VkConstant.URL, str);
        intent.putExtra("title", str2);
        f5.c(intent, context);
    }

    public static void jumpToDeeplink(Context context, String str) {
        Intent intent = new Intent();
        intent.setAction("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        try {
            f5.c(intent, context);
        } catch (Exception e) {
            LogUtils.m(TAG, "jumpToDeeplink: " + e.getMessage());
        }
    }

    public static void jumpToMediaLibraryShareActivity(Context context, String str) {
        Intent intent = new Intent();
        intent.setClassName(context, "com.transsion.mimedia.activity.MediaLibraryVideoActivity");
        intent.setPackage(context.getPackageName());
        intent.putExtra("mediaLibraryId", str);
        f5.c(intent, context);
    }

    public static void jumpToPasswordSettingActivity(Context context, int i, int i2) {
        if (pp3.p) {
            try {
                Intent intent = new Intent();
                intent.setClassName(context, "com.transsion.tools.activities.PasswordSettingActivity");
                intent.putExtra("privacy_from_page", i2);
                intent.putExtra("privacy_setting_mode", i);
                f5.c(intent, context);
            } catch (Exception e) {
                Log.e(TAG, "jumpToPasswordSettingActivity " + e);
            }
        }
    }

    public static void jumpToPrivacyFileActivity(Context context) {
        if (pp3.p) {
            try {
                Intent intent = new Intent();
                intent.setClassName(context, "com.transsion.tools.activities.PrivacyFileActivity");
                f5.c(intent, context);
            } catch (Exception e) {
                Log.e(TAG, "jumpToPasswordSettingActivity " + e);
            }
        }
    }

    public static void jumpToPrivacyRoom(Context context, int i, int i2) {
        if (pp3.p) {
            if (r0a.g(tg8.d().e())) {
                jumpToPasswordSettingActivity(context, i, i2);
            } else {
                jumpToPrivacyFileActivity(context);
            }
        }
    }

    public static boolean jumpToPrivacyRoomOnLongClick(Context context, int i, int i2) {
        if (!pp3.p) {
            return true;
        }
        if (!zdc.l) {
            if (r0a.g(tg8.d().e())) {
                jumpToPasswordSettingActivity(context, i, i2);
            } else {
                jumpToPrivacyFileActivity(context);
            }
        }
        return zdc.l;
    }

    public static void jumpToSettingActivity(Context context, String str) {
        Intent intent = new Intent();
        if (!TextUtils.isEmpty(str)) {
            intent.putExtra("source", str);
        }
        intent.setClassName(context, "com.transsion.tools.activities.SettingActivity");
        intent.setPackage(context.getPackageName());
        f5.c(intent, context);
    }

    public static void jumpToSniffWebViewInApp(Context context, String str) {
        Intent intent = new Intent("com.transsion.sniffer_load.web_activity");
        intent.setPackage(se.a().getPackageName());
        intent.putExtra(VkConstant.URL, str);
        f5.c(intent, context);
    }

    public static void jumpToVishaWebViewInApp(Context context, String str, String str2, boolean z, int i) {
        Intent intent = new Intent(context, (Class<?>) VishaWebViewActivity.class);
        intent.putExtra(VkConstant.URL, str);
        intent.putExtra("title", str2);
        if (!(context instanceof Activity) && (intent.getFlags() & 268435456) == 0) {
            intent.addFlags(268435456);
        }
        if (z) {
            f5.b(intent, i, (Activity) context);
        } else {
            f5.c(intent, context);
        }
    }

    public static void jumpToWebViewSystem(Context context, String str) {
        Intent intent = new Intent();
        intent.setAction("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        try {
            f5.c(intent, context);
        } catch (Exception e) {
            LogUtils.m(TAG, "jumpToWebViewSystem: " + e.getMessage());
        }
    }

    private static void onDefaultTarget(@NonNull RouterBean routerBean, @NonNull Context context, boolean z) {
        if (routerBean.isForActivityResult()) {
            jumpToActivityForResult(context, "com.transsion.magicmovie.video_player_main_activity", routerBean.getParam(), false, z, routerBean.getRequestCode());
        } else {
            jumpToActivity(context, "com.transsion.magicmovie.video_player_main_activity", routerBean.getParam(), false, z);
        }
    }

    public static void route(@NonNull RouterBean routerBean, @NonNull Context context) {
        route(routerBean, context, false);
    }

    public static void routeDefaultTarget(Context context) {
        route(new RouterBean.RouterBeanBuilder().withType(0).build(), context);
    }

    private static boolean shouldAddNewTaskForOnlineVideo(@NonNull Context context) {
        return !(context instanceof Activity);
    }

    public static void route(@NonNull RouterBean routerBean, @NonNull Context context, boolean z) {
        switch (routerBean.getType()) {
            case 1:
                boolean zIsShortVideo = routerBean.getParam().isShortVideo();
                LogUtils.v(TAG, "route: jump to player detail activity, isShortVideo = " + zIsShortVideo);
                jumpToActivity(context, zIsShortVideo ? "com.transsion.onlinevideo.mangotv.shorts.ShortPlayerDetailActivity" : "com.transsion.onlinevideo.mangotv.PlayerDetailActivity", routerBean.getParam(), shouldAddNewTaskForOnlineVideo(context), false);
                break;
            case 2:
                jumpToActivity(context, "com.transsion.onlinevideo.topic.TopicDetailActivity", routerBean.getParam(), shouldAddNewTaskForOnlineVideo(context), false);
                break;
            case 3:
                jumpToSniffWebViewInApp(context, routerBean.getParam().getUrl());
                break;
            case 4:
                jumpToDeeplink(context, routerBean.getParam().getUrl());
                break;
            case 5:
            default:
                onDefaultTarget(routerBean, context, z);
                break;
            case 6:
                jumpToActivity(context, "com.transsion.onlinevideo.history.OnlineVideoHistoryActivity", routerBean.getParam(), shouldAddNewTaskForOnlineVideo(context), false);
                break;
            case 7:
                jumpToActivity(context, "com.transsion.onlinevideo.webcast.WebcastActivity", routerBean.getParam(), shouldAddNewTaskForOnlineVideo(context), false);
                break;
            case 8:
                jumpToActivity(context, "com.transsion.onlinevideo.collect.OnlineVideoCollectActivity", routerBean.getParam(), shouldAddNewTaskForOnlineVideo(context), false);
                break;
            case 9:
                jumpToActivity(context, "com.transsion.tools.activities.SettingActivity", routerBean.getParam());
                break;
            case 10:
                jumpToVishaWebViewInApp(context, routerBean.getParam().getUrl(), routerBean.getParam().getTitle(), routerBean.isForActivityResult(), routerBean.getRequestCode());
                break;
        }
    }

    private static void jumpToActivity(Context context, String str, RouterBean.RouterData routerData) {
        jumpToActivity(context, str, routerData, false, false);
    }
}
