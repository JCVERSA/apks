package com.transsnet.downloader.notification;

import android.app.Application;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.widget.RemoteViews;
import androidx.core.app.NotificationCompat;
import androidx.core.app.t;
import androidx.media3.common.util.g0;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.c0;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.request.target.CustomTarget;
import com.bumptech.glide.request.transition.Transition;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.therouter.TheRouter;
import com.tn.lib.widget.R$drawable;
import com.tn.lib.widget.R$mipmap;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baseui.R$string;
import com.transsion.baseui.util.n;
import com.transsion.lib.push.R$dimen;
import com.transsion.lib.push.R$id;
import com.transsion.lib.push.R$layout;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.push.bean.MsgStyle;
import com.transsion.push.bean.MsgType;
import com.transsion.push.utils.NotificationUtil;
import com.transsion.push.utils.u;
import com.transsion.ugcvideodetail.api.UGCPageStyle;
import com.transsnet.downloader.guard.DownloadGuard;
import com.transsnet.downloader.manager.g;
import com.transsnet.downloader.manager.p;
import java.util.Calendar;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import m.f;
import org.mvel2.ast.ASTNode;
import yg.l;

public final class DownloadNotificationUtils {

    private static int f57292e;

    public static final DownloadNotificationUtils f57288a = new DownloadNotificationUtils();

    private static final Lazy f57289b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return DownloadNotificationUtils.r();
        }
    });

    private static boolean f57290c = true;

    private static final Lazy f57291d = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return DownloadNotificationUtils.F();
        }
    });

    private static String f57293f = "";

    public static final class a extends CustomTarget {

        final DownloadBean f57294a;

        final boolean f57295b;

        final String f57296c;

        final String f57297d;

        a(DownloadBean downloadBean, boolean z10, String str, String str2) {
            this.f57294a = downloadBean;
            this.f57295b = z10;
            this.f57296c = str;
            this.f57297d = str2;
        }

        @Override
        public void onLoadCleared(Drawable drawable) {
            wf.a.C0922a.f(wf.a.f74274a, "download_notify", "onFailure", false, 4, null);
        }

        @Override
        public void onResourceReady(Bitmap resource, Transition transition) {
            NotificationCompat.m mVarT;
            Intrinsics.h(resource, "resource");
            wf.a.C0922a.f(wf.a.f74274a, "download_notify", "onSuccess", false, 4, null);
            int i10 = Build.VERSION.SDK_INT;
            int i11 = i10 >= 31 ? 67108864 : ASTNode.NOJIT;
            DownloadNotificationUtils downloadNotificationUtils = DownloadNotificationUtils.f57288a;
            int iZ = downloadNotificationUtils.z(this.f57294a);
            int i12 = iZ + 1;
            to.a aVar = (to.a) TheRouter.d(to.a.class, new Object[0]);
            if (aVar != null) {
                String strV = downloadNotificationUtils.v(this.f57294a);
                int status = this.f57294a.getStatus();
                PendingIntent pendingIntentT = downloadNotificationUtils.t(aVar, i12, this.f57294a, i11);
                PendingIntent pendingIntentS = this.f57294a.getType() == 1 ? downloadNotificationUtils.s(aVar, i12, this.f57294a, i11) : downloadNotificationUtils.C(aVar, i12, this.f57294a, i11);
                String strD = this.f57295b ? downloadNotificationUtils.D(status) : this.f57296c;
                if (!this.f57295b) {
                    strV = this.f57297d;
                }
                String str = strV;
                if (i10 >= 31) {
                    RemoteViews remoteViews = new RemoteViews(Utils.a().getPackageName(), R$layout.push_notification_custom_left_pic_s_small);
                    remoteViews.setTextViewText(R$id.notification_title_tv, strD);
                    remoteViews.setTextViewText(R$id.notification_content_tv, str);
                    remoteViews.setImageViewResource(R$id.iv_icon, R$mipmap.icon_play_white);
                    remoteViews.setTextViewText(R$id.tv_tips, Utils.a().getString(R$string.play));
                    remoteViews.setOnClickPendingIntent(R$id.ll_download, pendingIntentS);
                    int dimension = (int) Utils.a().getResources().getDimension(R$dimen.push_notification_transition_rectangle_img_width);
                    int dimension2 = (int) Utils.a().getResources().getDimension(R$dimen.push_notification_transition_rectangle_img_height);
                    com.transsion.push.utils.a aVar2 = com.transsion.push.utils.a.f48922a;
                    Application applicationA = Utils.a();
                    Intrinsics.g(applicationA, "getApp(...)");
                    Bitmap bitmapF = com.transsion.push.utils.a.f(aVar2, applicationA, resource, dimension, dimension2, false, 0, 32, null);
                    RemoteViews remoteViews2 = new RemoteViews(Utils.a().getPackageName(), R$layout.push_notification_custom_left_pic_s_big);
                    remoteViews2.setTextViewText(R$id.notification_title_tv, strD);
                    remoteViews2.setTextViewText(R$id.notification_content_tv, str);
                    remoteViews2.setImageViewBitmap(R$id.notification_content_image, bitmapF);
                    remoteViews2.setImageViewResource(R$id.iv_icon, R$mipmap.icon_play_white);
                    remoteViews2.setTextViewText(R$id.tv_tips, Utils.a().getString(R$string.play));
                    remoteViews2.setOnClickPendingIntent(R$id.ll_download, pendingIntentS);
                    mVarT = new NotificationCompat.m(Utils.a(), "download_service").J(R$drawable.push_small_logo).r(strD).q(str).p(pendingIntentT).l(true).t(remoteViews).s(remoteViews2);
                } else {
                    RemoteViews remoteViews3 = new RemoteViews(Utils.a().getPackageName(), R$layout.push_notification_custom_left_pic);
                    remoteViews3.setTextViewText(R$id.notification_title_tv, strD);
                    remoteViews3.setTextViewText(R$id.notification_content_tv, str);
                    remoteViews3.setImageViewBitmap(R$id.notification_content_image, resource);
                    remoteViews3.setImageViewResource(R$id.iv_icon, R$mipmap.icon_play_white);
                    remoteViews3.setTextViewText(R$id.tv_tips, Utils.a().getString(R$string.play));
                    remoteViews3.setOnClickPendingIntent(R$id.ll_download, pendingIntentS);
                    remoteViews3.setLong(R$id.time, "setTime", System.currentTimeMillis());
                    mVarT = new NotificationCompat.m(Utils.a(), "download_service_high").J(R$drawable.push_small_logo).p(pendingIntentT).r(strD).q(str).l(true).t(remoteViews3);
                }
                Intrinsics.e(mVarT);
                downloadNotificationUtils.B().cancel(iZ);
                try {
                    Result.Companion companion = Result.INSTANCE;
                    t.b(Utils.a()).d(i12, mVarT.c());
                    Result.m453constructorimpl(Unit.f64096a);
                } catch (Throwable th2) {
                    Result.Companion companion2 = Result.INSTANCE;
                    Result.m453constructorimpl(ResultKt.a(th2));
                }
                if (this.f57295b) {
                    return;
                }
                u.f48941a.b().putLong("download_play_notification_time", System.currentTimeMillis());
            }
        }
    }

    public static final class b implements com.transsion.push.worker.a {
        b() {
        }

        @Override
        public void a() {
            DownloadNotificationUtils downloadNotificationUtils = DownloadNotificationUtils.f57288a;
            if (downloadNotificationUtils.m()) {
                downloadNotificationUtils.x();
            }
        }
    }

    private DownloadNotificationUtils() {
    }

    public final NotificationManager B() {
        return (NotificationManager) f57291d.getValue();
    }

    public final PendingIntent C(to.a aVar, int i10, DownloadBean downloadBean, int i11) {
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        Intent intentA = aVar.a(applicationA);
        intentA.putExtra("extra_notification_id", i10);
        intentA.putExtra("extra_source", MsgStyle.SOURCE_PUSH);
        intentA.putExtra("MESSAGE_TYPE", MsgType.DOWNLOAD_PUSH.getType());
        StringBuilder sb2 = new StringBuilder();
        sb2.append(i10);
        intentA.putExtra("extra_message_id", sb2.toString());
        intentA.addFlags(603979776);
        intentA.setAction("android.intent.action.VIEW");
        StringBuilder sb3 = new StringBuilder("oneroom://com.community.oneroom?type=");
        if (downloadBean.isShotTV()) {
            if (downloadBean.isUGCVideo()) {
                sb3.append("/ugc_video/detail");
                sb3.append(UrlUtils.AND_MARK);
                sb3.append("id");
                sb3.append(UrlUtils.EQUAL_MARK);
                sb3.append(downloadBean.getUgcVideoId());
                sb3.append(UrlUtils.AND_MARK);
                sb3.append("videoStyle");
                sb3.append(UrlUtils.EQUAL_MARK);
                sb3.append(UGCPageStyle.UGC_PAGE_STYLE_IMM_VERTICAL_VIDEO.getValue());
                sb3.append(UrlUtils.AND_MARK);
                sb3.append("id");
                sb3.append(UrlUtils.EQUAL_MARK);
                sb3.append(downloadBean.getUgcVideoId());
                sb3.append(UrlUtils.AND_MARK);
                sb3.append("collection_id");
                sb3.append(UrlUtils.EQUAL_MARK);
                sb3.append(downloadBean.getUgcVideoCollectionId());
                sb3.append(UrlUtils.AND_MARK);
                sb3.append("ops");
                sb3.append(UrlUtils.EQUAL_MARK);
                sb3.append(downloadBean.getOps());
            } else {
                sb3.append(pr.a.f69252a.b());
                sb3.append(UrlUtils.AND_MARK);
                sb3.append("id");
                sb3.append(UrlUtils.EQUAL_MARK);
                sb3.append(downloadBean.getSubjectId());
                sb3.append(UrlUtils.AND_MARK);
                sb3.append("ep");
                sb3.append(UrlUtils.EQUAL_MARK);
                sb3.append(downloadBean.getEp());
                sb3.append(UrlUtils.AND_MARK);
                sb3.append("ops");
                sb3.append(UrlUtils.EQUAL_MARK);
                sb3.append(downloadBean.getOps());
            }
        } else if (!downloadBean.isUGCVideo()) {
            sb3.append("/video/detail");
            sb3.append(UrlUtils.AND_MARK);
            sb3.append("extra_local_path");
            sb3.append(UrlUtils.EQUAL_MARK);
            sb3.append(downloadBean.getPath());
            sb3.append(UrlUtils.AND_MARK);
            sb3.append("extra_name");
            sb3.append(UrlUtils.EQUAL_MARK);
            sb3.append(downloadBean.getName());
            sb3.append(UrlUtils.AND_MARK);
            sb3.append("extra_resource_id");
            sb3.append(UrlUtils.EQUAL_MARK);
            sb3.append(downloadBean.getResourceId());
            sb3.append(UrlUtils.AND_MARK);
            sb3.append("extra_post_id");
            sb3.append(UrlUtils.EQUAL_MARK);
            sb3.append(downloadBean.getPostId());
            sb3.append(UrlUtils.AND_MARK);
            sb3.append("extra_subject_id");
            sb3.append(UrlUtils.EQUAL_MARK);
            sb3.append(downloadBean.getSubjectId());
            sb3.append(UrlUtils.AND_MARK);
            sb3.append("extra_page_from");
            sb3.append(UrlUtils.EQUAL_MARK);
            sb3.append(MsgStyle.SOURCE_PUSH);
            sb3.append(UrlUtils.AND_MARK);
            sb3.append("extra_is_series");
            sb3.append(UrlUtils.EQUAL_MARK);
            sb3.append(downloadBean.isSeries());
        } else if (downloadBean.getUgcVideoIsVertical()) {
            sb3.append("/ugc_video/detail");
            sb3.append(UrlUtils.AND_MARK);
            sb3.append("id");
            sb3.append(UrlUtils.EQUAL_MARK);
            sb3.append(downloadBean.getUgcVideoId());
            sb3.append(UrlUtils.AND_MARK);
            sb3.append("videoStyle");
            sb3.append(UrlUtils.EQUAL_MARK);
            sb3.append(UGCPageStyle.UGC_PAGE_STYLE_IMM_VERTICAL_VIDEO.getValue());
            sb3.append(UrlUtils.AND_MARK);
            sb3.append("resource_id");
            sb3.append(UrlUtils.EQUAL_MARK);
            sb3.append(downloadBean.getResourceId());
            sb3.append(UrlUtils.AND_MARK);
            sb3.append("ops");
            sb3.append(UrlUtils.EQUAL_MARK);
            sb3.append(downloadBean.getOps());
        } else {
            sb3.append("/ugc_video/local_detail");
            sb3.append(UrlUtils.AND_MARK);
            sb3.append("id");
            sb3.append(UrlUtils.EQUAL_MARK);
            sb3.append(downloadBean.getUgcVideoId());
            sb3.append(UrlUtils.AND_MARK);
            sb3.append("resource_id");
            sb3.append(UrlUtils.EQUAL_MARK);
            sb3.append(downloadBean.getResourceId());
            sb3.append(UrlUtils.AND_MARK);
            sb3.append("ops");
            sb3.append(UrlUtils.EQUAL_MARK);
            sb3.append(downloadBean.getOps());
        }
        intentA.setData(Uri.parse(sb3.toString()));
        PendingIntent activity = PendingIntent.getActivity(Utils.a(), 0, intentA, i11);
        Intrinsics.g(activity, "getActivity(...)");
        return activity;
    }

    public final String D(int i10) {
        Application applicationA = Utils.a();
        if (i10 == 3) {
            String string = applicationA.getString(com.transsnet.downloader.R$string.notification_download_waiting);
            Intrinsics.g(string, "getString(...)");
            return string;
        }
        if (i10 == 4) {
            String string2 = applicationA.getString(com.transsnet.downloader.R$string.notification_download_paused);
            Intrinsics.g(string2, "getString(...)");
            return string2;
        }
        if (i10 == 5) {
            String string3 = applicationA.getString(com.transsnet.downloader.R$string.notification_download_success);
            Intrinsics.g(string3, "getString(...)");
            return string3;
        }
        if (i10 != 6) {
            return "";
        }
        String string4 = applicationA.getString(com.transsnet.downloader.R$string.notification_download_failed);
        Intrinsics.g(string4, "getString(...)");
        return string4;
    }

    public static final NotificationManager F() {
        Object systemService = Utils.a().getSystemService("notification");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
        return (NotificationManager) systemService;
    }

    public final void H(DownloadBean downloadBean) {
        if (downloadBean.getLastPlayTimeStamp() == 0) {
            String string = Utils.a().getString(com.transsnet.downloader.R$string.notification_download_complete);
            Intrinsics.g(string, "getString(...)");
            String string2 = Utils.a().getString(com.transsnet.downloader.R$string.notification_download_watch_tip, v(downloadBean));
            Intrinsics.g(string2, "getString(...)");
            o(downloadBean, false, string, string2);
            return;
        }
        Long duration = downloadBean.getDuration();
        if (duration != null) {
            long jLongValue = duration.longValue();
            if (jLongValue <= 0 || ((downloadBean.getReadProgress() * 1.0f) / jLongValue) * 1.0f >= 0.8d) {
                return;
            }
            String string3 = Utils.a().getString(com.transsnet.downloader.R$string.notification_continue_watching);
            Intrinsics.g(string3, "getString(...)");
            Application applicationA = Utils.a();
            int i10 = com.transsnet.downloader.R$string.notification_download_continue_tip;
            DownloadNotificationUtils downloadNotificationUtils = f57288a;
            String string4 = applicationA.getString(i10, downloadNotificationUtils.v(downloadBean));
            Intrinsics.g(string4, "getString(...)");
            downloadNotificationUtils.o(downloadBean, false, string3, string4);
        }
    }

    private final void l(int i10) {
        B().cancel(i10);
    }

    public final boolean m() {
        boolean zF = c0.f(u.f48941a.b().getLong("download_play_notification_time", 0L));
        int i10 = Calendar.getInstance().get(11);
        return 19 <= i10 && i10 < 21 && !zF;
    }

    private final void o(DownloadBean downloadBean, boolean z10, String str, String str2) {
        try {
            RequestBuilder requestBuilderDiskCacheStrategy = Glide.with(Utils.a()).asBitmap().diskCacheStrategy(DiskCacheStrategy.DATA);
            NotificationUtil notificationUtil = NotificationUtil.f48898a;
            String cover = downloadBean.getCover();
            if (cover == null) {
                cover = "";
            }
            Intrinsics.e(requestBuilderDiskCacheStrategy.load2(NotificationUtil.K(notificationUtil, cover, 0, 2, null)).into(new a(downloadBean, z10, str, str2)));
        } catch (Exception unused) {
            wf.a.C0922a.f(wf.a.f74274a, "DownloadNotificationUtils", "onFailure", false, 4, null);
        }
    }

    static void p(DownloadNotificationUtils downloadNotificationUtils, DownloadBean downloadBean, boolean z10, String str, String str2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        if ((i10 & 4) != 0) {
            str = null;
        }
        if ((i10 & 8) != 0) {
            str2 = null;
        }
        downloadNotificationUtils.o(downloadBean, z10, str, str2);
    }

    public final void q(DownloadBean downloadBean) {
    }

    public static final g r() {
        return p.f57282a.a(Utils.a());
    }

    public final PendingIntent s(to.a aVar, int i10, DownloadBean downloadBean, int i11) {
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        Intent intentA = aVar.a(applicationA);
        intentA.putExtra("extra_notification_id", i10);
        intentA.putExtra("extra_source", MsgStyle.SOURCE_PUSH);
        intentA.putExtra("MESSAGE_TYPE", MsgType.DOWNLOAD_PUSH.getType());
        StringBuilder sb2 = new StringBuilder();
        sb2.append(i10);
        intentA.putExtra("extra_message_id", sb2.toString());
        intentA.addFlags(603979776);
        intentA.setAction("android.intent.action.VIEW");
        intentA.setData(Uri.parse("oneroom://com.community.oneroom?type=/movie/detail" + UrlUtils.AND_MARK + "id" + UrlUtils.EQUAL_MARK + downloadBean.getSubjectId() + UrlUtils.AND_MARK + "autoPlay" + UrlUtils.EQUAL_MARK + true + UrlUtils.AND_MARK + "resourceId" + UrlUtils.EQUAL_MARK + downloadBean.getResourceId()));
        return PendingIntent.getActivity(Utils.a(), 0, intentA, i11);
    }

    public final PendingIntent t(to.a aVar, int i10, DownloadBean downloadBean, int i11) {
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        Intent intentA = aVar.a(applicationA);
        intentA.putExtra("extra_notification_id", i10);
        intentA.putExtra("extra_source", MsgStyle.SOURCE_PUSH);
        intentA.putExtra("MESSAGE_TYPE", MsgType.DOWNLOAD_PUSH.getType());
        StringBuilder sb2 = new StringBuilder();
        sb2.append(i10);
        intentA.putExtra("extra_message_id", sb2.toString());
        intentA.addFlags(603979776);
        intentA.setAction("android.intent.action.VIEW");
        intentA.setData(Uri.parse("oneroom://com.community.oneroom?type=/download/panel_activity" + UrlUtils.AND_MARK + "download_notify" + UrlUtils.EQUAL_MARK + 10 + UrlUtils.AND_MARK + OfflineConstantsKt.TRACK_KEY_PRE_DOWNLOAD_STATUS + UrlUtils.EQUAL_MARK + downloadBean.getStatus()));
        PendingIntent activity = PendingIntent.getActivity(Utils.a(), 0, intentA, i11);
        Intrinsics.g(activity, "getActivity(...)");
        return activity;
    }

    private final int u() {
        return Build.VERSION.SDK_INT < 31 ? com.transsnet.downloader.R$layout.notification_other_status : com.transsnet.downloader.R$layout.notification_other_status_v12;
    }

    public final String v(DownloadBean downloadBean) {
        String strB;
        String subjectName = downloadBean.isSeries() ? downloadBean.getSubjectName() : downloadBean.getName();
        if (downloadBean.getEpse() > 0) {
            strB = downloadBean.getEp() > 0 ? n.b(downloadBean.getEp(), downloadBean.getSe(), downloadBean.isVideo()) : n.c(downloadBean.getEpse(), downloadBean.isVideo());
        } else {
            strB = "";
        }
        return subjectName + " " + strB;
    }

    private final int w() {
        return Build.VERSION.SDK_INT < 31 ? com.transsnet.downloader.R$layout.notification_downloading : com.transsnet.downloader.R$layout.notification_downloading_v12;
    }

    private final NotificationCompat.m y(int i10, DownloadBean downloadBean) {
        Long size;
        int i11 = Build.VERSION.SDK_INT >= 31 ? 67108864 : ASTNode.NOJIT;
        to.a aVar = (to.a) TheRouter.d(to.a.class, new Object[0]);
        if (aVar == null) {
            return null;
        }
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        Intent intentA = aVar.a(applicationA);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(i10);
        intentA.putExtra("extra_notification_id", sb2.toString());
        intentA.putExtra("extra_source", MsgStyle.SOURCE_PUSH);
        intentA.putExtra("MESSAGE_TYPE", MsgType.DOWNLOAD_PUSH.getType());
        StringBuilder sb3 = new StringBuilder();
        sb3.append(i10);
        intentA.putExtra("extra_message_id", sb3.toString());
        intentA.addFlags(603979776);
        intentA.setData(Uri.parse("oneroom://com.community.oneroom?type=/download/panel_activity" + UrlUtils.AND_MARK + "download_notify" + UrlUtils.EQUAL_MARK + 10 + UrlUtils.AND_MARK + OfflineConstantsKt.TRACK_KEY_PRE_DOWNLOAD_STATUS + UrlUtils.EQUAL_MARK + downloadBean.getStatus()));
        PendingIntent activity = PendingIntent.getActivity(Utils.a(), 0, intentA, i11);
        String strV = v(downloadBean);
        long jLongValue = 0;
        long progress = downloadBean.getProgress() < 0 ? 0L : downloadBean.getProgress();
        Long size2 = downloadBean.getSize();
        if ((size2 != null ? size2.longValue() : 0L) >= 0 && (size = downloadBean.getSize()) != null) {
            jLongValue = size.longValue();
        }
        float progress2 = downloadBean.getProgress() * 1.0f;
        Long size3 = downloadBean.getSize();
        int iLongValue = (int) ((progress2 / (size3 != null ? size3.longValue() : 1L)) * 100);
        if (iLongValue > 100) {
            iLongValue = 100;
        }
        RemoteViews remoteViews = new RemoteViews(Utils.a().getPackageName(), w());
        remoteViews.setProgressBar(com.transsnet.downloader.R$id.progress, 100, iLongValue, false);
        remoteViews.setTextViewText(com.transsnet.downloader.R$id.tv_name, strV);
        remoteViews.setTextViewText(com.transsnet.downloader.R$id.tv_size, zg.b.a(progress, 1) + "/" + zg.b.a(jLongValue, 1));
        NotificationCompat.m mVarS = new NotificationCompat.m(Utils.a(), "download_service").J(R$drawable.push_small_logo).r(D(downloadBean.getStatus())).q(strV).p(activity).l(false).t(remoteViews).s(remoteViews);
        Intrinsics.g(mVarS, "setCustomBigContentView(...)");
        return mVarS;
    }

    public final int A(String url, String str) {
        Intrinsics.h(url, "url");
        if (str == null) {
            str = url;
        }
        int iAbs = Math.abs(str.hashCode());
        return iAbs <= 0 ? Math.abs(url.hashCode()) : iAbs;
    }

    public final void E() {
        if (Build.VERSION.SDK_INT >= 26) {
            g0.a();
            B().createNotificationChannel(f.a("download_service", Utils.a().getString(com.transsnet.downloader.R$string.download_notifications_name), 2));
            g0.a();
            B().createNotificationChannel(f.a("download_service_high", Utils.a().getString(com.transsnet.downloader.R$string.download_success_notifications_name), 4));
        }
    }

    public final void G() {
        if (m()) {
            x();
        } else {
            NotificationUtil.f48898a.W(new b());
        }
    }

    public final void I(DownloadBean downloadInfo) {
        Intrinsics.h(downloadInfo, "downloadInfo");
        int iZ = z(downloadInfo);
        int i10 = iZ + 1;
        int status = downloadInfo.getStatus();
        String resourceId = downloadInfo.getResourceId();
        if (resourceId == null) {
            resourceId = "";
        }
        if (!downloadInfo.isDownloading()) {
            wf.a.C0922a c0922a = wf.a.f74274a;
            wf.a.C0922a.f(c0922a, "download_notify", "updateCustomView, status = " + status + "， name = " + downloadInfo.getTotalTitleName(), false, 4, null);
            if (f57292e == status && Intrinsics.c(f57293f, resourceId)) {
                wf.a.C0922a.f(c0922a, "download_notify", "updateCustomView, return", false, 4, null);
                return;
            }
        }
        f57292e = status;
        f57293f = resourceId;
        if (status == 3) {
            l(iZ);
            B().cancel(i10);
            return;
        }
        wf.a.C0922a c0922a2 = wf.a.f74274a;
        wf.a.C0922a.f(c0922a2, "download_notify", "updateCustomView--- 2, status = " + status + "， name = " + downloadInfo.getTotalTitleName(), false, 4, null);
        DownloadGuard.f57166a.p(downloadInfo);
        if (status == 6 && (downloadInfo.isNoNetError() || !l.f76264a.e())) {
            wf.a.C0922a.f(c0922a2, "download_notify", "updateCustomView--- 无网错误不出通知", false, 4, null);
            l(iZ);
            B().cancel(i10);
            return;
        }
        String strV = v(downloadInfo);
        if (status == 1 || status == 2) {
            B().cancel(i10);
            return;
        }
        if (status == 5) {
            p(this, downloadInfo, false, null, null, 14, null);
            return;
        }
        if (status == 7 || status == 57) {
            l(iZ);
            B().cancel(i10);
            return;
        }
        l(iZ);
        RemoteViews remoteViews = new RemoteViews(Utils.a().getPackageName(), u());
        remoteViews.setTextViewText(com.transsnet.downloader.R$id.tv_status, D(downloadInfo.getStatus()));
        remoteViews.setTextViewText(com.transsnet.downloader.R$id.tv_name, strV);
        NotificationCompat.m mVarY = y(i10, downloadInfo);
        if (mVarY != null) {
            try {
                mVarY.l(true);
                mVarY.t(remoteViews).s(remoteViews);
                wf.a.C0922a.v(c0922a2, "download_notify", "updateCustomView--- 3, status = " + status + "， name = " + downloadInfo.getTotalTitleName(), false, 4, null);
                t.b(Utils.a()).d(i10, mVarY.c());
            } catch (Throwable unused) {
            }
        }
    }

    public final void n(DownloadBean downloadInfo) {
        String value;
        Boolean boolM1;
        Intrinsics.h(downloadInfo, "downloadInfo");
        boolean zBooleanValue = false;
        ConfigBean configBeanC = cm.f.f17019c.a().c("download_foreground_service", false);
        if (configBeanC != null && (value = configBeanC.getValue()) != null && (boolM1 = StringsKt.m1(value)) != null) {
            zBooleanValue = boolM1.booleanValue();
        }
        f57290c = zBooleanValue;
        k.d(o0.a(y0.c()), null, null, new DownloadNotificationUtils$createNotification$1(downloadInfo, null), 3, null);
    }

    public final void x() {
        k.d(o0.a(y0.b()), null, null, new DownloadNotificationUtils$getLatestDownloadVideo$1(null), 3, null);
    }

    public final int z(DownloadBean downloadInfo) {
        Intrinsics.h(downloadInfo, "downloadInfo");
        return A(downloadInfo.getUrl(), downloadInfo.getResourceId());
    }
}
