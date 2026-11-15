package defpackage;

import android.app.Notification;
import android.content.Context;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import com.transsion.playercommon.R;
import java.util.Objects;

public abstract class u03 {
    public static int a(String str) {
        return Objects.hash(str);
    }

    public static Notification b(Context context) {
        NotificationCompat.Builder builder = new NotificationCompat.Builder(context, "notify_downloading");
        NotificationCompat.InboxStyle inboxStyle = new NotificationCompat.InboxStyle();
        int i = R.string.downloading_status;
        inboxStyle.setSummaryText(context.getString(i));
        Notification notificationBuild = builder.setSmallIcon(R.drawable.ic_notification_logo).setStyle(inboxStyle).setContentTitle(context.getString(i)).setVisibility(1).setAutoCancel(false).setOngoing(true).setChannelId("notify_downloading").setSound(null).setGroupSummary(true).setGroupAlertBehavior(1).setGroup("group_downloading").setContentText(context.getString(i)).build();
        NotificationManagerCompat.from(context).notify(10000, notificationBuild);
        return notificationBuild;
    }
}
