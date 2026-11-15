package com.transsion.playercommon.utils;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationChannelGroup;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.service.notification.StatusBarNotification;
import android.text.TextUtils;
import android.util.Log;
import android.widget.RemoteViews;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import com.blankj.utilcode.util.LogUtils;
import com.hunantv.media.player.libnative.ImgoMediaPlayerLib;
import com.transsion.playercommon.R;
import com.transsion.playercommon.core.MainApp;
import com.transsion.sniffer_load.DownloadManagerActivity;
import defpackage.f5;
import java.util.Objects;

public abstract class TransferNotificationHelper {

    public enum NotificationPermissionStatus {
        GRANTED(0),
        PENDING_USER_ACTION(1),
        DENIED_LIMIT_REACHED(2);

        private final int mCode;

        NotificationPermissionStatus(int i) {
            this.mCode = i;
        }

        public int getCode() {
            return this.mCode;
        }
    }

    public static class a implements b {
        public Context a;

        public a(Context context) {
            this.a = context;
        }

        @Override
        public String a() {
            return this.a.getString(R.string.downloading_status);
        }

        @Override
        public String b(int i, int i2) {
            return this.a.getString(R.string.download_finish_notify, Integer.valueOf(i), Integer.valueOf(i2));
        }

        @Override
        public String c() {
            return this.a.getString(R.string.download);
        }

        public String d() {
            return this.a.getString(R.string.download_channel_name);
        }

        public String e() {
            return this.a.getString(R.string.downloaded_channel_name);
        }
    }

    public interface b {
        String a();

        String b(int i, int i2);

        String c();
    }

    public static class c implements b {
        public Context a;

        public c(Context context) {
            this.a = context;
        }

        @Override
        public String a() {
            return this.a.getString(R.string.visha_uploading);
        }

        @Override
        public String b(int i, int i2) {
            return this.a.getString(R.string.visha_upload_result, Integer.valueOf(i), Integer.valueOf(i2));
        }

        @Override
        public String c() {
            return this.a.getString(R.string.visha_upload);
        }

        public String d() {
            return a();
        }

        public String e() {
            return c();
        }
    }

    public static void a(Context context, int i) {
        NotificationManagerCompat.from(context).cancel(i);
    }

    public static Notification b(Context context, RemoteViews remoteViews, RemoteViews remoteViews2, String str, String str2, int i, String str3, String str4, String str5, PendingIntent pendingIntent) {
        NotificationManagerCompat notificationManagerCompatFrom = NotificationManagerCompat.from(context);
        NotificationCompat.Builder builder = new NotificationCompat.Builder(context, str);
        builder.setSmallIcon(R.drawable.ic_notification_logo).setContentTitle(str4).setContentText(str5).setStyle(new NotificationCompat.DecoratedCustomViewStyle()).setContent(remoteViews).setCustomContentView(remoteViews).setOnlyAlertOnce(true).setOngoing(true).setContentIntent(pendingIntent).setCustomBigContentView(remoteViews2).setCustomHeadsUpContentView(remoteViews).setVisibility(1).setAutoCancel(false).setFullScreenIntent(null, false).setChannelId(str).setSound(null).setGroupSummary(false).setGroup(str2).setCategory(NotificationCompat.CATEGORY_TRANSPORT).setDefaults(0).setGroupAlertBehavior(1).setPriority(-1);
        Notification notificationBuild = builder.build();
        notificationBuild.fullScreenIntent = null;
        notificationManagerCompatFrom.notify(i, notificationBuild);
        return notificationBuild;
    }

    public static void c(Context context, int i, int i2, int i3) {
        e(context, i, i2, i3, new a(context), "notify_downloaded", "group_downloaded", ImgoMediaPlayerLib.FFP_PROP_INT64_SELECTED_TIMEDTEXT_STREAM);
    }

    public static Notification d(Context context, RemoteViews remoteViews, RemoteViews remoteViews2, String str, int i) {
        return i(context, remoteViews, remoteViews2, str, i, new a(context), "notify_downloading", "group_downloading", ImgoMediaPlayerLib.FFP_PROP_INT64_AUDIO_CACHED_PACKETS);
    }

    public static Notification e(Context context, int i, int i2, int i3, b bVar, String str, String str2, int i4) {
        PendingIntent activity;
        try {
            String strC = bVar.c();
            String strC2 = bVar.c();
            String strB = bVar.b(i2, i3);
            com.transsion.utils.a.w(MainApp.f().getResources().getConfiguration());
            try {
                Intent intent = new Intent();
                int i5 = DownloadManagerActivity.R;
                intent.setClass(context, DownloadManagerActivity.class);
                intent.putExtra("show_full_screen", true);
                intent.putExtra("go_download", bVar instanceof a ? 1 : 0);
                activity = PendingIntent.getActivity(context, i4, intent, 201326592);
            } catch (ClassNotFoundException e) {
                LogUtils.l("TransferNotificationHelper", "Failed to create PendingIntent: " + e.getMessage());
                activity = null;
            }
            Notification notificationJ = j(context, str, str2, i, strC, strC2, strB, activity);
            LogUtils.i("TransferNotificationHelper", "Completion notification created successfully, notification ID: " + i + ", type: " + bVar.c());
            return notificationJ;
        } catch (Exception e2) {
            LogUtils.l("TransferNotificationHelper", "Failed to create completion notification: " + e2.getMessage());
            return null;
        }
    }

    public static void f(Context context, String str, String str2, int i, boolean z) {
        try {
            NotificationChannel notificationChannel = new NotificationChannel(str, str2, i);
            notificationChannel.setShowBadge(false);
            notificationChannel.enableLights(false);
            notificationChannel.enableVibration(false);
            notificationChannel.setLockscreenVisibility(1);
            notificationChannel.setBypassDnd(false);
            if (!z) {
                notificationChannel.setSound(null, null);
            }
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            notificationManager.createNotificationChannel(notificationChannel);
            g(context, notificationManager);
            Log.d("TransferNotificationHelper", "Notification channel created successfully: " + str2 + ", ID: " + str);
        } catch (Exception e) {
            Log.e("TransferNotificationHelper", "Failed to create notification channel: " + e.getMessage());
        }
    }

    public static void g(Context context, NotificationManager notificationManager) {
        try {
            notificationManager.createNotificationChannelGroup(new NotificationChannelGroup("group_download", context.getString(R.string.downloading_status)));
            notificationManager.createNotificationChannelGroup(new NotificationChannelGroup("group_upload", context.getString(R.string.visha_uploading)));
            Log.d("TransferNotificationHelper", "Notification groups created successfully");
        } catch (Exception e) {
            Log.e("TransferNotificationHelper", "Failed to create notification groups: " + e.getMessage());
        }
    }

    public static int h(String str) {
        return Objects.hash(str);
    }

    public static Notification i(Context context, RemoteViews remoteViews, RemoteViews remoteViews2, String str, int i, b bVar, String str2, String str3, int i2) {
        RemoteViews remoteViews3;
        PendingIntent activity;
        if (remoteViews == null) {
            try {
                remoteViews3 = new RemoteViews(context.getPackageName(), R.layout.notify_progress_layout_simple);
            } catch (Exception e) {
                LogUtils.l("TransferNotificationHelper", "Failed to create progress notification: " + e.getMessage());
                return null;
            }
        } else {
            remoteViews3 = remoteViews;
        }
        RemoteViews remoteViews4 = remoteViews2 == null ? new RemoteViews(context.getPackageName(), R.layout.notify_progress_layout) : remoteViews2;
        String strA = bVar.a();
        String strA2 = bVar.a();
        com.transsion.utils.a.w(MainApp.f().getResources().getConfiguration());
        try {
            Intent intent = new Intent();
            int i3 = DownloadManagerActivity.R;
            intent.setClass(context, DownloadManagerActivity.class);
            intent.putExtra("show_full_screen", true);
            intent.putExtra("go_transfer_working", true);
            try {
                intent.putExtra("go_download", bVar instanceof a ? 1 : 0);
                activity = PendingIntent.getActivity(context, i2, intent, 201326592);
            } catch (ClassNotFoundException e2) {
                e = e2;
                LogUtils.l("TransferNotificationHelper", "Failed to create PendingIntent: " + e.getMessage());
                activity = null;
            }
        } catch (ClassNotFoundException e3) {
            e = e3;
        }
        Notification notificationB = b(context, remoteViews3, remoteViews4, str2, str3, i, strA, strA2, str, activity);
        LogUtils.i("TransferNotificationHelper", "Progress notification created successfully, notification ID: " + i + ", type: " + bVar.a());
        return notificationB;
    }

    public static Notification j(Context context, String str, String str2, int i, String str3, String str4, String str5, PendingIntent pendingIntent) {
        NotificationManagerCompat notificationManagerCompatFrom = NotificationManagerCompat.from(context);
        NotificationCompat.Builder builder = new NotificationCompat.Builder(context, str);
        builder.setSmallIcon(R.drawable.ic_notification_logo).setContentTitle(str4).setContentText(str5).setVisibility(1).setAutoCancel(false).setOngoing(false).setGroup(str2).setContentIntent(pendingIntent).setSound(null, -1).setPriority(0);
        Notification notificationBuild = builder.build();
        notificationManagerCompatFrom.notify(i, notificationBuild);
        return notificationBuild;
    }

    public static Notification k(Context context, b bVar, String str, String str2, int i) {
        try {
            NotificationCompat.Builder builder = new NotificationCompat.Builder(context, str);
            NotificationCompat.InboxStyle inboxStyle = new NotificationCompat.InboxStyle();
            String strA = bVar.a();
            inboxStyle.setSummaryText(strA);
            Notification notificationBuild = builder.setSmallIcon(R.drawable.ic_notification_logo).setStyle(inboxStyle).setContentTitle(strA).setVisibility(1).setAutoCancel(false).setOngoing(true).setChannelId(str).setSound(null).setGroupSummary(true).setGroupAlertBehavior(1).setGroup(str2).setContentText(strA).build();
            NotificationManagerCompat.from(context).notify(i, notificationBuild);
            LogUtils.i("TransferNotificationHelper", "Summary notification created successfully, notification ID: " + i);
            return notificationBuild;
        } catch (Exception e) {
            LogUtils.l("TransferNotificationHelper", "Failed to create summary notification: " + e.getMessage());
            return null;
        }
    }

    public static void l(Context context, int i, int i2, int i3) {
        e(context, i, i2, i3, new c(context), "notify_uploaded", "group_uploaded", 20013);
    }

    public static Notification m(Context context) {
        return k(context, new c(context), "notify_uploading", "group_uploading", 10002);
    }

    public static Notification n(Context context, RemoteViews remoteViews, RemoteViews remoteViews2, String str, int i) {
        return i(context, remoteViews, remoteViews2, str, i, new c(context), "notify_uploading", "group_uploading", 20012);
    }

    public static int o(Context context) {
        int i = 0;
        for (StatusBarNotification statusBarNotification : ((NotificationManager) context.getSystemService("notification")).getActiveNotifications()) {
            if (TextUtils.equals("group_downloading", statusBarNotification.getNotification().getGroup())) {
                i++;
            }
        }
        return i;
    }

    public static boolean p(Context context) {
        return NotificationManagerCompat.from(context).areNotificationsEnabled();
    }

    public static void q(Context context) {
        try {
            a aVar = new a(context);
            f(context, "notify_downloading", aVar.d(), 3, false);
            f(context, "notify_downloaded", aVar.e(), 3, true);
            c cVar = new c(context);
            f(context, "notify_uploading", cVar.d(), 3, false);
            f(context, "notify_uploaded", cVar.e(), 3, true);
            Log.d("TransferNotificationHelper", "Notification channel setup successful");
        } catch (Exception e) {
            Log.e("TransferNotificationHelper", "Failed to setup notification channel: " + e.getMessage());
        }
    }

    public static void r(Context context, String str) {
        Intent intent = new Intent();
        if (TextUtils.isEmpty(str)) {
            intent.setAction("android.settings.APP_NOTIFICATION_SETTINGS");
            intent.putExtra("android.provider.extra.APP_PACKAGE", context.getPackageName());
        } else {
            intent.setAction("android.settings.CHANNEL_NOTIFICATION_SETTINGS");
            intent.putExtra("android.provider.extra.APP_PACKAGE", context.getPackageName());
        }
        f5.c(intent, context);
    }

    public static void s(int i, String str, String str2, RemoteViews remoteViews, RemoteViews remoteViews2) {
        if (remoteViews != null) {
            remoteViews.setProgressBar(R.id.progressBar, 100, i, false);
        }
        if (remoteViews2 != null) {
            remoteViews2.setProgressBar(R.id.progressBar, 100, i, false);
            remoteViews2.setTextViewText(R.id.tv_speed, str);
            remoteViews2.setTextViewText(R.id.tv_size, str2);
        }
    }

    public static void t(Context context, int i, Notification notification) {
        NotificationManagerCompat.from(context).notify(i, notification);
    }
}
