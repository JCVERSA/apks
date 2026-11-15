package defpackage;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;

public abstract class n27 {
    public static void a(Context context, String str, int i, int i2, int i3) {
        if (blb.a >= 26) {
            NotificationManager notificationManager = (NotificationManager) zi.e((NotificationManager) context.getSystemService("notification"));
            NotificationChannel notificationChannel = new NotificationChannel(str, context.getString(i), i3);
            if (i2 != 0) {
                notificationChannel.setDescription(context.getString(i2));
            }
            notificationManager.createNotificationChannel(notificationChannel);
        }
    }
}
