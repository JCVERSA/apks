package com.transsion.push.service;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Intent;
import android.os.Bundle;
import android.provider.Settings;
import android.service.notification.StatusBarNotification;
import android.text.TextUtils;
import android.util.Log;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.push.PushConstants;
import com.transsion.push.PushManager;
import com.transsion.push.bean.PushMessage;
import com.transsion.push.config.PushRepository;
import com.transsion.push.tracker.Tracker;
import com.transsion.push.utils.BitmapDownloadUtils;
import com.transsion.push.utils.PushLogUtils;
import com.transsion.push.utils.PushUtils;
import defpackage.ee3;
import defpackage.hf;
import defpackage.la2;
import defpackage.lk8;
import defpackage.nk8;
import defpackage.sg9;
import defpackage.sj8;
import defpackage.xj1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;

public abstract class PushServiceHelper {
    public static final Object a = new Object();

    public class a implements BitmapDownloadUtils.a {
        @Override
        public void a(PushMessage pushMessage, HashMap map) {
            PushServiceHelper.l(pushMessage, map);
        }
    }

    public static void b(PushMessage pushMessage) {
        if (pushMessage == null) {
            return;
        }
        int i = pushMessage.type;
        if (i != 1) {
            if (i == 2) {
                n(pushMessage);
                return;
            } else if (i != 5 && i != 6) {
                if (i != 7) {
                    PushLogUtils.LOG.z("Display message, message type is not supported");
                    return;
                }
                return;
            }
        }
        if (pushMessage.sdkShow == 0) {
            PushLogUtils.LOG.g("sdkShow no show");
            if (PushManager.getInstance().getPushListener() != null) {
                PushManager.getInstance().getPushListener().onPushReceive(pushMessage.messageId, pushMessage, pushMessage.priority);
            }
            Tracker.getInstance().trackHandleMsgErrorInfoeye(pushMessage.messageId, "sdk_show_fail");
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            PushLogUtils.LOG.g("message ignoreExpire? " + pushMessage.ignoreExpire);
            PushLogUtils.LOG.g("isTimeAutomatic: " + e());
            PushLogUtils.LOG.g("message schedule time: " + pushMessage.getTimeStamp());
            PushLogUtils.LOG.g("message delay: " + (jCurrentTimeMillis - Long.parseLong(pushMessage.getTimeStamp())));
            PushLogUtils.LOG.g("message ttl: " + (((long) pushMessage.getMsgTtl()) * 1000));
            if (pushMessage.ignoreExpire == 0) {
                PushLogUtils.LOG.g("message expiration check");
                if (e() && jCurrentTimeMillis - Long.parseLong(pushMessage.getTimeStamp()) > ((long) pushMessage.getMsgTtl()) * 1000) {
                    PushLogUtils.LOG.g("message expired, no show");
                    Tracker.getInstance().trackShow(pushMessage.messageId, pushMessage.type, pushMessage.timeStamp, true, 999);
                    return;
                }
            }
        } catch (Exception unused) {
        }
        if (!PushManager.getInstance().getNotificationSwitch()) {
            Tracker.getInstance().trackHandleMsgErrorInfoeye(pushMessage.messageId, "noti_off");
            PushLogUtils.LOG.g("notification switch is off, do not show noti");
        } else if (BitmapDownloadUtils.a(pushMessage)) {
            BitmapDownloadUtils.b(pushMessage, new a());
        } else {
            l(pushMessage, null);
        }
    }

    public static List c(String str, NotificationManager notificationManager) {
        Bundle bundle;
        StatusBarNotification[] activeNotifications = notificationManager.getActiveNotifications();
        ArrayList arrayList = new ArrayList();
        for (StatusBarNotification statusBarNotification : activeNotifications) {
            Notification notification = statusBarNotification.getNotification();
            if (notification != null && (bundle = notification.extras) != null && bundle.getBoolean(PushConstants.EXTRA_PUSH_FROM_TPUSH_NOTI)) {
                if (notification.getGroup() == null && TextUtils.isEmpty(str)) {
                    arrayList.add(statusBarNotification);
                } else if (notification.getGroup() != null && notification.getGroup().equals(str)) {
                    arrayList.add(statusBarNotification);
                }
            }
        }
        return arrayList;
    }

    public static void d(PushMessage pushMessage, NotificationManager notificationManager) {
        int i;
        List listC;
        if (pushMessage == null || notificationManager == null) {
            return;
        }
        try {
            i = Integer.parseInt(pushMessage.groupMaxCount);
        } catch (Exception unused) {
            i = 0;
        }
        if (i <= 0 || (listC = c(pushMessage.groupId, notificationManager)) == null || listC.size() < i) {
            return;
        }
        int size = listC.size() - i;
        m(listC);
        for (int i2 = 0; i2 <= size; i2++) {
            try {
                notificationManager.cancel(((StatusBarNotification) listC.get((listC.size() - 1) - i2)).getId());
            } catch (Exception e) {
                PushLogUtils.LOG.i("handle max limit message fail, e:" + e.getMessage());
            }
        }
    }

    public static boolean e() {
        return xj1.a() != null && Settings.Global.getInt(xj1.a().getContentResolver(), "auto_time", 0) == 1;
    }

    public static void f() {
        try {
            boolean zO = PushUtils.o();
            if (!PushRepository.getInstance().isReported() || zO) {
                if (zO) {
                    PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_IS_REPORT_DETAIL, Boolean.TRUE);
                    PushLogUtils.LOG.g("appVersion changed, force syncActive on init");
                }
                PushRepository.getInstance().syncActive();
                PushLogUtils.LOG.g(" active reporting");
            }
        } catch (Exception e) {
            PushLogUtils.LOG.i("handle sync active exception,e:" + e.getMessage());
        }
    }

    public static void g(Intent intent) {
        if (intent == null) {
        }
        String stringExtra = intent.getStringExtra(PushConstants.EXTRA_PUSH_SERVICE_TYPE);
        PushLogUtils.LOG.g("PushJobIntentService ---> onHandleWork, type:" + stringExtra);
        if (stringExtra == null) {
            return;
        }
        switch (stringExtra) {
            case "sync_config":
                i(intent);
                break;
            case "init":
                break;
            case "token":
                k(intent);
                break;
            case "force_update":
                f();
                break;
            case "message":
                j(intent);
                break;
            default:
                PushLogUtils.LOG.z("service type error");
                break;
        }
    }

    public static void h() {
        Tracker.getInstance().trackActiveSyncProcess();
        PushLogUtils.LOG.g("onHandleSyncActive");
        if (PushUtils.q()) {
            PushLogUtils.LOG.g("onHandleSyncActive force update");
            f();
            return;
        }
        try {
            if (PushUtils.s()) {
                PushLogUtils.LOG.g("tpms sync");
                if (sj8.b(xj1.a())) {
                    sj8.c(xj1.a());
                    PushRepository.getInstance().saveTpmsReportTime(System.currentTimeMillis() + 86400000);
                }
            }
            if (!PushUtils.r() || sj8.b(xj1.a())) {
                return;
            }
            PushRepository.getInstance().syncActive();
        } catch (Exception e) {
            PushLogUtils.LOG.i("handle sync active exception,e:" + e.getMessage());
        }
    }

    public static void i(Intent intent) {
        if (intent == null) {
            return;
        }
        h();
    }

    public static void j(Intent intent) {
        PushLogUtils.LOG.g("onHandleTargetMessage--->");
        if (intent == null) {
            Tracker.getInstance().trackHandleMsgErrorInfoeye(0L, "intent_null");
            PushLogUtils.LOG.g("onHandleTargetMessage---> intent is null");
            return;
        }
        PushMessage pushMessageI = PushUtils.i(intent);
        if (pushMessageI == null) {
            Tracker.getInstance().trackHandleMsgErrorInfoeye(0L, "msg_null");
            PushLogUtils.LOG.g("onHandleTargetMessage---> message is null");
            return;
        }
        if (lk8.h()) {
            Tracker.getInstance().trackHandleMsgErrorInfoeye(pushMessageI.messageId, "self_destroy");
            PushLogUtils.LOG.z("push self-destroying");
            return;
        }
        if (!PushUtils.a(pushMessageI, 1)) {
            Tracker.getInstance().trackHandleMsgErrorInfoeye(pushMessageI.messageId, "check_fail");
            PushLogUtils.LOG.g("onHandleTargetMessage---> checkMessage return ");
            return;
        }
        if (PushUtils.v(pushMessageI)) {
            Tracker.getInstance().trackHandleMsgErrorInfoeye(pushMessageI.messageId, "msg_retreat");
            PushLogUtils.LOG.g("onHandleTargetMessage---> retraceMessage return, retrace msgId:" + pushMessageI.retraceMsgId);
            return;
        }
        PushUtils.B(pushMessageI);
        Tracker.getInstance().trackTarget(pushMessageI.messageId, pushMessageI.type, pushMessageI.timeStamp, pushMessageI.rpkg, "success", pushMessageI);
        if (PushConstants.MSG_NOT_DISPLAY.equals(pushMessageI.customDisplay)) {
            PushLogUtils.LOG.g("onHandleTargetMessage---> customDisplay is NOT_DISPLAY, skip display");
            return;
        }
        PushUtils.A(pushMessageI.messageId);
        PushLogUtils.LOG.g("onHandleTargetMessage---> type:" + pushMessageI.type);
        int i = pushMessageI.type;
        if ((i != 1 && i != 5 && i != 6) || pushMessageI.eventType <= 0) {
            b(pushMessageI);
            return;
        }
        ee3.c().a(pushMessageI);
        PushLogUtils.LOG.g("event message stored, eventType:" + pushMessageI.eventType + ", msgId:" + pushMessageI.messageId);
    }

    public static void k(Intent intent) {
        Tracker.getInstance().trackTokenUpdateProcess(TtmlNode.START);
        if (intent == null) {
            return;
        }
        String stringExtra = intent.getStringExtra(PushConstants.EXTRA_TOKEN);
        if (TextUtils.isEmpty(stringExtra)) {
            PushLogUtils.LOG.z("Initialize token to empty");
            return;
        }
        try {
            if (xj1.a() == null) {
                return;
            }
            synchronized (a) {
                try {
                    Log.d(PushLogUtils.TAG, "Initialize push_token， packageName:" + la2.f() + ", token：" + stringExtra);
                    if (stringExtra.equals((String) PushRepository.getInstance().getSpValue(PushConstants.SP_KEY_FCM_TOKEN, "")) && !TextUtils.isEmpty((CharSequence) PushRepository.getInstance().getSpValue(PushConstants.SP_KEY_CLIENT_ID, ""))) {
                        Tracker.getInstance().trackTokenUpdateProcess("same");
                        PushLogUtils.LOG.g("token does not need to report without modification");
                        PushUtils.y();
                        sg9.e(PushConstants.SP_FILENAME).q(PushConstants.SP_KEY_UPDATE_TOKEN_TIME, System.currentTimeMillis());
                        return;
                    }
                    Tracker.getInstance().trackTokenUpdateProcess("update");
                    PushLogUtils.LOG.g("token updated, do network request");
                    try {
                        sg9.e(PushConstants.SP_FILENAME).q(PushConstants.SP_KEY_UPDATE_TOKEN_TIME, System.currentTimeMillis());
                    } catch (Exception unused) {
                    }
                    PushRepository.getInstance().updateNewToken(stringExtra);
                    f();
                    try {
                        sj8.b(xj1.a());
                    } catch (Exception unused2) {
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Exception unused3) {
        }
    }

    public static void l(PushMessage pushMessage, HashMap map) {
        PushLogUtils.LOG.g("display messages，message：" + pushMessage);
        if (pushMessage == null) {
            return;
        }
        try {
            nk8.g(pushMessage, map);
        } catch (Exception e) {
            PushLogUtils.LOG.i("Notification show exception:" + e.getMessage());
        }
    }

    public static void m(List list) {
        Collections.sort(list, new Comparator<StatusBarNotification>() {
            @Override
            public int compare(StatusBarNotification statusBarNotification, StatusBarNotification statusBarNotification2) {
                return (int) (statusBarNotification2.getPostTime() - statusBarNotification.getPostTime());
            }
        });
    }

    public static synchronized void n(PushMessage pushMessage) {
        try {
            try {
                if (TextUtils.isEmpty(pushMessage.packageName)) {
                    pushMessage.packageName = hf.a();
                }
                if (pushMessage.packageName.equals(hf.a())) {
                    if (PushManager.getInstance().getPushListener() != null) {
                        PushManager.getInstance().getPushListener().onMessageReceive(pushMessage.messageId, pushMessage.transData, pushMessage.priority);
                    } else {
                        Log.e(PushLogUtils.TAG, "tpush listener is not registered");
                    }
                }
            } catch (Exception e) {
                PushLogUtils.LOG.i("transmitMessage---> e:" + e.getMessage());
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
