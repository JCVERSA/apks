package com.transsion.push.tracker;

import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.hisavana.common.tracking.TrackingKey;
import com.lzy.okgo.model.Progress;
import com.transsion.push.PushConstants;
import com.transsion.push.bean.PushMessage;
import com.transsion.push.config.PushRepository;
import com.transsion.push.utils.PushLogUtils;
import com.transsion.push.utils.PushUtils;
import defpackage.hf;
import java.util.HashMap;

public final class Tracker {
    public static Tracker c;
    public static HashMap d = new HashMap();
    public static HashMap e = new HashMap();
    public String a;
    public String b;

    public Tracker() {
        try {
            this.a = hf.a();
            this.b = hf.c();
        } catch (Exception unused) {
        }
        d.put(TtmlNode.COMBINE_ALL, 0);
        d.put("success", 1);
        d.put("fail", 2);
        e.put("success", 3);
        e.put("handled", 4);
    }

    public static Tracker getInstance() {
        if (c == null) {
            c = new Tracker();
        }
        return c;
    }

    public final void a(Bundle bundle, PushMessage pushMessage) {
        if (pushMessage != null) {
            bundle.putInt("head_up", c(pushMessage) ? 1 : 0);
            bundle.putString("material_id", pushMessage.materialId);
            bundle.putString("seq", pushMessage.seq);
            bundle.putString("sourceType", pushMessage.sourceType);
            bundle.putString("scheduleDate", pushMessage.scheduleDate);
            bundle.putString(Progress.TAG, pushMessage.tag);
        }
    }

    public final Bundle b() {
        Bundle bundle = new Bundle();
        bundle.putString(PushConstants.PROVIDER_FIELD_PKG, this.a);
        bundle.putString("ver", this.b);
        bundle.putString("sdk", "2.0.5.02");
        bundle.putString("appid", PushUtils.e());
        return bundle;
    }

    public final boolean c(PushMessage pushMessage) {
        return (pushMessage == null || TextUtils.isEmpty(pushMessage.floatNotice) || !pushMessage.floatNotice.equals("1")) ? false : true;
    }

    public void init() {
        AthenaTracker.getInstance().b();
    }

    public void trackActiveSyncInit() {
    }

    public void trackActiveSyncProcess() {
    }

    public void trackBroadcastGcmInfoeye() {
    }

    public void trackBroadcastInfoeye() {
    }

    public void trackClick(long j) {
        trackClick(j, PushUtils.m(j));
        PushUtils.b(j);
    }

    public void trackConfig(int i, int i2) {
        Bundle bundleB = b();
        bundleB.putInt("cfgv", i);
        bundleB.putInt("cfgt", i2);
        AthenaTracker athenaTracker = AthenaTracker.getInstance();
        KEY key = KEY.ATHENA_TID_FOR_APP_CFG;
        athenaTracker.e(key, bundleB);
        FirebaseTracker.getInstance().a(key, bundleB);
    }

    public void trackConversion(long j) {
        Bundle bundleB = b();
        bundleB.putLong(TtmlNode.ATTR_ID, j);
        AthenaTracker athenaTracker = AthenaTracker.getInstance();
        KEY key = KEY.ATHENA_TID_FOR_APP_CONVERSION;
        athenaTracker.e(key, bundleB);
        FirebaseTracker.getInstance().a(key, bundleB);
    }

    public void trackHandleMsgErrorInfoeye(long j, String str) {
    }

    public void trackImg(String str, int i) {
        Bundle bundleB = b();
        bundleB.putString("url", str);
        bundleB.putInt("result", i);
        AthenaTracker athenaTracker = AthenaTracker.getInstance();
        KEY key = KEY.ATHENA_TID_FOR_APP_IMG_DOWNLOAD;
        athenaTracker.e(key, bundleB);
        FirebaseTracker.getInstance().a(key, bundleB);
    }

    public void trackInit() {
        if (((Boolean) PushRepository.getInstance().getSpValue("init", Boolean.FALSE)).booleanValue()) {
            return;
        }
        Bundle bundleB = b();
        AthenaTracker athenaTracker = AthenaTracker.getInstance();
        KEY key = KEY.ATHENA_TID_FOR_APP_INIT;
        athenaTracker.e(key, bundleB);
        FirebaseTracker.getInstance().a(key, bundleB);
        PushRepository.getInstance().putSpValue("init", Boolean.TRUE);
    }

    public void trackInstall() {
        if (((Boolean) PushRepository.getInstance().getSpValue(PushConstants.SP_KEY_TRACK_INSTALL, Boolean.FALSE)).booleanValue()) {
            return;
        }
        PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_TRACK_INSTALL, Boolean.TRUE);
        PushTracker.getInstance().i(KEY.ATHENA_TID_FOR_APP_INSTALL, null);
    }

    public void trackMessage(long j, int i, String str, String str2, int i2) {
        Bundle bundleB = b();
        bundleB.putLong(TtmlNode.ATTR_ID, j);
        bundleB.putLong("type", i);
        bundleB.putLong("do", i2);
        bundleB.putString("pts", str);
        bundleB.putString("result", str2);
        AthenaTracker athenaTracker = AthenaTracker.getInstance();
        KEY key = KEY.ATHENA_TID_FOR_APP_MSG;
        athenaTracker.e(key, bundleB);
        FirebaseTracker.getInstance().a(key, bundleB);
    }

    public void trackReport() {
        Bundle bundleB = b();
        bundleB.putString(PushConstants.PROVIDER_FIELD_PKG, this.a);
        bundleB.putString("ver", this.b);
        bundleB.putString("sdk", "2.0.5.02");
        AthenaTracker athenaTracker = AthenaTracker.getInstance();
        KEY key = KEY.ATHENA_TID_FOR_APP_REPORT;
        athenaTracker.e(key, bundleB);
        FirebaseTracker.getInstance().a(key, bundleB);
        try {
            PushTracker.getInstance().i(key, null);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void trackShow(long j, int i, String str, boolean z, int i2) {
        trackShow(j, i, str, z, i2, PushUtils.m(j));
    }

    public void trackTarget(long j, int i, String str, String str2, String str3) {
        Bundle bundleB = b();
        bundleB.putLong(TtmlNode.ATTR_ID, j);
        bundleB.putLong("type", i);
        bundleB.putString("pts", str);
        bundleB.putString("rpkg", str2);
        bundleB.putString("result", str3);
        AthenaTracker athenaTracker = AthenaTracker.getInstance();
        KEY key = KEY.ATHENA_TID_FOR_APP_TARGET;
        athenaTracker.e(key, bundleB);
        FirebaseTracker.getInstance().a(key, bundleB);
    }

    public void trackToken(String str) {
        if (TextUtils.isEmpty(str)) {
            str = "";
        } else if (str.length() > 8) {
            str = str.substring(0, 8);
        }
        Bundle bundleB = b();
        bundleB.putString("token", str);
        AthenaTracker athenaTracker = AthenaTracker.getInstance();
        KEY key = KEY.ATHENA_TID_FOR_APP_TOKEN;
        athenaTracker.e(key, bundleB);
        FirebaseTracker.getInstance().a(key, bundleB);
    }

    public void trackTokenUpdateInit() {
    }

    public void trackTokenUpdateProcess(String str) {
    }

    public void trackTrace(int i, String str) {
        Bundle bundleB = b();
        bundleB.putInt("type", i);
        bundleB.putInt("osV", Build.VERSION.SDK_INT);
        bundleB.putString("data", str);
        AthenaTracker athenaTracker = AthenaTracker.getInstance();
        KEY key = KEY.ATHENA_TID_FOR_APP_TRACE;
        athenaTracker.e(key, bundleB);
        FirebaseTracker.getInstance().a(key, bundleB);
    }

    public void trackTrigger(int i) {
        Bundle bundleB = b();
        bundleB.putInt("reason", i);
        AthenaTracker athenaTracker = AthenaTracker.getInstance();
        KEY key = KEY.ATHENA_TID_FOR_APP_TRIG;
        athenaTracker.e(key, bundleB);
        FirebaseTracker.getInstance().a(key, bundleB);
    }

    public void trackUninstall(long j, String str) {
        Bundle bundleB = b();
        bundleB.putLong(TtmlNode.ATTR_ID, j);
        bundleB.putString("tpkg", str);
        AthenaTracker athenaTracker = AthenaTracker.getInstance();
        KEY key = KEY.ATHENA_TID_FOR_APP_UNINSTALL;
        athenaTracker.e(key, bundleB);
        FirebaseTracker.getInstance().a(key, bundleB);
    }

    public void tracks() {
        PushTracker.getInstance().tracks();
    }

    public void trackShow(long j, int i, String str, boolean z, int i2, PushMessage pushMessage) {
        Bundle bundleB = b();
        bundleB.putLong(TtmlNode.ATTR_ID, j);
        bundleB.putInt("type", i);
        bundleB.putBoolean("able", z);
        bundleB.putString("pts", str);
        bundleB.putInt("status", i2);
        bundleB.putInt(TrackingKey.SHOW_STATUS, i2);
        a(bundleB, pushMessage);
        Log.d(PushLogUtils.TAG, "trackShow, message is :  " + pushMessage);
        AthenaTracker.getInstance().e(KEY.ATHENA_TID_FOR_APP_SHOW, bundleB);
    }

    public enum KEY {
        INFOEYE_FOR_BROADCAST(0, "infoeye", "hipush_broadcast"),
        INFOEYE_FOR_BROADCAST_GCM(0, "infoeye", "hipush_broadcast_gcm"),
        INFOEYE_FOR_REACH_ERROR(0, "infoeye", "hipush_reach_error"),
        INFOEYE_FOR_TOKEN_INIT(0, "infoeye", "hipush_token_init"),
        INFOEYE_FOR_TOKEN_PROCESS(0, "infoeye", "hipush_token_process"),
        INFOEYE_FOR_SYNC_INIT(0, "infoeye", "hipush_sync_init"),
        INFOEYE_FOR_SYNC_PROCESS(0, "infoeye", "hipush_sync_process"),
        ATHENA_TID_FOR_APP_INIT(10410001, "init"),
        ATHENA_TID_FOR_APP_TOKEN(10410002, "token"),
        ATHENA_TID_FOR_APP_TRIG(10410003, "trig"),
        ATHENA_TID_FOR_APP_REPORT(10410004, "report"),
        ATHENA_TID_FOR_APP_CFG(10410005, "cfg"),
        ATHENA_TID_FOR_APP_MSG(10410006, NotificationCompat.CATEGORY_MESSAGE, "hipush_reach_init"),
        ATHENA_TID_FOR_APP_TARGET(10410007, PushConstants.PUSH_SERVICE_TYPE_ARRIVE, "hipush_reach_process"),
        ATHENA_TID_FOR_APP_SHOW(10410008, PushConstants.PUSH_SERVICE_TYPE_SHOW, "hipush_show"),
        ATHENA_TID_FOR_APP_CLICK(10410009, PushConstants.PUSH_SERVICE_TYPE_CLICK, "hipush_click"),
        ATHENA_TID_FOR_APP_IMG_DOWNLOAD(10410010, "img"),
        ATHENA_TID_FOR_APP_TRACE(10410011, "trace"),
        ATHENA_TID_FOR_APP_UNINSTALL(10410012, "uninstall"),
        ATHENA_TID_FOR_APP_CONVERSION(10410013, PushConstants.PUSH_SERVICE_TYPE_CONVERSION),
        ATHENA_TID_FOR_APP_INSTALL(10410014, "install");

        public String event;
        public String infoeyeEvent;
        public int tid;

        KEY(int i, String str) {
            this.event = str;
            this.tid = i;
        }

        KEY(int i, String str, String str2) {
            this.event = str;
            this.tid = i;
            this.infoeyeEvent = str2;
        }
    }

    public void trackClick(long j, PushMessage pushMessage) {
        Bundle bundleB = b();
        bundleB.putLong(TtmlNode.ATTR_ID, j);
        a(bundleB, pushMessage);
        Log.d(PushLogUtils.TAG, "trackClick, message is :  " + pushMessage);
        AthenaTracker.getInstance().e(KEY.ATHENA_TID_FOR_APP_CLICK, bundleB);
    }

    public void trackTarget(long j, int i, String str, String str2, String str3, PushMessage pushMessage) {
        Bundle bundleB = b();
        bundleB.putLong(TtmlNode.ATTR_ID, j);
        bundleB.putLong("type", i);
        bundleB.putString("pts", str);
        bundleB.putString("rpkg", str2);
        bundleB.putString("result", str3);
        a(bundleB, pushMessage);
        Log.d(PushLogUtils.TAG, "trackTarget, message is :  " + pushMessage);
        AthenaTracker athenaTracker = AthenaTracker.getInstance();
        KEY key = KEY.ATHENA_TID_FOR_APP_TARGET;
        athenaTracker.e(key, bundleB);
        FirebaseTracker.getInstance().a(key, bundleB);
    }
}
