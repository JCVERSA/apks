package com.transsion.push.utils;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.transsion.push.PushConstants;
import com.transsion.push.PushManager;
import com.transsion.push.bean.PushConfig;
import com.transsion.push.bean.PushMessage;
import com.transsion.push.config.PushRepository;
import com.transsion.push.tracker.Tracker;
import defpackage.l27;
import defpackage.lk8;
import defpackage.qab;
import defpackage.sg9;
import defpackage.xj1;
import defpackage.ylc;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

public abstract class PushUtils {
    public static final List a = new ArrayList();
    public static AtomicBoolean b = new AtomicBoolean(false);
    public static Map c = new LinkedHashMap<Long, PushMessage>(16, 0.75f, false) {
        @Override
        public boolean removeEldestEntry(Map.Entry<Long, PushMessage> entry) {
            return size() > 100;
        }
    };

    public static void A(long j) {
        String strJ = sg9.e(PushConstants.SP_FILENAME).j(PushConstants.SP_KEY_PUSHUI_MESSAGE_IDS);
        if (strJ.contains(String.valueOf(j))) {
            return;
        }
        String strSubstring = strJ + " " + j;
        if (strSubstring.length() > 1024) {
            strSubstring = strSubstring.substring(256);
        }
        try {
            sg9.e(PushConstants.SP_FILENAME).r(PushConstants.SP_KEY_PUSHUI_MESSAGE_IDS, strSubstring);
        } catch (Exception unused) {
        }
    }

    public static void B(PushMessage pushMessage) {
        c.put(Long.valueOf(pushMessage.getMessageId()), pushMessage);
    }

    public static void C(long j) {
        String strJ = sg9.e(PushConstants.SP_FILENAME).j(PushConstants.SP_KEY_PUSHUI_RETRACE_MESSAGE_IDS);
        if (strJ.contains(String.valueOf(j))) {
            return;
        }
        String strSubstring = strJ + " " + j;
        if (strSubstring.length() > 1024) {
            strSubstring = strSubstring.substring(256);
        }
        try {
            sg9.e(PushConstants.SP_FILENAME).r(PushConstants.SP_KEY_PUSHUI_RETRACE_MESSAGE_IDS, strSubstring);
        } catch (Exception unused) {
        }
    }

    public static void D(String str) {
        try {
            Bundle bundle = new Bundle();
            bundle.putString(PushConstants.EXTRA_PUSH_SERVICE_TYPE, "token");
            bundle.putString(PushConstants.EXTRA_TOKEN, str);
            Tracker.getInstance().trackTokenUpdateInit();
            ServiceUtils.startJobThread(xj1.a(), bundle);
        } catch (Exception unused) {
        }
    }

    public static boolean a(PushMessage pushMessage, int i) {
        if (pushMessage == null) {
            PushLogUtils.LOG.z("Transparent page, empty message");
            return false;
        }
        int i2 = pushMessage.type;
        if (i2 != 1 && i2 != 5 && i2 != 2 && i2 != 6 && i2 != 7) {
            PushLogUtils.LOG.i("Message type is not supported");
            if (i == 0) {
                Tracker.getInstance().trackMessage(pushMessage.messageId, pushMessage.type, pushMessage.timeStamp, "fail", 4);
            } else {
                Tracker.getInstance().trackTarget(pushMessage.messageId, pushMessage.type, pushMessage.timeStamp, pushMessage.rpkg, "fail");
            }
            return false;
        }
        if (!k(pushMessage.messageId)) {
            if (i == 1 || ylc.a(pushMessage.packageName)) {
                return true;
            }
            PushLogUtils.LOG.z("Package Name No longer appMap");
            Tracker.getInstance().trackMessage(pushMessage.messageId, pushMessage.type, pushMessage.timeStamp, "fail", 1);
            return false;
        }
        if (i == 1 && !TextUtils.isEmpty(pushMessage.packageName) && !pushMessage.packageName.equals(pushMessage.rpkg)) {
            Tracker.getInstance().trackTarget(pushMessage.messageId, pushMessage.type, pushMessage.timeStamp, pushMessage.rpkg, "handled");
        }
        PushLogUtils.LOG.g("The message has been handled, msgId:" + pushMessage.messageId + ", rpkg:" + pushMessage.rpkg);
        return false;
    }

    public static void b(long j) {
        c.remove(Long.valueOf(j));
    }

    public static Bitmap c(PackageManager packageManager, String str) {
        return d(packageManager, str);
    }

    public static Bitmap d(PackageManager packageManager, String str) {
        try {
            Drawable applicationIcon = packageManager.getApplicationIcon(str);
            if (applicationIcon instanceof BitmapDrawable) {
                return ((BitmapDrawable) applicationIcon).getBitmap();
            }
            if (!(applicationIcon instanceof AdaptiveIconDrawable)) {
                return null;
            }
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{((AdaptiveIconDrawable) applicationIcon).getBackground(), ((AdaptiveIconDrawable) applicationIcon).getForeground()});
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(layerDrawable.getIntrinsicWidth(), layerDrawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            layerDrawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            layerDrawable.draw(canvas);
            return bitmapCreateBitmap;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String e() {
        String string = (String) PushRepository.getInstance().getSpValue(PushConstants.SP_KEY_APP_ID, "");
        if (!TextUtils.isEmpty(string)) {
            return string;
        }
        try {
            string = xj1.a().getPackageManager().getApplicationInfo(xj1.a().getPackageName(), 128).metaData.getString(PushConstants.TPUSH_APP_ID);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        if (!TextUtils.isEmpty(string)) {
            PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_APP_ID, string);
        }
        return TextUtils.isEmpty(string) ? "" : string;
    }

    public static String f() {
        String string = (String) PushRepository.getInstance().getSpValue(PushConstants.SP_KEY_APP_KEY, "");
        if (!TextUtils.isEmpty(string)) {
            return string;
        }
        try {
            string = xj1.a().getPackageManager().getApplicationInfo(xj1.a().getPackageName(), 128).metaData.getString(PushConstants.TPUSH_APP_KEY);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (!TextUtils.isEmpty(string)) {
            PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_APP_KEY, string);
        }
        return TextUtils.isEmpty(string) ? "" : string;
    }

    public static Bitmap g(Context context, String str) {
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null) {
                return c(packageManager, str);
            }
        } catch (Exception e) {
            PushLogUtils.LOG.g("getApplicationIcon e" + e);
        }
        PushLogUtils.LOG.g("getApplicationIcon id error");
        return null;
    }

    public static String h(Context context, PushMessage pushMessage) {
        if (!TextUtils.isEmpty(pushMessage.appName)) {
            return pushMessage.appName;
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            return packageManager != null ? packageManager.getPackageInfo(pushMessage.packageName, 0).applicationInfo.loadLabel(packageManager).toString() : "";
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static PushMessage i(Intent intent) {
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

    public static boolean j(long j) {
        try {
            String strJ = sg9.e(PushConstants.SP_FILENAME).j(PushConstants.SP_KEY_PUSHUI_CLICK_MESSAGE_IDS);
            if (TextUtils.isEmpty(strJ)) {
                return false;
            }
            return strJ.contains(String.valueOf(j));
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean k(long j) {
        try {
            String strJ = sg9.e(PushConstants.SP_FILENAME).j(PushConstants.SP_KEY_PUSHUI_MESSAGE_IDS);
            if (TextUtils.isEmpty(strJ)) {
                return false;
            }
            return strJ.contains(String.valueOf(j));
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean l(long j) {
        try {
            String strJ = sg9.e(PushConstants.SP_FILENAME).j(PushConstants.SP_KEY_PUSHUI_RETRACE_MESSAGE_IDS);
            if (TextUtils.isEmpty(strJ)) {
                return false;
            }
            return strJ.contains(String.valueOf(j));
        } catch (Exception unused) {
            return false;
        }
    }

    public static PushMessage m(long j) {
        return (PushMessage) c.getOrDefault(Long.valueOf(j), null);
    }

    public static void n() {
        boolean z;
        PackageManager.NameNotFoundException nameNotFoundException;
        String str;
        boolean z2;
        String string;
        String string2 = "";
        boolean z3 = false;
        try {
            ApplicationInfo applicationInfo = xj1.a().getPackageManager().getApplicationInfo(xj1.a().getPackageName(), 128);
            z2 = applicationInfo.metaData.getBoolean(PushConstants.TPUSH_OPEN_DEBUG);
            try {
                string = applicationInfo.metaData.getString(PushConstants.TPUSH_APP_ID);
                try {
                    string2 = applicationInfo.metaData.getString(PushConstants.TPUSH_APP_KEY);
                    z3 = applicationInfo.metaData.getBoolean(PushConstants.TPUSH_TEST_ENV);
                } catch (PackageManager.NameNotFoundException e) {
                    str = string2;
                    string2 = string;
                    z = z2;
                    nameNotFoundException = e;
                    nameNotFoundException.printStackTrace();
                    z2 = z;
                    string = string2;
                    string2 = str;
                }
            } catch (PackageManager.NameNotFoundException e2) {
                e = e2;
                z = z2;
                nameNotFoundException = e;
                str = "";
                nameNotFoundException.printStackTrace();
                z2 = z;
                string = string2;
                string2 = str;
                PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_APP_ID, string);
                PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_APP_KEY, string2);
                PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_ISDEBUG, Boolean.valueOf(z2));
                PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_IS_TEST_ENV, Boolean.valueOf(z3));
            }
        } catch (PackageManager.NameNotFoundException e3) {
            e = e3;
            z = false;
        }
        PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_APP_ID, string);
        PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_APP_KEY, string2);
        PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_ISDEBUG, Boolean.valueOf(z2));
        PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_IS_TEST_ENV, Boolean.valueOf(z3));
    }

    public static boolean o() {
        try {
            Context contextA = xj1.a();
            PackageInfo packageInfo = contextA.getPackageManager().getPackageInfo(contextA.getPackageName(), 0);
            String str = packageInfo.versionName;
            if (str == null) {
                str = "";
            }
            long longVersionCode = packageInfo.getLongVersionCode();
            String str2 = (String) PushRepository.getInstance().getSpValue(PushConstants.SP_KEY_LAST_REPORTED_APP_VERSION, "");
            long jLongValue = ((Long) PushRepository.getInstance().getSpValue(PushConstants.SP_KEY_LAST_REPORTED_APP_VERSION_CODE, -1L)).longValue();
            return (jLongValue != -1 && longVersionCode == jLongValue && TextUtils.equals(str, str2)) ? false : true;
        } catch (Exception e) {
            PushLogUtils.LOG.z("isAppVersionChanged fail:" + e.getMessage());
            return false;
        }
    }

    public static boolean p() {
        return ((Boolean) PushRepository.getInstance().getSpValue(PushConstants.SP_KEY_ISDEBUG, Boolean.FALSE)).booleanValue();
    }

    public static boolean q() {
        return TextUtils.isEmpty((String) PushRepository.getInstance().getSpValue(PushConstants.SP_KEY_CLIENT_ID, "")) || !PushRepository.getInstance().isReported();
    }

    public static boolean r() {
        long reportTime = PushRepository.getInstance().getReportTime();
        return System.currentTimeMillis() - reportTime > 0 || System.currentTimeMillis() - (reportTime - lk8.b()) < 0;
    }

    public static boolean s() {
        return System.currentTimeMillis() - PushRepository.getInstance().getLastTpmsReportTime() > 0;
    }

    public static boolean t() {
        return ((Boolean) PushRepository.getInstance().getSpValue(PushConstants.SP_KEY_IS_TEST_ENV, Boolean.FALSE)).booleanValue();
    }

    public static boolean u() {
        long jLongValue = ((Long) PushRepository.getInstance().getSpValue(PushConstants.SP_KEY_TRACKER_REPORT_TIME, -1L)).longValue();
        return System.currentTimeMillis() - jLongValue > 0 || System.currentTimeMillis() - (jLongValue - lk8.f()) < 0;
    }

    public static boolean v(PushMessage pushMessage) {
        int i = pushMessage.type;
        if (i != 7) {
            if (i != 1) {
                return false;
            }
            boolean zL = l(pushMessage.messageId);
            if (zL) {
                Tracker.getInstance().trackShow(pushMessage.messageId, 7, String.valueOf(System.currentTimeMillis()), NotificationAssistUtils.isOpenNotification(xj1.a()), 0);
            }
            return zL;
        }
        boolean zK = k(pushMessage.retraceMsgId);
        boolean zJ = j(pushMessage.retraceMsgId);
        if (zK && !zJ) {
            l27.a(pushMessage.retraceMsgId);
            try {
                Tracker.getInstance().trackShow(pushMessage.retraceMsgId, 7, String.valueOf(System.currentTimeMillis()), NotificationAssistUtils.isOpenNotification(xj1.a()), 0);
            } catch (Exception unused) {
            }
        }
        C(pushMessage.retraceMsgId);
        return zK && !zJ;
    }

    public static void w(PushConfig pushConfig) {
        PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_APP_CLOSE_JOB_SERVICE, Boolean.valueOf(pushConfig.isCloseJobService()));
        PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_APP_CHECK_INTERVAL, Integer.valueOf(Math.min(Math.max(pushConfig.getCheckInterval(), 900), 43200)));
        PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_APP_MOBILE_UPLOAD_INTERVAL, Integer.valueOf(Math.min(Math.max(pushConfig.getMobileUploadInterval(), 7200), 43200)));
        PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_APP_UPLOAD_INTERVAL, Integer.valueOf(Math.min(Math.max(pushConfig.getUploadInterval(), 7200), 43200)));
        PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_GROUP_ID, pushConfig.getGroupId());
        PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_MAX_NOTIFICATION_COUNT, Integer.valueOf(Math.min(pushConfig.getMaxNotificationCount(), 60)));
    }

    public static void x() {
        try {
            Context contextA = xj1.a();
            PackageInfo packageInfo = contextA.getPackageManager().getPackageInfo(contextA.getPackageName(), 0);
            long longVersionCode = packageInfo.getLongVersionCode();
            PushRepository pushRepository = PushRepository.getInstance();
            String str = packageInfo.versionName;
            if (str == null) {
                str = "";
            }
            pushRepository.putSpValue(PushConstants.SP_KEY_LAST_REPORTED_APP_VERSION, str);
            PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_LAST_REPORTED_APP_VERSION_CODE, Long.valueOf(longVersionCode));
        } catch (Exception e) {
            PushLogUtils.LOG.z("saveReportedAppVersion fail:" + e.getMessage());
        }
    }

    public static void y() {
        try {
            String str = (String) PushRepository.getInstance().getSpValue(PushConstants.SP_KEY_CLIENT_ID, "");
            String str2 = (String) PushRepository.getInstance().getSpValue(PushConstants.SP_KEY_FCM_TOKEN, "");
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                if (b.get()) {
                    return;
                }
                if (PushManager.getInstance().getPushListener() != null) {
                    PushManager.getInstance().getPushListener().onSdkInitSuccess(str, str2);
                    b.set(true);
                } else {
                    Log.e(PushLogUtils.TAG, "tpush listener is not registered");
                }
            }
        } catch (Exception unused) {
        }
    }

    public static void z(long j) {
        try {
            String strJ = sg9.e(PushConstants.SP_FILENAME).j(PushConstants.SP_KEY_PUSHUI_CLICK_MESSAGE_IDS);
            if (strJ.contains(String.valueOf(j))) {
                return;
            }
            String strSubstring = strJ + " " + j;
            if (strSubstring.length() > 1024) {
                strSubstring = strSubstring.substring(256);
            }
            sg9.e(PushConstants.SP_FILENAME).r(PushConstants.SP_KEY_PUSHUI_CLICK_MESSAGE_IDS, strSubstring);
        } catch (Exception unused) {
        }
    }
}
