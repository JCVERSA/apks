package defpackage;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import androidx.core.internal.view.SupportMenu;
import androidx.media3.common.C;
import com.mgmi.R;
import com.mgmi.notification.NotificationReceiver;

public class d6d {
    public static boolean g = false;
    public Context a;
    public Notification b;
    public NotificationManager c;
    public int d;
    public int e;
    public NotificationCompat.Builder f;

    public d6d(Context context, int i) {
        b(context);
        this.a = context;
        this.d = i;
        this.c = (NotificationManager) context.getSystemService("notification");
    }

    public static void b(Context context) {
        if (g) {
            return;
        }
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        NotificationChannel notificationChannel = new NotificationChannel("1", "通知栏工具", 2);
        NotificationChannel notificationChannel2 = new NotificationChannel("2", "消息通知", 3);
        notificationChannel.enableLights(true);
        notificationChannel.setLightColor(SupportMenu.CATEGORY_MASK);
        notificationChannel.setShowBadge(true);
        notificationManager.createNotificationChannel(notificationChannel);
        notificationManager.createNotificationChannel(notificationChannel2);
        g = true;
    }

    public void a() {
        c(this.a.getString(R.string.mgmi_download_is_caching), "", "1");
        this.b.flags = 2;
    }

    public final void c(String str, String str2, String str3) {
        NotificationCompat.Builder when = new NotificationCompat.Builder(this.a).setContentTitle(str).setContentText(str2).setShowWhen(true).setWhen(System.currentTimeMillis());
        this.f = when;
        try {
            when.setSmallIcon(R.drawable.mgmi_icon_notification_icon);
        } catch (Throwable unused) {
        }
        try {
            this.f.setLargeIcon(BitmapFactory.decodeResource(this.a.getResources(), R.drawable.mgmi_icon_notification_icon));
        } catch (Throwable unused2) {
        }
        this.f.setChannelId(str3);
        this.b = this.f.build();
    }

    public void d(String str, String str2, String str3, String str4, int i) {
        String str5;
        Intent intent = new Intent(this.a, (Class<?>) NotificationReceiver.class);
        intent.setAction("mgmi_notification.apk.download.delete");
        if (i == 100) {
            intent.putExtra("notificationType", 47362);
        } else {
            intent.putExtra("notificationType", 47361);
        }
        intent.putExtra("notificationURL", str2);
        intent.putExtra("notificationUUID", str);
        intent.putExtra("fznotificationID", this.d);
        int i2 = Build.VERSION.SDK_INT;
        this.f.setDeleteIntent(i2 >= 31 ? PendingIntent.getBroadcast(this.a, this.e, intent, 201326592) : PendingIntent.getBroadcast(this.a, this.e, intent, C.BUFFER_FLAG_FIRST_SAMPLE));
        Intent intent2 = new Intent(this.a, (Class<?>) NotificationReceiver.class);
        intent2.setAction("mgmi_notification.apk.download.click");
        if (i == 100) {
            intent2.putExtra("notificationType", 47362);
        } else {
            intent2.putExtra("notificationType", 47361);
        }
        intent2.putExtra("notificationURL", str2);
        intent2.putExtra("notificationUUID", str);
        intent2.putExtra("fznotificationID", this.d);
        if (i2 >= 31) {
            this.f.setContentIntent(PendingIntent.getBroadcast(this.a, this.e, intent2, 201326592));
        } else {
            this.f.setContentIntent(PendingIntent.getBroadcast(this.a, this.e, intent2, C.BUFFER_FLAG_FIRST_SAMPLE));
        }
        String string = TextUtils.isEmpty(str3) ? this.a.getString(R.string.mgmi_apk_download_finish_title) : str3;
        if (TextUtils.isEmpty(str4)) {
            str5 = this.a.getString(R.string.mgmi_str_downloading) + "·" + i + "%";
        } else {
            str5 = str4;
        }
        this.f.setProgress(100, i, false).setContentTitle(string).setContentText(str5);
        this.b = this.f.build();
        f();
    }

    public void e(boolean z, boolean z2) {
        this.f.setAutoCancel(z);
        this.f.setOngoing(z2);
    }

    public void f() {
        try {
            this.c.notify(this.d, this.b);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void g() {
        try {
            this.c.cancel(this.d);
        } catch (SecurityException e) {
            e.printStackTrace();
        }
    }
}
