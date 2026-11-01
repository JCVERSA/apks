package app.fast.ssh;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.provider.MediaStore;

public final class ExportActivity$$ExternalSyntheticApiModelOutline0 {
    public static NotificationChannel m(String str, CharSequence charSequence, int i) {
        return new NotificationChannel(str, charSequence, i);
    }

    public static ComponentName m(Context context, Intent intent) {
        return context.startForegroundService(intent);
    }

    public static Uri m() {
        return MediaStore.Downloads.EXTERNAL_CONTENT_URI;
    }

    public static void m462m() {
    }

    public static void m(NotificationChannel notificationChannel, boolean z) {
        notificationChannel.setShowBadge(z);
    }

    public static void m(NotificationManager notificationManager, NotificationChannel notificationChannel) {
        notificationManager.createNotificationChannel(notificationChannel);
    }

    public static boolean m(NotificationChannel notificationChannel) {
        return notificationChannel.canShowBadge();
    }
}
