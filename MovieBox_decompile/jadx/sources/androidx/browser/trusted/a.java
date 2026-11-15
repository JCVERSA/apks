package androidx.browser.trusted;

import android.app.NotificationManager;
import android.os.Parcelable;

public abstract class a {
    static Parcelable[] a(NotificationManager notificationManager) {
        return notificationManager.getActiveNotifications();
    }
}
