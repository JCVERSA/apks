package com.mbridge.msdk.system;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.MBridgeSDK;
import com.mbridge.msdk.foundation.controller.authoritycontroller.AuthorityInfoBean;
import com.mbridge.msdk.foundation.controller.authoritycontroller.CallBackForDeveloper;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.controller.d;
import com.mbridge.msdk.foundation.same.report.k;
import com.mbridge.msdk.foundation.same.report.l;
import com.mbridge.msdk.foundation.same.report.q;
import com.mbridge.msdk.foundation.tools.MIMManager;
import com.mbridge.msdk.foundation.tools.ad;
import com.mbridge.msdk.foundation.tools.af;
import com.mbridge.msdk.foundation.tools.ai;
import com.mbridge.msdk.foundation.tools.e;
import com.mbridge.msdk.out.DeveloperTransferIdInfo;
import com.mbridge.msdk.out.OnCompletionListener;
import com.mbridge.msdk.out.SDKInitStatusListener;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

public abstract class a implements MBridgeSDK {
    protected static final String LOG_TAG = "com.mbridge.msdk";
    public static Map<String, String> map;
    private b mBridgeSDKImplDiff;
    protected volatile Context mContext;
    protected SDKInitStatusListener mStatusListener;
    protected volatile AtomicBoolean sdkInited;
    public boolean isCoolStart = true;
    protected volatile MBridgeSDK.PLUGIN_LOAD_STATUS STATUS = MBridgeSDK.PLUGIN_LOAD_STATUS.INITIAL;
    protected boolean initCallbacked = false;
    protected boolean isRegisteredLifeCycle = false;
    protected volatile boolean isMIMinited = false;
    private final Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = new AnonymousClass1();

    public class AnonymousClass1 implements Application.ActivityLifecycleCallbacks {
        public AnonymousClass1() {
        }

        @Override
        public final void onActivityCreated(Activity activity, Bundle bundle) {
            if (a.this.isMIMinited) {
                MIMManager.a().e();
            }
        }

        @Override
        public final void onActivityDestroyed(Activity activity) {
            if (a.this.isMIMinited) {
                MIMManager.a().f();
            }
        }

        @Override
        public final void onActivityPaused(Activity activity) {
            ad.b("com.mbridge.msdk", "onActivityPaused currentActivityNum:" + c.m().f());
        }

        @Override
        public final void onActivityResumed(Activity activity) {
        }

        @Override
        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override
        public final void onActivityStarted(Activity activity) {
            int iF = c.m().f();
            ad.b("com.mbridge.msdk", "onActivityStarted currentActivityNum:" + iF);
            ad.b("com.mbridge.msdk", "onActivityStarted isCoolStart:" + a.this.isCoolStart);
            if (!a.this.isCoolStart && iF == 0) {
                q.a("1");
            }
            if (a.access$000(a.this) != null) {
                a.access$000(a.this);
                a aVar = a.this;
                boolean z = aVar.isCoolStart;
                Context context = aVar.mContext;
            }
            a.this.isCoolStart = false;
            c.m().a(iF + 1);
        }

        @Override
        public final void onActivityStopped(Activity activity) {
            int iF = c.m().f();
            ad.b("com.mbridge.msdk", "onActivityStopped currentActivityNum:" + iF);
            if (iF == 1 || iF == 0) {
                q.a(MBridgeConstans.API_REUQEST_CATEGORY_APP);
            }
            c.m().a(iF - 1);
        }
    }

    public static b access$000(a aVar) {
        return aVar.mBridgeSDKImplDiff;
    }

    private void init() {
        SDKInitStatusListener sDKInitStatusListener;
        SDKInitStatusListener sDKInitStatusListener2;
        if (this.sdkInited == null) {
            this.sdkInited = new AtomicBoolean(false);
        }
        this.initCallbacked = false;
        try {
            if (this.sdkInited.get() && (sDKInitStatusListener2 = this.mStatusListener) != null && !this.initCallbacked) {
                this.initCallbacked = true;
                sDKInitStatusListener2.onInitSuccess();
                return;
            }
        } catch (Exception e) {
            ad.b("com.mbridge.msdk", e.getMessage());
        }
        if (this.mContext == null && (sDKInitStatusListener = this.mStatusListener) != null) {
            sDKInitStatusListener.onInitFail("Context can not be null.");
            this.initCallbacked = true;
            return;
        }
        try {
            this.mBridgeSDKImplDiff = new b();
            d.a().a(map, this.mContext);
            this.STATUS = MBridgeSDK.PLUGIN_LOAD_STATUS.COMPLETED;
            startTrackManager();
            ai.j();
            initMIMManager();
            if (this.mContext instanceof Application) {
                registerActivityLifecycleListener((Application) this.mContext);
            }
            this.sdkInited.set(true);
        } catch (Exception e2) {
            ad.a("com.mbridge.msdk", "INIT FAIL", e2);
            if (this.sdkInited != null) {
                this.sdkInited.set(false);
            }
            SDKInitStatusListener sDKInitStatusListener3 = this.mStatusListener;
            if (sDKInitStatusListener3 != null && !this.initCallbacked) {
                this.initCallbacked = true;
                sDKInitStatusListener3.onInitFail(e2.getMessage());
            }
        }
        try {
            k.a().b();
            HashMap map2 = new HashMap();
            if (this.sdkInited != null) {
                boolean z = this.sdkInited.get();
                String str = MBridgeConstans.API_REUQEST_CATEGORY_APP;
                map2.put("status", z ? "1" : MBridgeConstans.API_REUQEST_CATEGORY_APP);
                map2.put("is_allow_crash", c.m().d().b() ? "1" : MBridgeConstans.API_REUQEST_CATEGORY_APP);
                if (c.m().d().a()) {
                    str = "1";
                }
                map2.put("is_allow_anr", str);
            }
            l.a().a("m_init_sdk", "InitSDK", "", "", map2);
        } catch (Throwable th) {
            ad.b("com.mbridge.msdk", th.getMessage());
        }
        SDKInitStatusListener sDKInitStatusListener4 = this.mStatusListener;
        if (sDKInitStatusListener4 == null || this.initCallbacked) {
            return;
        }
        this.initCallbacked = true;
        sDKInitStatusListener4.onInitSuccess();
    }

    private void initMIMManager() {
        try {
            String str = Build.MANUFACTURER;
            if (TextUtils.isEmpty(str) || !str.equals("Xiaomi")) {
                return;
            }
            this.isMIMinited = true;
            MIMManager.a().a(this.mContext.getApplicationContext());
        } catch (Throwable th) {
            ad.b("com.mbridge.msdk", th.getMessage());
        }
    }

    private void startTrackManager() {
        l.a().c();
    }

    private void unregisterActivityLifecycleListener(Application application) {
        Application.ActivityLifecycleCallbacks activityLifecycleCallbacks;
        if (!this.isRegisteredLifeCycle || (activityLifecycleCallbacks = this.activityLifecycleCallbacks) == null) {
            return;
        }
        application.unregisterActivityLifecycleCallbacks(activityLifecycleCallbacks);
    }

    public void checkAliveContext(Context context) {
        if (c.m().c() != null || context == null) {
            return;
        }
        c.m().b(context);
    }

    @Override
    public boolean getConsentStatus(Context context) {
        checkAliveContext(context);
        return com.mbridge.msdk.foundation.controller.authoritycontroller.c.j().e();
    }

    @Override
    public Map<String, String> getMBConfigurationMap(String str, String str2) {
        return getMBConfigurationMap(str, str2, "");
    }

    @Override
    public Map<String, String> getMBConfigurationMap(String str, String str2, String str3) {
        HashMap map2 = new HashMap();
        map2.put(MBridgeConstans.ID_MBRIDGE_APPID, str);
        map2.put(MBridgeConstans.ID_MBRIDGE_APPKEY, str2);
        map2.put(MBridgeConstans.ID_MBRIDGE_WX_APPID, str3);
        map2.put(MBridgeConstans.ID_MBRIDGE_STARTUPCRASH, String.valueOf(1));
        return map2;
    }

    @Override
    public Map<String, String> getMBConfigurationMap(String str, String str2, String str3, boolean z) {
        return getMBConfigurationMap(str, str2, "");
    }

    @Override
    public Map<String, String> getMBConfigurationMap(String str, String str2, boolean z) {
        return getMBConfigurationMap(str, str2, "");
    }

    @Override
    public MBridgeSDK.PLUGIN_LOAD_STATUS getStatus() {
        return this.STATUS;
    }

    public void init(Application application) {
        this.mContext = application.getApplicationContext();
        init();
    }

    @Override
    public void init(Map<String, String> map2, Application application) {
        this.mContext = application.getApplicationContext();
        map = map2;
        init();
    }

    @Override
    public void init(Map<String, String> map2, Application application, SDKInitStatusListener sDKInitStatusListener) {
        this.mContext = application;
        this.mStatusListener = sDKInitStatusListener;
        map = map2;
        init();
    }

    @Override
    public void init(Map<String, String> map2, Context context) {
        this.mContext = context.getApplicationContext();
        map = map2;
        init();
    }

    @Override
    public void init(Map<String, String> map2, Context context, SDKInitStatusListener sDKInitStatusListener) {
        this.mContext = context.getApplicationContext();
        this.mStatusListener = sDKInitStatusListener;
        map = map2;
        init();
    }

    @Override
    public void initAsync(Map<String, String> map2, Application application) {
        this.mContext = application.getApplicationContext();
        map = map2;
        init();
    }

    @Override
    public void initAsync(Map<String, String> map2, Application application, SDKInitStatusListener sDKInitStatusListener) {
        this.mContext = application;
        this.mStatusListener = sDKInitStatusListener;
        map = map2;
        init();
    }

    @Override
    public void initAsync(Map<String, String> map2, Context context) {
        this.mContext = context.getApplicationContext();
        map = map2;
        init();
    }

    @Override
    public void initAsync(Map<String, String> map2, Context context, SDKInitStatusListener sDKInitStatusListener) {
        this.mContext = context.getApplicationContext();
        this.mStatusListener = sDKInitStatusListener;
        map = map2;
        init();
    }

    @Override
    public void preload(Map<String, Object> map2) {
        if (this.STATUS == MBridgeSDK.PLUGIN_LOAD_STATUS.COMPLETED) {
            d.a().a(map2, 0);
        }
    }

    @Override
    public void preloadFrame(Map<String, Object> map2) {
        d.a().a(map2, 1);
    }

    public void registerActivityLifecycleListener(Application application) {
        boolean z;
        try {
            z = af.a().a("c_r_a_l_c", 0) == 0;
        } catch (Exception e) {
            ad.b("com.mbridge.msdk", e.getMessage());
        }
        if (application == null || !z) {
            return;
        }
        Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = this.activityLifecycleCallbacks;
        if (activityLifecycleCallbacks != null) {
            application.registerActivityLifecycleCallbacks(activityLifecycleCallbacks);
        }
        this.isRegisteredLifeCycle = true;
    }

    @Override
    public void release() {
        if (this.STATUS == MBridgeSDK.PLUGIN_LOAD_STATUS.COMPLETED) {
            d.a().c();
        }
        if (this.mContext instanceof Application) {
            unregisterActivityLifecycleListener((Application) this.mContext);
        }
    }

    @Override
    public void setAllowAcquireIds(boolean z) {
        com.mbridge.msdk.foundation.controller.authoritycontroller.b.a(z);
    }

    @Override
    public void setAllowTransferIdsIfLimit(boolean z) {
        com.mbridge.msdk.foundation.controller.authoritycontroller.b.b(z);
    }

    @Override
    public void setConsentStatus(Context context) {
        checkAliveContext(context);
        com.mbridge.msdk.foundation.controller.authoritycontroller.c.j().a(context, (OnCompletionListener) null);
    }

    @Override
    public void setConsentStatus(Context context, int i) {
        checkAliveContext(context);
        com.mbridge.msdk.foundation.controller.authoritycontroller.c.j().a(i);
    }

    @Override
    public void setConsentStatus(Context context, OnCompletionListener onCompletionListener) {
        checkAliveContext(context);
        com.mbridge.msdk.foundation.controller.authoritycontroller.c.j().a(context, onCompletionListener);
    }

    @Override
    public void setCoppaStatus(Context context, boolean z) {
        checkAliveContext(context);
        com.mbridge.msdk.foundation.controller.authoritycontroller.c.j();
        com.mbridge.msdk.foundation.a.a.a.a().b(MBridgeConstans.AUTHORITY_COPPA, z ? 1 : 2);
    }

    @Override
    public void setDeveloperIds(DeveloperTransferIdInfo developerTransferIdInfo) {
        if (com.mbridge.msdk.foundation.controller.authoritycontroller.b.a() || developerTransferIdInfo == null || TextUtils.isEmpty(developerTransferIdInfo.getGaid())) {
            return;
        }
        e.a(developerTransferIdInfo.getGaid());
    }

    @Override
    public void setDoNotTrackStatus(Context context, boolean z) {
        checkAliveContext(context);
        com.mbridge.msdk.foundation.controller.authoritycontroller.c.j().b(z ? 1 : 0);
    }

    @Override
    public void setDoNotTrackStatus(boolean z) {
        com.mbridge.msdk.foundation.controller.authoritycontroller.c.j().b(z ? 1 : 0);
    }

    @Override
    public void setThirdPartyFeatures(Map<String, Object> map2) {
    }

    @Override
    public void setUserPrivateInfoType(Context context, String str, int i) {
        checkAliveContext(context);
        com.mbridge.msdk.foundation.controller.authoritycontroller.c.j().a(str, i);
    }

    @Override
    public void showUserPrivateInfoTips(Context context, CallBackForDeveloper callBackForDeveloper) {
    }

    @Override
    public void updateDialogWeakActivity(WeakReference<Activity> weakReference) {
        c.m().a(weakReference);
    }

    @Override
    public AuthorityInfoBean userPrivateInfo(Context context) {
        checkAliveContext(context);
        return com.mbridge.msdk.foundation.controller.authoritycontroller.c.j().d();
    }
}
