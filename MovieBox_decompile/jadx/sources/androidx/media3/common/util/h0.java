package androidx.media3.common.util;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;

public abstract class h0 {
    public static void a(Context context, String str, int i10, int i11, int i12) {
        if (a1.f10038a >= 26) {
            NotificationManager notificationManager = (NotificationManager) a.e((NotificationManager) context.getSystemService("notification"));
            g0.a();
            NotificationChannel notificationChannelA = m.f.a(str, context.getString(i10), i12);
            if (i11 != 0) {
                notificationChannelA.setDescription(context.getString(i11));
            }
            notificationManager.createNotificationChannel(notificationChannelA);
        }
    }
}
