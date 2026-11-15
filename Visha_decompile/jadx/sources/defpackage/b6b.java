package defpackage;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.widget.RemoteViews;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import com.lzy.okgo.model.Progress;
import com.transsion.vishatransfers.R;

public final class b6b {
    public static final b6b a = new b6b();

    public final void a(Context context, int i) {
        y45.j(context, "context");
        NotificationManagerCompat.from(context).cancel(i);
    }

    public final Notification b(Context context, RemoteViews remoteViews, RemoteViews remoteViews2, String str, int i) {
        y45.j(context, "context");
        y45.j(str, "fileTitleAndCount");
        RemoteViews remoteViews3 = remoteViews == null ? new RemoteViews(context.getPackageName(), R.layout.notification_transfer_simple) : remoteViews;
        if (remoteViews2 == null) {
            remoteViews2 = new RemoteViews(context.getPackageName(), R.layout.notification_transfer_complex);
        }
        int i2 = R.id.tv_transfer_title;
        remoteViews3.setTextViewText(i2, str);
        int i3 = R.id.transfer_progress;
        remoteViews3.setProgressBar(i3, 100, 0, false);
        int i4 = R.id.tv_file_transfer_size;
        remoteViews3.setTextViewText(i4, "0 MB/0 MB");
        int i5 = R.id.tv_file_transfer_progress;
        remoteViews3.setTextViewText(i5, "0%");
        remoteViews2.setTextViewText(i2, str);
        remoteViews2.setProgressBar(i3, 100, 0, false);
        remoteViews2.setTextViewText(i4, "0 MB/0 MB");
        remoteViews2.setTextViewText(i5, "0%");
        Intent intent = new Intent("com.transsion.vishatransfers.action.CANCEL_TRANSFER");
        intent.setPackage(context.getPackageName());
        remoteViews2.setOnClickPendingIntent(R.id.tv_transfer_cancel, PendingIntent.getBroadcast(context, i, intent, 201326592));
        Notification notificationBuild = new NotificationCompat.Builder(context, "visha_transfer_channel").setSmallIcon(R.drawable.ic_notification_logo).setContent(remoteViews3).setCustomContentView(remoteViews3).setCustomBigContentView(remoteViews2).setOngoing(true).setAutoCancel(false).setGroup("visha_transfer_notification_group").setGroupAlertBehavior(1).setPriority(-1).setStyle(new NotificationCompat.DecoratedCustomViewStyle()).setCustomHeadsUpContentView(remoteViews).build();
        y45.i(notificationBuild, "build(...)");
        NotificationManagerCompat.from(context).notify(i, notificationBuild);
        return notificationBuild;
    }

    public final void c(Context context) {
        y45.j(context, "context");
        NotificationChannel notificationChannel = new NotificationChannel("visha_transfer_channel", "visha_transfer_notification", 2);
        notificationChannel.setShowBadge(true);
        notificationChannel.enableLights(false);
        notificationChannel.enableVibration(false);
        ((NotificationManager) context.getSystemService(NotificationManager.class)).createNotificationChannel(notificationChannel);
    }

    public final void d(Context context, int i, Notification notification, String str, String str2, int i2, RemoteViews remoteViews, RemoteViews remoteViews2) {
        y45.j(context, "context");
        y45.j(notification, "notification");
        y45.j(str, "title");
        y45.j(str2, Progress.CURRENT_SIZE);
        y45.j(remoteViews, "simpleView");
        y45.j(remoteViews2, "complexView");
        int i3 = R.id.tv_transfer_title;
        remoteViews.setTextViewText(i3, str);
        int i4 = R.id.transfer_progress;
        remoteViews.setProgressBar(i4, 100, i2, false);
        int i5 = R.id.tv_file_transfer_size;
        remoteViews.setTextViewText(i5, str2);
        int i6 = R.id.tv_file_transfer_progress;
        remoteViews.setTextViewText(i6, i2 + "%");
        remoteViews2.setTextViewText(i3, str);
        remoteViews2.setTextViewText(i5, str2);
        remoteViews2.setProgressBar(i4, 100, i2, false);
        remoteViews2.setTextViewText(i6, i2 + "%");
        NotificationManagerCompat.from(context).notify(i, notification);
    }
}
