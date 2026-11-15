package androidx.media.app;

import android.annotation.SuppressLint;
import android.app.Notification;
import android.app.PendingIntent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

abstract class b {
    @SuppressLint({"MissingPermission"})
    static Notification.MediaStyle a(Notification.MediaStyle mediaStyle, @NonNull CharSequence charSequence, int i10, @Nullable PendingIntent pendingIntent, Boolean bool) {
        if (bool.booleanValue()) {
            mediaStyle.setRemotePlaybackInfo(charSequence, i10, pendingIntent);
        }
        return mediaStyle;
    }
}
