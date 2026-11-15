package com.transsion.push;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Bundle;
import android.text.TextUtils;
import com.transsion.crypto.TCrypterSdk;
import com.transsion.gslb.GslbSdk;
import com.transsion.push.bean.PushConfig;
import com.transsion.push.bean.PushMessage;
import com.transsion.push.bean.PushNotification;
import com.transsion.push.broadcast.PushBroadcastReceiver;
import com.transsion.push.config.PushRepository;
import com.transsion.push.service.PushServiceHelper;
import com.transsion.push.tracker.Tracker;
import com.transsion.push.utils.FirebaseUtils;
import com.transsion.push.utils.NotificationAssistUtils;
import com.transsion.push.utils.PushLogUtils;
import com.transsion.push.utils.PushUtils;
import com.transsion.push.utils.ServiceUtils;
import com.transsion.push.utils.ThreadManager;
import defpackage.ee3;
import defpackage.qo1;
import defpackage.sg9;
import defpackage.xj1;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

public final class PushManager {
    public static final int SHOW_STATUS_FAIL_NOTI_CLOSE = 6;
    public static final int SHOW_STATUS_FAIL_PRIORITY = 12;
    public static final int SHOW_STATUS_FAIL_REPEAT = 11;
    public static final int SHOW_STATUS_SUCCESS = 0;
    public static AtomicBoolean c = new AtomicBoolean(false);
    public static boolean d;
    public PushBroadcastReceiver a;
    public TPushListener b;

    public class a implements GslbSdk.InitListener {
        public final Context a;

        public a(Context context) {
            this.a = context;
        }

        @Override
        public void onInitFail() {
            PushLogUtils.LOG.g("gslb sdk init fail");
        }

        @Override
        public void onInitSuccess(Map map) {
            PushLogUtils.LOG.g("gslb sdk init success");
            Bundle bundle = new Bundle();
            bundle.putString(PushConstants.EXTRA_PUSH_SERVICE_TYPE, PushConstants.PUSH_SERVICE_TYPE_FORCE_UPDATE);
            ServiceUtils.startJobThread(this.a.getApplicationContext(), bundle);
            PushLogUtils.LOG.g("gslb success, force update info to server");
        }
    }

    public class b implements GslbSdk.InitListener {
        public final Context a;

        public b(Context context) {
            this.a = context;
        }

        @Override
        public void onInitFail() {
            PushLogUtils.LOG.g("gslb sdk init fail");
        }

        @Override
        public void onInitSuccess(Map map) {
            PushLogUtils.LOG.g("gslb sdk init success");
            Bundle bundle = new Bundle();
            bundle.putString(PushConstants.EXTRA_PUSH_SERVICE_TYPE, PushConstants.PUSH_SERVICE_TYPE_FORCE_UPDATE);
            ServiceUtils.startJobThread(this.a.getApplicationContext(), bundle);
            PushLogUtils.LOG.g("gslb success, force update info to server");
        }
    }

    public static final class c {
        public static final PushManager a = new PushManager(null);
    }

    public PushManager(a aVar) {
        this();
    }

    public static PushManager getInstance() {
        return c.a;
    }

    public final boolean a() {
        return true;
    }

    public void addCustomNotification(PushNotification pushNotification) {
        if (a()) {
            qo1.a(pushNotification);
        }
    }

    public final void b() {
        if (a()) {
            IntentFilter intentFilter = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
            if (this.a == null) {
                this.a = new PushBroadcastReceiver();
            }
            try {
                xj1.a().registerReceiver(this.a, intentFilter);
            } catch (Exception e) {
                PushLogUtils.LOG.i("registerReceiver fail, e:" + e.getMessage());
            }
        }
    }

    public void getClientId(IClientIdListener iClientIdListener) {
        if (a()) {
            PushRepository.getInstance().getClientId(iClientIdListener);
        }
    }

    public boolean getDebug() {
        if (a()) {
            return PushUtils.p();
        }
        return false;
    }

    public boolean getIsSdkInitFinished() {
        return d;
    }

    public boolean getNotificationSwitch() {
        if (!a()) {
            return false;
        }
        try {
            return sg9.e(PushConstants.SP_FILENAME).c(PushConstants.SP_KEY_PUSH_SWITCH, true);
        } catch (Exception unused) {
            return false;
        }
    }

    public TPushListener getPushListener() {
        return this.b;
    }

    public boolean getTestEnv() {
        if (a()) {
            return PushUtils.t();
        }
        return false;
    }

    public String getToken(Context context) {
        if (a()) {
            return (String) PushRepository.getInstance().getSpValue(PushConstants.SP_KEY_FCM_TOKEN, "");
        }
        return null;
    }

    public void init(Context context, final String str, final String str2, final boolean z) {
        if (a()) {
            try {
                xj1.b(context.getApplicationContext());
                if (c.get()) {
                    return;
                }
                GslbSdk.init(context, new String[]{PushConstants.BASE_RELEASE_URL_V2}, new a(context));
                c.set(true);
                long jCurrentTimeMillis = System.currentTimeMillis();
                TCrypterSdk.b(context.getApplicationContext());
                ThreadManager.executeInBackground(new Runnable() {
                    @Override
                    public void run() {
                        Tracker.getInstance().init();
                        PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_APP_ID, str);
                        PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_APP_KEY, str2);
                        PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_IS_TEST_ENV, Boolean.valueOf(z));
                        xj1.f(PushUtils.p());
                        Tracker.getInstance().trackInit();
                        PushLogUtils.LOG.i("start update token: ");
                        FirebaseUtils.h();
                    }
                });
                b();
                d = true;
                PushLogUtils.LOG.i("sdk init time: " + (System.currentTimeMillis() - jCurrentTimeMillis));
            } catch (Exception e) {
                PushLogUtils.LOG.i("init fail, e:" + e.getMessage());
                d = false;
            }
        }
    }

    public void registerPushListener(TPushListener tPushListener) {
        this.b = tPushListener;
    }

    @Deprecated
    public void registerReceiver(Context context, BroadcastReceiver broadcastReceiver) {
        if (a()) {
            try {
                PushLogUtils.LOG.g("registerReceiver --> ");
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction(PushConstants.ACTION_PUSH_RECEIVER);
                intentFilter.addAction(PushConstants.ACTION_PUSH_INIT_COMPLETE);
                context.getApplicationContext().registerReceiver(broadcastReceiver, intentFilter);
            } catch (Exception unused) {
            }
        }
    }

    public void setAppInfo(String str, String str2) {
        if (a()) {
            String strE = PushUtils.e();
            String strF = PushUtils.f();
            try {
                if (strE.equalsIgnoreCase(str) && strF.equalsIgnoreCase(str2)) {
                    return;
                }
                if (!TextUtils.isEmpty(str)) {
                    PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_APP_ID, str);
                }
                if (!TextUtils.isEmpty(str2)) {
                    PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_APP_KEY, str2);
                }
                ThreadManager.executeInBackground(new Runnable() {
                    @Override
                    public void run() {
                        PushRepository.getInstance().syncActive();
                    }
                });
            } catch (Exception unused) {
            }
        }
    }

    public void setLanguage(String str) {
        if (a()) {
            String str2 = (String) PushRepository.getInstance().getSpValue(PushConstants.SP_KEY_LANGUAGE, "");
            if (str == null) {
                str = "";
            }
            if (str.equals(str2)) {
                PushLogUtils.LOG.g("语言未改变: " + str);
                return;
            }
            PushLogUtils.LOG.g("设置语言: " + str + ", 旧语言: " + str2);
            if (TextUtils.isEmpty(str)) {
                PushRepository.getInstance().removeSpValue(PushConstants.SP_KEY_LANGUAGE);
                PushLogUtils.LOG.g("移除语言缓存");
            } else {
                PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_LANGUAGE, str);
            }
            ThreadManager.executeInBackground(new Runnable() {
                @Override
                public void run() {
                    PushLogUtils.LOG.g("触发syncActive上报语言");
                    PushRepository.getInstance().syncActive();
                }
            });
        }
    }

    public void setNotificationSwitch(boolean z) {
        if (a()) {
            try {
                sg9.e(PushConstants.SP_FILENAME).m(PushConstants.SP_KEY_PUSH_SWITCH, z);
            } catch (Exception unused) {
            }
        }
    }

    public void setPushConfig(final PushConfig pushConfig) {
        if (a()) {
            ThreadManager.executeInBackground(new Runnable() {
                @Override
                public void run() {
                    PushUtils.w(pushConfig);
                }
            });
        }
    }

    public void subscribeToTopic(String str, ITopicListener iTopicListener) {
        if (a()) {
            PushRepository.getInstance().subscribeToTopic(str, iTopicListener);
        }
    }

    public void trackArrive(long j) {
        if (a()) {
            try {
                Tracker.getInstance().trackTarget(j, 2, "", "", "success");
            } catch (Exception unused) {
            }
        }
    }

    public void trackClick(long j) {
        if (a()) {
            Tracker.getInstance().trackClick(j);
        }
    }

    public void trackConversion(long j) {
        if (a()) {
            try {
                Tracker.getInstance().trackConversion(j);
            } catch (Exception unused) {
            }
        }
    }

    public void trackShow(long j, int i) {
        if (a()) {
            try {
                Tracker.getInstance().trackShow(j, 2, String.valueOf(System.currentTimeMillis()), NotificationAssistUtils.isOpenNotification(xj1.a()), i);
            } catch (Exception unused) {
            }
        }
    }

    public void triggerEvent(final int i, final String str) {
        if (a()) {
            ThreadManager.executeInBackground(new Runnable() {
                @Override
                public void run() {
                    List listD = ee3.c().d(i, str);
                    int i2 = Calendar.getInstance().get(11);
                    if (i2 >= 22 || i2 < 7) {
                        PushLogUtils.LOG.g("triggerEvent skip display during quiet hours (22:00-07:00)");
                        return;
                    }
                    Iterator it = listD.iterator();
                    while (it.hasNext()) {
                        PushServiceHelper.b((PushMessage) it.next());
                    }
                }
            });
        }
    }

    public void unregisterReceiver(Context context, BroadcastReceiver broadcastReceiver) {
        if (a()) {
            try {
                context.getApplicationContext().unregisterReceiver(broadcastReceiver);
            } catch (Exception unused) {
            }
        }
    }

    public void unsubscribeFromTopic(String str, ITopicListener iTopicListener) {
        if (a()) {
            PushRepository.getInstance().unsubscribeFromTopic(str, iTopicListener);
        }
    }

    public void updateToken(String str) {
        if (a()) {
            PushUtils.D(str);
        }
    }

    public PushManager() {
    }

    public void init(Context context) {
        if (a()) {
            try {
                long jCurrentTimeMillis = System.currentTimeMillis();
                xj1.b(context.getApplicationContext());
                if (c.get()) {
                    return;
                }
                GslbSdk.init(context, new String[]{PushConstants.BASE_RELEASE_URL_V2}, new b(context));
                c.set(true);
                TCrypterSdk.b(context.getApplicationContext());
                ThreadManager.executeInBackground(new Runnable() {
                    @Override
                    public void run() {
                        Tracker.getInstance().init();
                        PushUtils.n();
                        xj1.f(PushUtils.p());
                        Tracker.getInstance().trackInit();
                        PushLogUtils.LOG.g("start update token 2: ");
                        FirebaseUtils.h();
                    }
                });
                b();
                d = true;
                PushLogUtils.LOG.i("sdk init time: " + (System.currentTimeMillis() - jCurrentTimeMillis));
            } catch (Exception e) {
                PushLogUtils.LOG.i("init fail, e:" + e.getMessage());
                d = false;
            }
        }
    }
}
