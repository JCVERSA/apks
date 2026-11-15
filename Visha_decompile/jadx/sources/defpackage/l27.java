package defpackage;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.transsion.push.PushConstants;
import com.transsion.push.PushManager;
import com.transsion.push.bean.PushExtButtonList;
import com.transsion.push.bean.PushExtensionBtn;
import com.transsion.push.bean.PushMessage;
import com.transsion.push.tracker.Tracker;
import com.transsion.push.utils.PushLogUtils;
import com.transsion.push.utils.PushUtils;
import java.util.List;

public abstract class l27 {
    public static void a(long j) {
        try {
            NotificationManager notificationManager = (NotificationManager) xj1.a().getSystemService("notification");
            if (notificationManager == null) {
                return;
            }
            notificationManager.cancel((int) j);
        } catch (Exception unused) {
        }
    }

    public static PushMessage b(PushMessage pushMessage, int i, String str) {
        PushMessage pushMessage2 = new PushMessage();
        pushMessage2.setMessageId(pushMessage.messageId);
        pushMessage2.setChannelName(pushMessage.channelName);
        pushMessage2.setNotiOpenType(i);
        pushMessage2.setNotiOpenContent(str);
        pushMessage2.setPackageName(pushMessage.packageName);
        return pushMessage2;
    }

    public static List c(PushMessage pushMessage) {
        if (TextUtils.isEmpty(pushMessage.notiExtensionBtn)) {
            return null;
        }
        try {
            PushExtButtonList pushExtButtonList = (PushExtButtonList) qab.a(pushMessage.notiExtensionBtn, PushExtButtonList.class);
            if (pushExtButtonList.list.size() == 0) {
                return null;
            }
            return pushExtButtonList.list;
        } catch (Exception e) {
            PushLogUtils.LOG.i(e);
            return null;
        }
    }

    public static PushMessage d(Intent intent) {
        if (intent == null) {
            return null;
        }
        try {
            return (PushMessage) qab.a(intent.getStringExtra("message"), PushMessage.class);
        } catch (Exception unused) {
            PushLogUtils.LOG.i("Notification service message is empty");
            return null;
        }
    }

    public static Notification.Builder e(Context context, PushMessage pushMessage) {
        if (pushMessage == null) {
            PushLogUtils.LOG.i("Get the notification object, the message is empty");
            return null;
        }
        int i = pushMessage.notiType;
        if (i != 1 && i != 3) {
            PushLogUtils.LOG.i("Notification type is not supported，notiType:" + pushMessage.notiType);
            return null;
        }
        int i2 = pushMessage.notiExType;
        if (i2 != 1 && i2 != 2 && i2 != 3) {
            PushLogUtils.LOG.i("Notification expansion type is not supported，notiExType:" + pushMessage.notiExType);
            return null;
        }
        Notification.Builder builder = new Notification.Builder(context, TextUtils.isEmpty(pushMessage.channelId) ? "twibida" : pushMessage.channelId);
        builder.setWhen(System.currentTimeMillis()).setShowWhen(true).setAutoCancel(true).setDefaults(2).setDefaults(1).setContentIntent(nk8.b(context, pushMessage));
        if ("1".equals(pushMessage.floatNotice)) {
            PushLogUtils.LOG.g("head up");
            builder.setPriority(2);
        } else {
            PushLogUtils.LOG.g("no head up");
            builder.setPriority(0);
        }
        List<PushExtensionBtn> listC = c(pushMessage);
        if (listC != null && listC.size() > 0) {
            for (PushExtensionBtn pushExtensionBtn : listC) {
                builder.addAction(new Notification.Action(0, pushExtensionBtn.txt, nk8.b(context, b(pushMessage, pushExtensionBtn.type, pushExtensionBtn.content))));
            }
        }
        builder.setChannelId(TextUtils.isEmpty(pushMessage.channelId) ? "twibida" : pushMessage.channelId);
        if ("1".equals(pushMessage.floatNotice)) {
            builder.setChannelId("headup");
        }
        Bundle bundle = new Bundle();
        bundle.putBoolean(PushConstants.EXTRA_PUSH_FROM_TPUSH_NOTI, true);
        builder.addExtras(bundle);
        return builder;
    }

    public static void f(Context context, Intent intent) {
        PushMessage pushMessageD = d(intent);
        if (pushMessageD == null) {
            PushLogUtils.LOG.i("handler notification messages, message empty");
            return;
        }
        int i = pushMessageD.notiOpenType;
        if (1 == i) {
            try {
                Intent intent2 = new Intent();
                if (TextUtils.isEmpty(pushMessageD.notiOpenContent) || !pushMessageD.notiOpenContent.contains("://")) {
                    intent2.setClassName(pushMessageD.packageName, pushMessageD.notiOpenContent);
                } else {
                    intent2.setData(Uri.parse(pushMessageD.notiOpenContent));
                }
                intent2.setFlags(276824064);
                context.startActivity(intent2);
            } catch (Exception e) {
                PushLogUtils.LOG.z("e:" + e.getMessage());
                g(context, pushMessageD);
                if (PushManager.getInstance().getPushListener() != null) {
                    PushManager.getInstance().getPushListener().onClickException(pushMessageD.messageId, e.getMessage());
                }
            }
        } else if (2 == i) {
            try {
                Intent intent3 = new Intent("android.intent.action.VIEW", Uri.parse(pushMessageD.notiOpenContent));
                intent3.setFlags(268435456);
                context.startActivity(intent3);
            } catch (Exception e2) {
                PushLogUtils.LOG.z("e:" + e2.getMessage());
                g(context, pushMessageD);
                if (PushManager.getInstance().getPushListener() != null) {
                    PushManager.getInstance().getPushListener().onClickException(pushMessageD.messageId, e2.getMessage());
                }
            }
        }
        a(pushMessageD.messageId);
        PushUtils.z(pushMessageD.messageId);
        Tracker.getInstance().trackClick(pushMessageD.messageId, pushMessageD);
    }

    public static void g(Context context, PushMessage pushMessage) {
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.setPackage(pushMessage.packageName);
        List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intent, 0);
        if (listQueryIntentActivities == null || listQueryIntentActivities.size() <= 0 || listQueryIntentActivities.get(0).activityInfo == null) {
            return;
        }
        try {
            Intent intent2 = new Intent();
            intent2.setFlags(343932928);
            intent2.setClassName(listQueryIntentActivities.get(0).activityInfo.packageName, listQueryIntentActivities.get(0).activityInfo.name);
            context.startActivity(intent2);
        } catch (Exception e) {
            e.printStackTrace();
            PushLogUtils.LOG.i("e:" + e.getMessage());
        }
    }
}
