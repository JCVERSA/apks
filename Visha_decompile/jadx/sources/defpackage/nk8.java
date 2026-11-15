package defpackage;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.text.TextUtils;
import android.widget.RemoteViews;
import com.transsion.gslb.GslbSdk;
import com.transsion.push.PushConstants;
import com.transsion.push.PushManager;
import com.transsion.push.R;
import com.transsion.push.bean.PushMessage;
import com.transsion.push.bean.PushNotification;
import com.transsion.push.bean.PushRequest;
import com.transsion.push.service.PushServiceHelper;
import com.transsion.push.tracker.Tracker;
import com.transsion.push.utils.NotificationAssistUtils;
import com.transsion.push.utils.PushLogUtils;
import com.transsion.pushui.activity.TransparentActivity;
import java.util.HashMap;
import java.util.UUID;

public abstract class nk8 {
    public static void a(PushMessage pushMessage) {
        if (pushMessage == null) {
            return;
        }
        PushNotification pushNotificationD = qo1.d(pushMessage.notiType, pushMessage.layoutStyleId);
        String channelId = pushMessage.channelId;
        try {
            if (TextUtils.isEmpty(channelId)) {
                channelId = pushNotificationD.getChannelId();
            }
            if (TextUtils.isEmpty(channelId)) {
                channelId = "";
            }
        } catch (Exception unused) {
        }
        pushMessage.channelId = channelId;
    }

    public static PendingIntent b(Context context, PushMessage pushMessage) {
        Intent intent = new Intent(context, (Class<?>) TransparentActivity.class);
        intent.setPackage(context.getPackageName());
        intent.putExtra("message", qab.b(pushMessage));
        intent.putExtra(PushConstants.EXTRA_PUSH_NOTI_CLICK, true);
        return PendingIntent.getActivity(context, UUID.randomUUID().hashCode(), intent, 67108864);
    }

    public static int c() {
        return 0;
    }

    public static String d() {
        if (PushManager.getInstance().getTestEnv()) {
            return PushConstants.BASE_TEST_URL_V2;
        }
        if (PushManager.getInstance().getDebug()) {
            return PushConstants.BASE_DEBUG_URL_V2;
        }
        try {
            String domain = GslbSdk.getDomain(PushConstants.BASE_RELEASE_URL_V2, false);
            if (TextUtils.isEmpty(domain)) {
                PushLogUtils.LOG.g("gslb domain is empty");
                return "";
            }
            PushLogUtils.LOG.g("gslb domain is" + domain);
            return domain;
        } catch (Exception unused) {
            return "";
        }
    }

    public static boolean e() {
        return false;
    }

    public static void f(String[] strArr, int i) {
    }

    public static void g(PushMessage pushMessage, HashMap map) {
        Context contextA;
        boolean z;
        try {
            contextA = xj1.a();
        } catch (Exception unused) {
            contextA = null;
        }
        if (contextA == null) {
            Tracker.getInstance().trackShow(pushMessage.messageId, pushMessage.type, pushMessage.timeStamp, true, 2, pushMessage);
            return;
        }
        boolean zIsOpenNotification = NotificationAssistUtils.isOpenNotification(contextA);
        NotificationManager notificationManager = (NotificationManager) contextA.getSystemService("notification");
        if (notificationManager == null) {
            Tracker.getInstance().trackShow(pushMessage.messageId, pushMessage.type, pushMessage.timeStamp, zIsOpenNotification, 3, pushMessage);
            return;
        }
        a(pushMessage);
        Notification.Builder builderE = l27.e(contextA, pushMessage);
        if (builderE == null) {
            Tracker.getInstance().trackShow(pushMessage.messageId, pushMessage.type, pushMessage.timeStamp, zIsOpenNotification, 4, pushMessage);
            return;
        }
        Notification notificationJ = j(contextA, pushMessage, map, builderE);
        if (notificationJ == null) {
            Tracker.getInstance().trackShow(pushMessage.messageId, pushMessage.type, pushMessage.timeStamp, zIsOpenNotification, 5, pushMessage);
            return;
        }
        try {
            String str = TextUtils.isEmpty(pushMessage.channelId) ? "twibida" : pushMessage.channelId;
            String str2 = TextUtils.isEmpty(pushMessage.channelName) ? "cloud messaging" : pushMessage.channelName;
            int i = Build.VERSION.SDK_INT;
            if (TextUtils.isEmpty(pushMessage.floatNotice) || !pushMessage.floatNotice.equals("1")) {
                z = false;
            } else {
                str = "headup";
                str2 = "head up messaging";
                PushLogUtils.LOG.g("float notice");
                z = true;
            }
            NotificationChannel notificationChannel = new NotificationChannel(str, str2, z ? 4 : 3);
            if (z) {
                notificationChannel.setShowBadge(true);
                notificationChannel.setLockscreenVisibility(1);
                if (i >= 36 && !TextUtils.isEmpty(pushMessage.floatNotice) && pushMessage.floatNotice.equals("1")) {
                    builderE.setGroup("float_" + pushMessage.messageId);
                }
            }
            PushLogUtils.LOG.g("message.channelId" + pushMessage.channelId + pushMessage.channelName);
            notificationManager.createNotificationChannel(notificationChannel);
            PushServiceHelper.d(pushMessage, notificationManager);
            notificationManager.notify((int) pushMessage.messageId, notificationJ);
            Tracker.getInstance().trackShow(pushMessage.messageId, pushMessage.type, pushMessage.timeStamp, zIsOpenNotification, zIsOpenNotification ? 0 : 6, pushMessage);
            if (PushManager.getInstance().getPushListener() != null) {
                PushManager.getInstance().getPushListener().onNotificationShow(pushMessage.messageId, pushMessage.notiOpenContent);
            }
        } catch (Exception e) {
            PushLogUtils.LOG.i(e);
            Tracker.getInstance().trackShow(pushMessage.messageId, pushMessage.type, pushMessage.timeStamp, zIsOpenNotification, 7, pushMessage);
        }
    }

    public static void h(PushRequest.ReportContentData reportContentData) {
    }

    public static void i(Notification.Builder builder, PushMessage pushMessage) {
        try {
            if (!TextUtils.isEmpty(pushMessage.iconColor)) {
                builder.setColor(Color.parseColor(pushMessage.iconColor));
                return;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        PushNotification pushNotificationD = qo1.d(pushMessage.notiType, pushMessage.layoutStyleId);
        try {
            if (TextUtils.isEmpty(pushNotificationD.getIconColor())) {
                return;
            }
            builder.setColor(Color.parseColor(pushNotificationD.getIconColor()));
        } catch (Exception unused) {
        }
    }

    public static Notification j(Context context, PushMessage pushMessage, HashMap map, Notification.Builder builder) {
        if (pushMessage == null || builder == null) {
            return null;
        }
        PushNotification pushNotificationD = qo1.d(pushMessage.notiType, pushMessage.layoutStyleId);
        if (map != null && map.get(pushMessage.notiSmallIcon) != null) {
            builder.setSmallIcon(Icon.createWithBitmap((Bitmap) map.get(pushMessage.notiSmallIcon)));
        } else if (pushNotificationD == null || pushNotificationD.getSmallIcon() <= 0) {
            builder.setSmallIcon(R.drawable.tpush_notify_icon);
        } else {
            builder.setSmallIcon(pushNotificationD.getSmallIcon());
        }
        if (map != null && map.get(pushMessage.notiOptionalIcon) != null) {
            builder.setLargeIcon(Icon.createWithBitmap((Bitmap) map.get(pushMessage.notiOptionalIcon)));
        }
        i(builder, pushMessage);
        if (pushMessage.notiType == 1) {
            builder.setContentTitle(pushMessage.notiTitle).setContentText(pushMessage.notiDes);
            int i = pushMessage.notiExType;
            if (i == 2) {
                builder.setStyle(new Notification.BigTextStyle().bigText(pushMessage.notiTxtEx));
            } else if (i == 3 && map != null && map.get(pushMessage.notiImgEx) != null) {
                builder.setLargeIcon((Bitmap) map.get(pushMessage.notiImgEx));
                builder.setStyle(new Notification.BigPictureStyle().bigPicture((Bitmap) map.get(pushMessage.notiImgEx)).bigLargeIcon((Bitmap) null));
            }
            builder.setContentIntent(b(xj1.a(), pushMessage));
            return builder.build();
        }
        RemoteViews remoteViewsE = qo1.e(context, pushMessage, map, false);
        if (remoteViewsE == null) {
            return builder.build();
        }
        builder.setContentTitle(pushMessage.notiTitle);
        builder.setContentText(pushMessage.notiDes);
        int i2 = Build.VERSION.SDK_INT;
        builder.setCustomContentView(remoteViewsE);
        if (i2 >= 31) {
            builder.setStyle(new Notification.DecoratedCustomViewStyle());
            builder.setCustomBigContentView(qo1.b(context, pushMessage, map, false));
        }
        return builder.build();
    }
}
