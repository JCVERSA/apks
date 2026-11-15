package com.transsnet.downloader.guard;

import android.app.Application;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Build;
import android.os.IBinder;
import android.os.SystemClock;
import android.widget.RemoteViews;
import androidx.core.app.NotificationCompat;
import androidx.media3.common.util.g0;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.i;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.therouter.TheRouter;
import com.tn.lib.widget.R$drawable;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baseui.util.n;
import com.transsion.push.bean.MsgStyle;
import com.transsion.push.bean.MsgType;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;
import com.transsnet.downloader.R$string;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import m.f;
import org.mvel2.ast.ASTNode;

public final class DownloadGuard {

    public static final DownloadGuard f57166a;

    private static boolean f57167b;

    private static final Lazy f57168c;

    private static Map f57169d;

    private static final NotificationManager f57170e;

    private static Map f57171f;

    public static final class a implements ServiceConnection {
        a() {
        }

        @Override
        public void onServiceConnected(ComponentName name, IBinder service) {
            Intrinsics.h(name, "name");
            Intrinsics.h(service, "service");
        }

        @Override
        public void onServiceDisconnected(ComponentName name) {
            Intrinsics.h(name, "name");
        }
    }

    static {
        DownloadGuard downloadGuard = new DownloadGuard();
        f57166a = downloadGuard;
        f57168c = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return DownloadGuard.d();
            }
        });
        f57169d = new LinkedHashMap();
        Object systemService = Utils.a().getSystemService("notification");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
        NotificationManager notificationManager = (NotificationManager) systemService;
        f57170e = notificationManager;
        if (Build.VERSION.SDK_INT >= 26) {
            g0.a();
            notificationManager.createNotificationChannel(f.a(downloadGuard.f(), Utils.a().getString(R$string.download_notifications_name), 2));
        }
        f57171f = new LinkedHashMap();
    }

    private DownloadGuard() {
    }

    public static final n0 d() {
        return o0.a(y0.b());
    }

    private final n0 e() {
        return (n0) f57168c.getValue();
    }

    public final int g() {
        return Build.VERSION.SDK_INT < 31 ? R$layout.notification_download_complete : R$layout.notification_download_complete_v12;
    }

    private final String h(DownloadBean downloadBean) {
        String strB;
        String subjectName = downloadBean.isSeries() ? downloadBean.getSubjectName() : downloadBean.getName();
        if (downloadBean.getEpse() > 0) {
            strB = downloadBean.getEp() > 0 ? n.b(downloadBean.getEp(), downloadBean.getSe(), downloadBean.isVideo()) : n.c(downloadBean.getEpse(), downloadBean.isVideo());
        } else {
            strB = "";
        }
        return subjectName + " " + strB;
    }

    private final int i() {
        return Build.VERSION.SDK_INT < 31 ? R$layout.notification_downloading : R$layout.notification_downloading_v12;
    }

    public final NotificationCompat.m j(DownloadBean downloadBean) {
        Long size;
        int i10 = Build.VERSION.SDK_INT >= 31 ? 67108864 : ASTNode.NOJIT;
        to.a aVar = (to.a) TheRouter.d(to.a.class, new Object[0]);
        if (aVar == null) {
            return null;
        }
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        Intent intentA = aVar.a(applicationA);
        DownloadGuard downloadGuard = f57166a;
        int iK = downloadGuard.k(downloadBean);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(iK);
        intentA.putExtra("extra_notification_id", sb2.toString());
        intentA.putExtra("extra_source", MsgStyle.SOURCE_PUSH);
        intentA.putExtra("MESSAGE_TYPE", MsgType.DOWNLOAD_PUSH.getType());
        int iK2 = downloadGuard.k(downloadBean);
        StringBuilder sb3 = new StringBuilder();
        sb3.append(iK2);
        intentA.putExtra("extra_message_id", sb3.toString());
        intentA.addFlags(603979776);
        intentA.setData(Uri.parse("oneroom://com.community.oneroom?type=/download/panel_activity" + UrlUtils.AND_MARK + "download_notify" + UrlUtils.EQUAL_MARK + 10 + UrlUtils.AND_MARK + OfflineConstantsKt.TRACK_KEY_PRE_DOWNLOAD_STATUS + UrlUtils.EQUAL_MARK + downloadBean.getStatus()));
        PendingIntent activity = PendingIntent.getActivity(Utils.a(), 0, intentA, i10);
        String strH = h(downloadBean);
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
        RemoteViews remoteViews = new RemoteViews(Utils.a().getPackageName(), i());
        remoteViews.setProgressBar(R$id.progress, 100, iLongValue, false);
        remoteViews.setTextViewText(R$id.tv_name, downloadBean.getTitleName());
        remoteViews.setTextViewText(R$id.tv_epse, downloadBean.getEpName());
        remoteViews.setTextViewText(R$id.tv_size, i.b(progress, 1) + "/" + i.b(jLongValue, 1));
        return new NotificationCompat.m(Utils.a(), f()).J(R$drawable.push_small_logo).q(strH).p(activity).l(false).t(remoteViews).E(true).l(false).F(true).s(remoteViews);
    }

    private final int k(DownloadBean downloadBean) {
        return l(downloadBean.getUrl(), downloadBean.getResourceId());
    }

    private final int l(String str, String str2) {
        if (str2 == null) {
            str2 = str;
        }
        int iAbs = Math.abs(str2.hashCode());
        return iAbs <= 0 ? Math.abs(str.hashCode()) : iAbs;
    }

    private final void m(DownloadBean downloadBean) {
        int iK = k(downloadBean);
        f57169d.remove(Integer.valueOf(iK));
        f57170e.cancel(iK);
        k.d(e(), null, null, new DownloadGuard$otherStatus$1(downloadBean, null), 3, null);
    }

    private final void n(DownloadBean downloadBean) {
        int iK = k(downloadBean);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        Long l10 = (Long) f57171f.get(Integer.valueOf(iK));
        if (jElapsedRealtime - (l10 != null ? l10.longValue() : 0L) < 2000) {
            return;
        }
        f57171f.put(Integer.valueOf(iK), Long.valueOf(jElapsedRealtime));
        k.d(e(), null, null, new DownloadGuard$progress$1(downloadBean, iK, null), 3, null);
    }

    private final void o(int i10) {
        try {
            Intent intent = new Intent();
            intent.setClass(Utils.a(), DownloadGuardService.class);
            intent.putExtra("id", i10);
            if (Build.VERSION.SDK_INT >= 26) {
                Utils.a().bindService(intent, new a(), 1);
            } else {
                Utils.a().startService(intent);
            }
        } catch (Throwable unused) {
        }
        f57167b = true;
    }

    public final String f() {
        return "download_service";
    }

    public final void p(DownloadBean downloadInfo) {
        Intrinsics.h(downloadInfo, "downloadInfo");
        int iK = k(downloadInfo);
        boolean zContainsKey = f57169d.containsKey(Integer.valueOf(iK));
        f57170e.cancel(10086);
        if (!zContainsKey) {
            f57169d.put(Integer.valueOf(iK), "");
            o(iK);
        } else {
            int status = downloadInfo.getStatus();
            if (status == 1 || status == 2) {
                n(downloadInfo);
            } else {
                m(downloadInfo);
            }
        }
    }
}
