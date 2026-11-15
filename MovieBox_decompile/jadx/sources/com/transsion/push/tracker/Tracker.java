package com.transsion.push.tracker;

import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.b;
import com.transsion.api.gateway.utils.SafeStringUtils;
import com.transsion.core.utils.a;
import com.transsion.push.PushConstants;
import com.transsion.push.bean.PushMessage;
import com.transsion.push.config.PushRepository;
import com.transsion.push.utils.PushUtils;
import java.util.HashMap;

public final class Tracker {

    private static Tracker f48885c;

    private static HashMap f48886d = new HashMap();

    private static HashMap f48887e = new HashMap();

    private String f48888a;

    private String f48889b;

    private Tracker() {
        try {
            this.f48888a = a.a();
            this.f48889b = a.c();
        } catch (Exception unused) {
        }
        f48886d.put(IntegrationConstants.NAVIGATION_BAR_ALL_ACTION, 0);
        f48886d.put(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, 1);
        f48886d.put("fail", 2);
        f48887e.put(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, 3);
        f48887e.put("handled", 4);
    }

    private void a(Bundle bundle, PushMessage pushMessage) {
        if (pushMessage != null) {
            bundle.putInt("head_up", c(pushMessage) ? 1 : 0);
            bundle.putString("material_id", pushMessage.materialId);
            bundle.putString("seq", pushMessage.seq);
            bundle.putString("sourceType", pushMessage.sourceType);
            bundle.putString("scheduleDate", pushMessage.scheduleDate);
            bundle.putString("tag", pushMessage.tag);
        }
    }

    private Bundle b() {
        Bundle bundle = new Bundle();
        bundle.putString(PushConstants.PROVIDER_FIELD_PKG, this.f48888a);
        bundle.putString("ver", this.f48889b);
        bundle.putString(OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_SDK, "2.0.2.01");
        bundle.putString(SafeStringUtils.SP_APPID, PushUtils.e());
        return bundle;
    }

    private boolean c(PushMessage pushMessage) {
        return (pushMessage == null || TextUtils.isEmpty(pushMessage.floatNotice) || !pushMessage.floatNotice.equals("1")) ? false : true;
    }

    public static Tracker getInstance() {
        if (f48885c == null) {
            f48885c = new Tracker();
        }
        return f48885c;
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

    public void trackClick(long j10) {
        trackClick(j10, PushUtils.m(j10));
        PushUtils.b(j10);
    }

    public void trackConfig(int i10, int i11) {
        Bundle bundleB = b();
        bundleB.putInt("cfgv", i10);
        bundleB.putInt("cfgt", i11);
        AthenaTracker athenaTracker = AthenaTracker.getInstance();
        KEY key = KEY.ATHENA_TID_FOR_APP_CFG;
        athenaTracker.e(key, bundleB);
        FirebaseTracker.getInstance().a(key, bundleB);
    }

    public void trackConversion(long j10) {
        Bundle bundleB = b();
        bundleB.putLong("id", j10);
        AthenaTracker athenaTracker = AthenaTracker.getInstance();
        KEY key = KEY.ATHENA_TID_FOR_APP_CONVERSION;
        athenaTracker.e(key, bundleB);
        FirebaseTracker.getInstance().a(key, bundleB);
    }

    public void trackHandleMsgErrorInfoeye(long j10, String str) {
    }

    public void trackImg(String str, int i10) {
        Bundle bundleB = b();
        bundleB.putString("url", str);
        bundleB.putInt("result", i10);
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

    public void trackMessage(long j10, int i10, String str, String str2, int i11) {
        Bundle bundleB = b();
        bundleB.putLong("id", j10);
        bundleB.putLong(NativeComponentConstants.KEY_COMPONENT_TYPE, i10);
        bundleB.putLong(b.JSON_KEY_DO, i11);
        bundleB.putString("pts", str);
        bundleB.putString("result", str2);
        AthenaTracker athenaTracker = AthenaTracker.getInstance();
        KEY key = KEY.ATHENA_TID_FOR_APP_MSG;
        athenaTracker.e(key, bundleB);
        FirebaseTracker.getInstance().a(key, bundleB);
    }

    public void trackReport() {
        Bundle bundleB = b();
        bundleB.putString(PushConstants.PROVIDER_FIELD_PKG, this.f48888a);
        bundleB.putString("ver", this.f48889b);
        bundleB.putString(OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_SDK, "2.0.2.01");
        AthenaTracker athenaTracker = AthenaTracker.getInstance();
        KEY key = KEY.ATHENA_TID_FOR_APP_REPORT;
        athenaTracker.e(key, bundleB);
        FirebaseTracker.getInstance().a(key, bundleB);
        try {
            PushTracker.getInstance().i(key, null);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void trackShow(long j10, int i10, String str, boolean z10, int i11) {
        trackShow(j10, i10, str, z10, i11, PushUtils.m(j10));
    }

    public void trackTarget(long j10, int i10, String str, String str2, String str3) {
        Bundle bundleB = b();
        bundleB.putLong("id", j10);
        bundleB.putLong(NativeComponentConstants.KEY_COMPONENT_TYPE, i10);
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

    public void trackTrace(int i10, String str) {
        Bundle bundleB = b();
        bundleB.putInt(NativeComponentConstants.KEY_COMPONENT_TYPE, i10);
        bundleB.putInt("osV", Build.VERSION.SDK_INT);
        bundleB.putString("data", str);
        AthenaTracker athenaTracker = AthenaTracker.getInstance();
        KEY key = KEY.ATHENA_TID_FOR_APP_TRACE;
        athenaTracker.e(key, bundleB);
        FirebaseTracker.getInstance().a(key, bundleB);
    }

    public void trackTrigger(int i10) {
        Bundle bundleB = b();
        bundleB.putInt("reason", i10);
        AthenaTracker athenaTracker = AthenaTracker.getInstance();
        KEY key = KEY.ATHENA_TID_FOR_APP_TRIG;
        athenaTracker.e(key, bundleB);
        FirebaseTracker.getInstance().a(key, bundleB);
    }

    public void trackUninstall(long j10, String str) {
        Bundle bundleB = b();
        bundleB.putLong("id", j10);
        bundleB.putString("tpkg", str);
        AthenaTracker athenaTracker = AthenaTracker.getInstance();
        KEY key = KEY.ATHENA_TID_FOR_APP_UNINSTALL;
        athenaTracker.e(key, bundleB);
        FirebaseTracker.getInstance().a(key, bundleB);
    }

    public void tracks() {
        PushTracker.getInstance().tracks();
    }

    public void trackShow(long j10, int i10, String str, boolean z10, int i11, PushMessage pushMessage) {
        Bundle bundleB = b();
        bundleB.putLong("id", j10);
        bundleB.putInt(NativeComponentConstants.KEY_COMPONENT_TYPE, i10);
        bundleB.putBoolean("able", z10);
        bundleB.putString("pts", str);
        bundleB.putInt(NotificationCompat.CATEGORY_STATUS, i11);
        bundleB.putInt(TrackingKey.SHOW_STATUS, i11);
        a(bundleB, pushMessage);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("trackShow, message is :  ");
        sb2.append(pushMessage);
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
        ATHENA_TID_FOR_APP_CLICK(10410009, "click", "hipush_click"),
        ATHENA_TID_FOR_APP_IMG_DOWNLOAD(10410010, "img"),
        ATHENA_TID_FOR_APP_TRACE(10410011, "trace"),
        ATHENA_TID_FOR_APP_UNINSTALL(10410012, "uninstall"),
        ATHENA_TID_FOR_APP_CONVERSION(10410013, PushConstants.PUSH_SERVICE_TYPE_CONVERSION),
        ATHENA_TID_FOR_APP_INSTALL(10410014, "install");

        public String event;
        public String infoeyeEvent;
        public int tid;

        KEY(int i10, String str) {
            this.event = str;
            this.tid = i10;
        }

        KEY(int i10, String str, String str2) {
            this.event = str;
            this.tid = i10;
            this.infoeyeEvent = str2;
        }
    }

    public void trackClick(long j10, PushMessage pushMessage) {
        Bundle bundleB = b();
        bundleB.putLong("id", j10);
        a(bundleB, pushMessage);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("trackClick, message is :  ");
        sb2.append(pushMessage);
        AthenaTracker.getInstance().e(KEY.ATHENA_TID_FOR_APP_CLICK, bundleB);
    }

    public void trackTarget(long j10, int i10, String str, String str2, String str3, PushMessage pushMessage) {
        Bundle bundleB = b();
        bundleB.putLong("id", j10);
        bundleB.putLong(NativeComponentConstants.KEY_COMPONENT_TYPE, i10);
        bundleB.putString("pts", str);
        bundleB.putString("rpkg", str2);
        bundleB.putString("result", str3);
        a(bundleB, pushMessage);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("trackTarget, message is :  ");
        sb2.append(pushMessage);
        AthenaTracker athenaTracker = AthenaTracker.getInstance();
        KEY key = KEY.ATHENA_TID_FOR_APP_TARGET;
        athenaTracker.e(key, bundleB);
        FirebaseTracker.getInstance().a(key, bundleB);
    }
}
