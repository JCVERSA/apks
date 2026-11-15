package com.transsion.push;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Bundle;
import android.text.TextUtils;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.transsion.core.utils.f;
import com.transsion.crypto.TCrypterSdk;
import com.transsion.gslb.GslbSdk;
import com.transsion.push.bean.PushConfig;
import com.transsion.push.bean.PushNotification;
import com.transsion.push.broadcast.PushBroadcastReceiver;
import com.transsion.push.config.PushRepository;
import com.transsion.push.tracker.Tracker;
import com.transsion.push.utils.FirebaseUtils;
import com.transsion.push.utils.NotificationAssistUtils;
import com.transsion.push.utils.PushLogUtils;
import com.transsion.push.utils.PushUtils;
import com.transsion.push.utils.ServiceUtils;
import com.transsion.push.utils.ThreadManager;
import com.transsion.push.utils.j;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

public final class PushManager {
    public static final int SHOW_STATUS_FAIL_NOTI_CLOSE = 6;
    public static final int SHOW_STATUS_FAIL_PRIORITY = 12;
    public static final int SHOW_STATUS_FAIL_REPEAT = 11;
    public static final int SHOW_STATUS_SUCCESS = 0;

    private static AtomicBoolean f48684c = new AtomicBoolean(false);

    private static boolean f48685d;

    private PushBroadcastReceiver f48686a;

    private TPushListener f48687b;

    class a implements GslbSdk.InitListener {

        final Context f48688a;

        a(Context context) {
            this.f48688a = context;
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
            ServiceUtils.startJobThread(this.f48688a.getApplicationContext(), bundle);
            PushLogUtils.LOG.g("gslb success, force update info to server");
        }
    }

    class b implements GslbSdk.InitListener {

        final Context f48690a;

        b(Context context) {
            this.f48690a = context;
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
            ServiceUtils.startJobThread(this.f48690a.getApplicationContext(), bundle);
            PushLogUtils.LOG.g("gslb success, force update info to server");
        }
    }

    private static final class c {

        private static final PushManager f48692a = new PushManager(null);
    }

    PushManager(a aVar) {
        this();
    }

    private boolean a() {
        return true;
    }

    private void b() {
        if (a()) {
            IntentFilter intentFilter = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
            if (this.f48686a == null) {
                this.f48686a = new PushBroadcastReceiver();
            }
            try {
                yj.a.a().registerReceiver(this.f48686a, intentFilter);
            } catch (Exception e10) {
                PushLogUtils.LOG.i("registerReceiver fail, e:" + e10.getMessage());
            }
        }
    }

    public static PushManager getInstance() {
        return c.f48692a;
    }

    public void addCustomNotification(PushNotification pushNotification) {
        if (a()) {
            j.a(pushNotification);
        }
    }

    public void getClientId(IClientIdListener iClientIdListener) {
        if (a()) {
            PushRepository.getInstance().getClientId(iClientIdListener);
        }
    }

    public boolean getDebug() {
        if (a()) {
            return PushUtils.o();
        }
        return false;
    }

    public boolean getIsSdkInitFinished() {
        return f48685d;
    }

    public boolean getNotificationSwitch() {
        if (!a()) {
            return false;
        }
        try {
            return f.e(PushConstants.SP_FILENAME).c(PushConstants.SP_KEY_PUSH_SWITCH, true);
        } catch (Exception unused) {
            return false;
        }
    }

    public TPushListener getPushListener() {
        return this.f48687b;
    }

    public boolean getTestEnv() {
        if (a()) {
            return PushUtils.s();
        }
        return false;
    }

    public String getToken(Context context) {
        if (a()) {
            return (String) PushRepository.getInstance().getSpValue(PushConstants.SP_KEY_FCM_TOKEN, "");
        }
        return null;
    }

    public void init(Context context, final String str, final String str2, final boolean z10) {
        if (a()) {
            try {
                yj.a.b(context.getApplicationContext());
                if (f48684c.get()) {
                    return;
                }
                GslbSdk.init(context, new String[]{PushConstants.BASE_RELEASE_URL_V2}, new a(context));
                f48684c.set(true);
                long jCurrentTimeMillis = System.currentTimeMillis();
                TCrypterSdk.b(context.getApplicationContext());
                ThreadManager.executeInBackground(new Runnable() {
                    @Override
                    public void run() {
                        Tracker.getInstance().init();
                        PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_APP_ID, str);
                        PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_APP_KEY, str2);
                        PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_IS_TEST_ENV, Boolean.valueOf(z10));
                        yj.a.f(PushUtils.o());
                        Tracker.getInstance().trackInit();
                        PushLogUtils.LOG.i("start update token: ");
                        FirebaseUtils.c();
                    }
                });
                b();
                f48685d = true;
                PushLogUtils.LOG.i("sdk init time: " + (System.currentTimeMillis() - jCurrentTimeMillis));
            } catch (Exception e10) {
                PushLogUtils.LOG.i("init fail, e:" + e10.getMessage());
                f48685d = false;
            }
        }
    }

    public void registerPushListener(TPushListener tPushListener) {
        this.f48687b = tPushListener;
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

    public void setNotificationSwitch(boolean z10) {
        if (a()) {
            try {
                f.e(PushConstants.SP_FILENAME).l(PushConstants.SP_KEY_PUSH_SWITCH, z10);
            } catch (Exception unused) {
            }
        }
    }

    public void setPushConfig(final PushConfig pushConfig) {
        if (a()) {
            ThreadManager.executeInBackground(new Runnable() {
                @Override
                public void run() {
                    PushUtils.v(pushConfig);
                }
            });
        }
    }

    public void subscribeToTopic(String str, ITopicListener iTopicListener) {
        if (a()) {
            PushRepository.getInstance().subscribeToTopic(str, iTopicListener);
        }
    }

    public void trackArrive(long j10) {
        if (a()) {
            try {
                Tracker.getInstance().trackTarget(j10, 2, "", "", NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS);
            } catch (Exception unused) {
            }
        }
    }

    public void trackClick(long j10) {
        if (a()) {
            Tracker.getInstance().trackClick(j10);
        }
    }

    public void trackConversion(long j10) {
        if (a()) {
            try {
                Tracker.getInstance().trackConversion(j10);
            } catch (Exception unused) {
            }
        }
    }

    public void trackShow(long j10, int i10) {
        if (a()) {
            try {
                Tracker.getInstance().trackShow(j10, 2, String.valueOf(System.currentTimeMillis()), NotificationAssistUtils.isOpenNotification(yj.a.a()), i10);
            } catch (Exception unused) {
            }
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
            PushUtils.B(str);
        }
    }

    private PushManager() {
    }

    public void init(Context context) {
        if (a()) {
            try {
                long jCurrentTimeMillis = System.currentTimeMillis();
                yj.a.b(context.getApplicationContext());
                if (f48684c.get()) {
                    return;
                }
                GslbSdk.init(context, new String[]{PushConstants.BASE_RELEASE_URL_V2}, new b(context));
                f48684c.set(true);
                TCrypterSdk.b(context.getApplicationContext());
                ThreadManager.executeInBackground(new Runnable() {
                    @Override
                    public void run() {
                        Tracker.getInstance().init();
                        PushUtils.n();
                        yj.a.f(PushUtils.o());
                        Tracker.getInstance().trackInit();
                        PushLogUtils.LOG.g("start update token 2: ");
                        FirebaseUtils.c();
                    }
                });
                b();
                f48685d = true;
                PushLogUtils.LOG.i("sdk init time: " + (System.currentTimeMillis() - jCurrentTimeMillis));
            } catch (Exception e10) {
                PushLogUtils.LOG.i("init fail, e:" + e10.getMessage());
                f48685d = false;
            }
        }
    }
}
