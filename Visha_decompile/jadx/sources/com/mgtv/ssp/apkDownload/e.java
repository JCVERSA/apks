package com.mgtv.ssp.apkDownload;

import android.annotation.SuppressLint;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import androidx.core.internal.view.SupportMenu;
import androidx.media3.common.C;
import com.mgtv.ssp.R;

@SuppressLint({"NewApi"})
public class e {
    private static boolean f = false;
    public int a;
    public int b;
    private Context c;
    private Notification d;
    private NotificationManager e;
    private NotificationCompat.Builder g;

    public e(Context context, int i) {
        a(context);
        this.c = context;
        this.a = i;
        if (context != null) {
            this.e = (NotificationManager) context.getSystemService("notification");
        }
    }

    public static void a(Context context) {
        try {
            if (f) {
                return;
            }
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            NotificationChannel notificationChannel = new NotificationChannel("1", context.getResources().getString(R.string.notify_tool), 2);
            NotificationChannel notificationChannel2 = new NotificationChannel("2", context.getResources().getString(R.string.message_notify), 3);
            notificationChannel.enableLights(true);
            notificationChannel.setLightColor(SupportMenu.CATEGORY_MASK);
            notificationChannel.setShowBadge(true);
            notificationManager.createNotificationChannel(notificationChannel);
            notificationManager.createNotificationChannel(notificationChannel2);
            f = true;
        } catch (Exception unused) {
        }
    }

    public void b() {
        try {
            this.e.notify(this.a, this.d);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void c() {
        try {
            this.e.cancel(this.a);
        } catch (SecurityException e) {
            e.printStackTrace();
        }
    }

    public void a(boolean z, boolean z2) {
        this.g.setAutoCancel(z);
        this.g.setOngoing(z2);
    }

    private void a(String str, String str2, String str3) {
        try {
            NotificationCompat.Builder when = new NotificationCompat.Builder(this.c).setContentTitle(str).setContentText(str2).setShowWhen(true).setWhen(System.currentTimeMillis());
            this.g = when;
            when.setSmallIcon(R.drawable.notice_ssp_icon);
        } catch (Throwable unused) {
        }
        try {
            this.g.setLargeIcon(BitmapFactory.decodeResource(this.c.getResources(), R.drawable.notice_ssp_icon));
        } catch (Throwable unused2) {
        }
        try {
            this.g.setChannelId(str3);
        } catch (Throwable unused3) {
        }
        NotificationCompat.Builder builder = this.g;
        if (builder != null) {
            this.d = builder.build();
        }
    }

    public void a() {
        Context context = this.c;
        if (context != null) {
            a(context.getString(R.string.download_is_caching), "", "1");
            this.d.flags = 2;
        }
    }

    public void a(String str, String str2, @Nullable String str3, @Nullable String str4, int i) {
        PendingIntent broadcast;
        String str5;
        Intent intent = new Intent(this.c, (Class<?>) NotificationReceiver.class);
        intent.setAction("ssp.notification.apk.download.delete");
        if (i == 100) {
            intent.putExtra("notificationType", 101);
        } else {
            intent.putExtra("notificationType", 100);
        }
        intent.putExtra("notificationURL", str2);
        intent.putExtra("notificationUUID", str);
        intent.putExtra("fznotificationID", this.a);
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 31) {
            broadcast = PendingIntent.getBroadcast(this.c, this.b, intent, 201326592);
        } else {
            broadcast = PendingIntent.getBroadcast(this.c, this.b, intent, C.BUFFER_FLAG_FIRST_SAMPLE);
        }
        this.g.setDeleteIntent(broadcast);
        Intent intent2 = new Intent(this.c, (Class<?>) NotificationReceiver.class);
        intent2.setAction("ssp.notification.apk.download.click");
        if (i == 100) {
            intent2.putExtra("notificationType", 101);
        } else {
            intent2.putExtra("notificationType", 100);
        }
        intent2.putExtra("notificationURL", str2);
        intent2.putExtra("notificationUUID", str);
        intent2.putExtra("fznotificationID", this.a);
        if (i2 >= 31) {
            this.g.setContentIntent(PendingIntent.getBroadcast(this.c, this.b, intent2, 201326592));
        } else {
            this.g.setContentIntent(PendingIntent.getBroadcast(this.c, this.b, intent2, C.BUFFER_FLAG_FIRST_SAMPLE));
        }
        String string = TextUtils.isEmpty(str3) ? this.c.getString(R.string.apk_download_finish_title) : str3;
        if (TextUtils.isEmpty(str4)) {
            str5 = this.c.getString(R.string.start_download) + "·" + i + "%";
        } else {
            str5 = str4;
        }
        this.g.setProgress(100, i, false).setContentTitle(string).setContentText(str5);
        this.d = this.g.build();
        b();
    }
}
