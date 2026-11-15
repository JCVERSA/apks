package com.transsion.push.service;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Intent;
import android.os.Bundle;
import android.provider.Settings;
import android.service.notification.StatusBarNotification;
import android.text.TextUtils;
import android.util.Log;
import androidx.datastore.preferences.protobuf.DescriptorProtos$Edition;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.transsion.core.utils.f;
import com.transsion.push.PushConstants;
import com.transsion.push.PushManager;
import com.transsion.push.bean.PushMessage;
import com.transsion.push.config.PushRepository;
import com.transsion.push.tracker.Tracker;
import com.transsion.push.utils.BitmapDownloadUtils;
import com.transsion.push.utils.PushLogUtils;
import com.transsion.push.utils.PushUtils;
import com.transsion.push.utils.d0;
import com.transsion.push.utils.g0;
import com.transsion.push.utils.k;
import com.transsion.push.utils.k0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;

public final class PushServiceHelper {

    private static final Object f48857a = new Object();

    class a implements BitmapDownloadUtils.a {
        a() {
        }

        @Override
        public void a(PushMessage pushMessage, HashMap map) {
            PushServiceHelper.k(pushMessage, map);
        }
    }

    private static List b(String str, NotificationManager notificationManager) {
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

    public static void c(PushMessage pushMessage, NotificationManager notificationManager) {
        int i10;
        List listB;
        if (pushMessage == null || notificationManager == null) {
            return;
        }
        try {
            i10 = Integer.parseInt(pushMessage.groupMaxCount);
        } catch (Exception unused) {
            i10 = 0;
        }
        if (i10 <= 0 || (listB = b(pushMessage.groupId, notificationManager)) == null || listB.size() < i10) {
            return;
        }
        int size = listB.size() - i10;
        l(listB);
        for (int i11 = 0; i11 <= size; i11++) {
            try {
                notificationManager.cancel(((StatusBarNotification) listB.get((listB.size() - 1) - i11)).getId());
            } catch (Exception e10) {
                PushLogUtils.LOG.i("handle max limit message fail, e:" + e10.getMessage());
            }
        }
    }

    public static boolean d() {
        return yj.a.a() != null && Settings.Global.getInt(yj.a.a().getContentResolver(), "auto_time", 0) == 1;
    }

    private static void e() {
        try {
            if (PushRepository.getInstance().isReported()) {
                return;
            }
            PushRepository.getInstance().syncActive();
            PushLogUtils.LOG.g(" active reporting");
        } catch (Exception e10) {
            PushLogUtils.LOG.i("handle sync active exception,e:" + e10.getMessage());
        }
    }

    public static void f(Intent intent) {
        if (intent == null) {
        }
        String stringExtra = intent.getStringExtra(PushConstants.EXTRA_PUSH_SERVICE_TYPE);
        PushLogUtils.LOG.g("PushJobIntentService ---> onHandleWork, type:" + stringExtra);
        if (stringExtra == null) {
            return;
        }
        switch (stringExtra) {
            case "sync_config":
                h(intent);
                break;
            case "init":
                break;
            case "token":
                j(intent);
                break;
            case "force_update":
                e();
                break;
            case "message":
                i(intent);
                break;
            default:
                PushLogUtils.LOG.z("service type error");
                break;
        }
    }

    private static void g() {
        Tracker.getInstance().trackActiveSyncProcess();
        PushLogUtils.LOG.g("onHandleSyncActive");
        if (PushUtils.p()) {
            PushLogUtils.LOG.g("onHandleSyncActive force update");
            e();
            return;
        }
        try {
            if (PushUtils.r()) {
                PushLogUtils.LOG.g("tpms sync");
                if (d0.b(yj.a.a())) {
                    d0.c(yj.a.a());
                    PushRepository.getInstance().saveTpmsReportTime(System.currentTimeMillis() + 86400000);
                }
            }
            if (!PushUtils.q() || d0.b(yj.a.a())) {
                return;
            }
            PushRepository.getInstance().syncActive();
        } catch (Exception e10) {
            PushLogUtils.LOG.i("handle sync active exception,e:" + e10.getMessage());
        }
    }

    private static void h(Intent intent) {
        if (intent == null) {
            return;
        }
        g();
    }

    private static void i(Intent intent) {
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
        if (g0.h()) {
            Tracker.getInstance().trackHandleMsgErrorInfoeye(pushMessageI.messageId, "self_destroy");
            PushLogUtils.LOG.z("push self-destroying");
            return;
        }
        if (!PushUtils.a(pushMessageI, 1)) {
            Tracker.getInstance().trackHandleMsgErrorInfoeye(pushMessageI.messageId, "check_fail");
            PushLogUtils.LOG.g("onHandleTargetMessage---> checkMessage return ");
            return;
        }
        if (PushUtils.u(pushMessageI)) {
            Tracker.getInstance().trackHandleMsgErrorInfoeye(pushMessageI.messageId, "msg_retreat");
            PushLogUtils.LOG.g("onHandleTargetMessage---> retraceMessage return, retrace msgId:" + pushMessageI.retraceMsgId);
            return;
        }
        PushUtils.z(pushMessageI);
        Tracker.getInstance().trackTarget(pushMessageI.messageId, pushMessageI.type, pushMessageI.timeStamp, pushMessageI.rpkg, NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, pushMessageI);
        PushUtils.y(pushMessageI.messageId);
        PushLogUtils.LOG.g("onHandleTargetMessage---> type:" + pushMessageI.type);
        int i10 = pushMessageI.type;
        if (i10 != 1) {
            if (i10 == 2) {
                m(pushMessageI);
                return;
            } else if (i10 != 5 && i10 != 6) {
                if (i10 != 7) {
                    PushLogUtils.LOG.z("Display message, message type is not supported");
                    return;
                }
                return;
            }
        }
        if (pushMessageI.sdkShow == 0) {
            PushLogUtils.LOG.g("sdkShow no show");
            if (PushManager.getInstance().getPushListener() != null) {
                PushManager.getInstance().getPushListener().onPushReceive(pushMessageI.messageId, pushMessageI, pushMessageI.priority);
            }
            Tracker.getInstance().trackHandleMsgErrorInfoeye(pushMessageI.messageId, "sdk_show_fail");
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            PushLogUtils.LOG.g("message ignoreExpire? " + pushMessageI.ignoreExpire);
            PushLogUtils.LOG.g("isTimeAutomatic: " + d());
            PushLogUtils.LOG.g("message schedule time: " + pushMessageI.getTimeStamp());
            PushLogUtils.LOG.g("message delay: " + (jCurrentTimeMillis - Long.parseLong(pushMessageI.getTimeStamp())));
            PushLogUtils.LOG.g("message ttl: " + (((long) pushMessageI.getMsgTtl()) * 1000));
            if (pushMessageI.ignoreExpire == 0) {
                PushLogUtils.LOG.g("message expiration check");
                if (d() && jCurrentTimeMillis - Long.parseLong(pushMessageI.getTimeStamp()) > ((long) pushMessageI.getMsgTtl()) * 1000) {
                    PushLogUtils.LOG.g("message expired, no show");
                    Tracker.getInstance().trackShow(pushMessageI.messageId, pushMessageI.type, pushMessageI.timeStamp, true, DescriptorProtos$Edition.EDITION_PROTO3_VALUE);
                    return;
                }
            }
        } catch (Exception unused) {
        }
        if (!PushManager.getInstance().getNotificationSwitch()) {
            Tracker.getInstance().trackHandleMsgErrorInfoeye(pushMessageI.messageId, "noti_off");
            PushLogUtils.LOG.g("notification switch is off, do not show noti");
        } else if (BitmapDownloadUtils.a(pushMessageI)) {
            BitmapDownloadUtils.b(pushMessageI, new a());
        } else {
            k(pushMessageI, null);
        }
    }

    private static void j(Intent intent) {
        Tracker.getInstance().trackTokenUpdateProcess("start");
        if (intent == null) {
            return;
        }
        String stringExtra = intent.getStringExtra(PushConstants.EXTRA_TOKEN);
        if (TextUtils.isEmpty(stringExtra)) {
            PushLogUtils.LOG.z("Initialize token to empty");
            return;
        }
        try {
            if (yj.a.a() == null) {
                return;
            }
            synchronized (f48857a) {
                try {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Initialize push_token， packageName:");
                    sb2.append(k.f());
                    sb2.append(", token：");
                    sb2.append(stringExtra);
                    if (stringExtra.equals((String) PushRepository.getInstance().getSpValue(PushConstants.SP_KEY_FCM_TOKEN, "")) && !TextUtils.isEmpty((CharSequence) PushRepository.getInstance().getSpValue(PushConstants.SP_KEY_CLIENT_ID, ""))) {
                        Tracker.getInstance().trackTokenUpdateProcess("same");
                        PushLogUtils.LOG.g("token does not need to report without modification");
                        PushUtils.w();
                        f.e(PushConstants.SP_FILENAME).o(PushConstants.SP_KEY_UPDATE_TOKEN_TIME, System.currentTimeMillis());
                        return;
                    }
                    Tracker.getInstance().trackTokenUpdateProcess("update");
                    PushLogUtils.LOG.g("token updated, do network request");
                    try {
                        f.e(PushConstants.SP_FILENAME).o(PushConstants.SP_KEY_UPDATE_TOKEN_TIME, System.currentTimeMillis());
                    } catch (Exception unused) {
                    }
                    PushRepository.getInstance().updateNewToken(stringExtra);
                    e();
                    try {
                        d0.b(yj.a.a());
                    } catch (Exception unused2) {
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        } catch (Exception unused3) {
        }
    }

    public static void k(PushMessage pushMessage, HashMap map) {
        PushLogUtils.LOG.g("display messages，message：" + pushMessage);
        if (pushMessage == null) {
            return;
        }
        try {
            k0.g(pushMessage, map);
        } catch (Exception e10) {
            PushLogUtils.LOG.i("Notification show exception:" + e10.getMessage());
        }
    }

    private static void l(List list) {
        Collections.sort(list, new Comparator<StatusBarNotification>() {
            @Override
            public int compare(StatusBarNotification statusBarNotification, StatusBarNotification statusBarNotification2) {
                return (int) (statusBarNotification2.getPostTime() - statusBarNotification.getPostTime());
            }
        });
    }

    private static synchronized void m(PushMessage pushMessage) {
        try {
            try {
                if (TextUtils.isEmpty(pushMessage.packageName)) {
                    pushMessage.packageName = com.transsion.core.utils.a.a();
                }
                if (pushMessage.packageName.equals(com.transsion.core.utils.a.a())) {
                    if (PushManager.getInstance().getPushListener() != null) {
                        PushManager.getInstance().getPushListener().onMessageReceive(pushMessage.messageId, pushMessage.transData, pushMessage.priority);
                    } else {
                        Log.e(PushLogUtils.TAG, "tpush listener is not registered");
                    }
                }
            } catch (Exception e10) {
                PushLogUtils.LOG.i("transmitMessage---> e:" + e10.getMessage());
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
