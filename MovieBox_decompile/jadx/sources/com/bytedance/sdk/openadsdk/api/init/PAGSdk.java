package com.bytedance.sdk.openadsdk.api.init;

import android.app.Application;
import android.content.Context;
import android.content.MutableContextWrapper;
import android.content.pm.PackageManager;
import android.content.pm.ShortcutManager;
import android.os.Build;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.webkit.WebView;
import com.bytedance.adsdk.ugeno.Jcg.EjP;
import com.bytedance.sdk.component.Dq.TEQ;
import com.bytedance.sdk.component.Sj;
import com.bytedance.sdk.component.uA.HiB;
import com.bytedance.sdk.component.uA.vS;
import com.bytedance.sdk.component.utils.Dq;
import com.bytedance.sdk.component.utils.ib;
import com.bytedance.sdk.component.utils.sU;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.InitConfig;
import com.bytedance.sdk.openadsdk.api.bidding.PAGBiddingRequest;
import com.bytedance.sdk.openadsdk.api.factory.IADTypeLoaderFactory;
import com.bytedance.sdk.openadsdk.api.factory.ISDKTypeFactory;
import com.bytedance.sdk.openadsdk.api.factory.SDKTypeConfig;
import com.bytedance.sdk.openadsdk.core.Dq.aa;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.ley;
import com.bytedance.sdk.openadsdk.core.sef;
import com.bytedance.sdk.openadsdk.core.settings.Fmk;
import com.bytedance.sdk.openadsdk.core.settings.uA;
import com.bytedance.sdk.openadsdk.kF.sP.Jcg;
import com.bytedance.sdk.openadsdk.multipro.TKC;
import com.bytedance.sdk.openadsdk.multipro.sP;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.bytedance.sdk.openadsdk.utils.RiZ;
import com.bytedance.sdk.openadsdk.utils.Zq;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import org.json.JSONObject;

public class PAGSdk {
    public static final int INIT_LOCAL_FAIL_CODE = 4000;
    private static long Sj;

    public interface PAGInitCallback {
        void fail(int i10, String str);

        void success();
    }

    static {
        try {
            Sj.Sj(new Sj.InterfaceC0196Sj() {
                @Override
                public ExecutorService getExecutorService() {
                    return JcM.HiB();
                }

                @Override
                public HandlerThread getSafeHandlerThread(String str, int i10) {
                    return Dq.Sj(str, i10);
                }
            });
            JcM.Sj(new com.bytedance.sdk.component.Dq.Dq("tt_init_memory_data") {
                @Override
                public void run() {
                    PAGInitHelper.initAPM();
                    PAGInitHelper.initMemoryData();
                }
            });
            sef.Sj(System.currentTimeMillis());
            sef.sP();
            vS.setWebViewProvider(new vS.TKC() {
                @Override
                public WebView createWebView(Context context, AttributeSet attributeSet, int i10) {
                    if (!(context instanceof MutableContextWrapper)) {
                        context = context.getApplicationContext();
                    }
                    try {
                        return i10 == 0 ? new HiB(context, attributeSet) : new HiB(context, attributeSet, i10);
                    } catch (Exception unused) {
                        return i10 == 0 ? new HiB(context, attributeSet) : new HiB(context, attributeSet, i10);
                    }
                }
            });
        } catch (Throwable th2) {
            th2.getMessage();
        }
        Sj = 0L;
    }

    private static void EjP(Context context, InitConfig initConfig) {
        if (TextUtils.isEmpty(initConfig.getPackageName())) {
            ib.Sj((String) null);
            EjP.Sj((String) null);
        } else {
            ib.Sj(initConfig.getPackageName());
            EjP.Sj(initConfig.getPackageName());
        }
        dNu.sP(context);
        if (initConfig.isSupportMultiProcess()) {
            sP.Sj();
        } else {
            sP.sP();
        }
        aa.Sj();
        com.bytedance.sdk.openadsdk.core.TEQ.sP.Sj(context);
    }

    private static void HiB(Context context, InitConfig initConfig) {
        if (uA.Sj()) {
            com.bytedance.sdk.component.Dq.vS.TKC(-1);
            com.bytedance.sdk.component.Dq.HiB.Sj(new TEQ() {
                @Override
                public com.bytedance.sdk.component.Dq.uA createThreadFactory(int i10, String str) {
                    return new com.bytedance.sdk.component.Dq.uA(i10, str) {
                        @Override
                        public Thread newThread(Runnable runnable) {
                            if (com.bytedance.sdk.component.Dq.uA.sCrashHappened) {
                                return null;
                            }
                            int iBml = Fmk.gq().Bml();
                            if (iBml < -524288 || iBml >= 0) {
                                return super.newThread(runnable);
                            }
                            Thread thread = new Thread(this.Sj, runnable, this.sP, iBml);
                            if (thread.isDaemon()) {
                                thread.setDaemon(false);
                            }
                            int i11 = this.TKC;
                            if (i11 > 10 || i11 <= 0) {
                                this.TKC = 5;
                            }
                            thread.setPriority(this.TKC);
                            return thread;
                        }
                    };
                }
            });
            TKC.Sj(context);
            com.bytedance.sdk.openadsdk.Jcg.sP.TKC();
            sef.sP.set(true);
            try {
                com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().Sj(new com.bytedance.sdk.openadsdk.uA.Sj());
            } catch (Exception e10) {
                sU.sP("TTAD.PAGSdk", e10.getMessage());
            }
            TKC(initConfig);
            TKC(context, initConfig);
            v5.b.e(context, null);
            v5.b.d(2);
            v5.b.g(initConfig.isSupportMultiProcess());
            v5.b.f(com.bytedance.sdk.openadsdk.TzV.sP.Sj().sP().HiB());
        }
    }

    private static void TKC(Context context, InitConfig initConfig) {
        sef.Sj = true;
        ley.Sj().Sj(initConfig.getAppId()).sP(initConfig.getGdpr()).HiB(initConfig.getPA()).EjP(initConfig.getAppIconId()).Sj(initConfig.getTitleBarTheme()).TKC(initConfig.getAdxId());
        com.bytedance.sdk.openadsdk.core.uA.uP();
        if (initConfig instanceof PAGConfig) {
            ley.Sj().TKC(((PAGConfig) initConfig).getDebugLog() ? 1 : 0);
        }
        try {
            if (sP(initConfig)) {
                ley.Sj().Sj();
                com.bytedance.sdk.openadsdk.utils.dNu.Sj();
            }
        } catch (Throwable unused) {
        }
        com.bytedance.sdk.component.utils.uA.Sj();
    }

    public static void addPAGInitCallback(PAGInitCallback pAGInitCallback) {
        if (pAGInitCallback != null && sef.EjP() == 0) {
            PAGInitHelper.CALLBACK_LIST.add(pAGInitCallback);
        }
    }

    public static void closeMultiWebViewFileLock() {
        TKC.Sj();
    }

    public static String getApplicationName(Context context) {
        try {
            PackageManager packageManager = context.getApplicationContext().getPackageManager();
            return (String) packageManager.getApplicationLabel(packageManager.getApplicationInfo(context.getPackageName(), 128));
        } catch (PackageManager.NameNotFoundException unused) {
            return "";
        }
    }

    public static void getBiddingToken(final Context context, final PAGBiddingRequest pAGBiddingRequest, final BiddingTokenCallback biddingTokenCallback) {
        if (biddingTokenCallback == null) {
            return;
        }
        if (com.bytedance.sdk.openadsdk.common.HiB.Sj()) {
            biddingTokenCallback.onBiddingTokenCollected(null);
        } else {
            JcM.HiB(new com.bytedance.sdk.component.Dq.Dq("getBiddingToken") {
                @Override
                public void run() {
                    dNu.sP(context);
                    biddingTokenCallback.onBiddingTokenCollected(PAGSdk.sP(pAGBiddingRequest));
                }
            });
        }
    }

    public static String getSDKVersion() {
        return ley.Sj() != null ? ley.Sj().TKC() : "";
    }

    public static void init(final Context context, final PAGConfig pAGConfig, final PAGInitCallback pAGInitCallback) {
        sef.sP().post(new Runnable() {
            @Override
            public void run() {
                PAGSdk.sP(context, pAGConfig, pAGInitCallback);
            }
        });
        sef.Dq();
    }

    public static boolean isInitSuccess() {
        return sef.EjP() == 1;
    }

    public static boolean onlyVerityPlayable(String str, int i10, String str2, String str3, String str4) {
        if (ley.Sj() != null) {
            return ley.Sj().Sj(str, i10, str2, str3, str4);
        }
        return false;
    }

    public static void setAabPackageName(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        ib.Sj(str);
        EjP.Sj(str);
    }

    public static void setAdRevenue(JSONObject jSONObject) {
        if (jSONObject != null && dNu.EjP().dNu() && isInitSuccess()) {
            com.bytedance.sdk.openadsdk.Zq.TKC.Sj().Sj(jSONObject);
        }
    }

    private static void setSdkDisable(boolean z10) {
        com.bytedance.sdk.openadsdk.common.HiB.Sj(z10);
    }

    private static void vS(final Context context, final InitConfig initConfig) {
        SystemClock.elapsedRealtime();
        JcM.Sj(new com.bytedance.sdk.component.Dq.Dq("init_sync") {
            @Override
            public void run() {
                sef.Sj(initConfig.getData());
                com.bytedance.sdk.openadsdk.dx.Sj.Sj(context, initConfig.getAppId());
                com.bytedance.sdk.openadsdk.dx.Sj.Sj();
                com.bytedance.sdk.openadsdk.dNu.TKC.Sj();
                com.bytedance.sdk.openadsdk.dNu.TKC.sP();
                new Zq();
                com.bytedance.sdk.component.adexpress.Sj.sP.vS.Sj(RiZ.Sj() * 10);
                com.bytedance.sdk.openadsdk.EjP.Sj.EjP.Sj(context, initConfig.isSupportMultiProcess());
                com.bytedance.sdk.openadsdk.core.Zq.Sj().sP();
                com.bytedance.sdk.openadsdk.core.uA.TKC.Sj();
                com.bytedance.sdk.openadsdk.ib.Sj.Sj(new com.bytedance.sdk.openadsdk.ib.Sj.InterfaceC0264Sj() {
                    public void onGdprChanged(int i10) {
                        PAGConfig.setGDPRConsent(i10);
                    }
                });
                Fmk.EjP = Fmk.TKC(context);
                Jcg.sP();
                d6.a.d(dNu.EjP().pfr());
                d6.a.e(CacheDirFactory.getICacheDir(0));
                com.bytedance.sdk.openadsdk.core.settings.vS vSVarEjP = dNu.EjP();
                if (!vSVarEjP.ndK()) {
                    synchronized (vSVarEjP) {
                        try {
                            if (!vSVarEjP.ndK()) {
                                vSVarEjP.sP();
                                vSVarEjP.ley();
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                }
                DeviceUtils.TEQ();
                PAGInitHelper.maybeAsyncInitTask(context);
                PAGSdk.getBiddingToken();
                com.bytedance.sdk.component.Dq.vS.Sj(true);
                com.bytedance.sdk.component.Dq.vS.Sj(new com.bytedance.sdk.openadsdk.Zq.sP.Sj());
                DeviceUtils.Sj(context);
                DeviceUtils.aa(context);
                DeviceUtils.Fmk(context);
                com.bytedance.sdk.openadsdk.Zq.Sj.Sj();
                com.bytedance.sdk.openadsdk.core.settings.EjP.Sj();
                com.bytedance.sdk.openadsdk.Zq.TKC.EjP();
                Mts.Fmk(context);
                com.bytedance.sdk.openadsdk.EjP.TKC.Sj();
                PAGSdk.TKC();
                com.bytedance.sdk.openadsdk.core.uA.TKC.sP();
                com.bytedance.sdk.openadsdk.core.EjP.Sj.Sj().sP();
                com.bytedance.sdk.component.Dq.TKC.TKC.Sj(sef.sP());
                com.bytedance.sdk.component.utils.sP.Sj(new com.bytedance.sdk.component.utils.sP.Sj() {
                    @Override
                    public ExecutorService getAsyncStartActivityThreadPool() {
                        return JcM.uA();
                    }

                    @Override
                    public boolean isEnableAsyncStartActivity() {
                        return com.bytedance.sdk.openadsdk.dx.Sj.Sj("start_activity_async", 0) == 1;
                    }
                });
            }
        });
    }

    public static void sP(final Context context, final InitConfig initConfig, PAGInitCallback pAGInitCallback) {
        Context applicationContext;
        Sj = SystemClock.elapsedRealtime();
        dNu.sP(context);
        if (pAGInitCallback != null) {
            List<PAGInitCallback> list = PAGInitHelper.CALLBACK_LIST;
            synchronized (list) {
                if (!list.contains(pAGInitCallback)) {
                    list.add(pAGInitCallback);
                    if (sef.EjP() == 3) {
                        return;
                    }
                }
            }
        }
        if (com.bytedance.sdk.openadsdk.common.HiB.Sj()) {
            sP(-1, "DisableSDK is called, interrupt initialization");
            return;
        }
        if (isInitSuccess()) {
            EjP();
            TKC(initConfig);
            return;
        }
        if (initConfig == null) {
            sP(4000, "PAGConfig is null, please check.");
            return;
        }
        sef.Sj(3);
        int pa2 = initConfig.getPA();
        if (pa2 < -1 || pa2 > 1) {
            sP(10004, com.bytedance.sdk.openadsdk.core.Dq.Sj(10004));
            return;
        }
        if (context == null) {
            sP(4000, "Context is null, please check. ");
            return;
        }
        if (!(context instanceof Application) && (applicationContext = context.getApplicationContext()) != null) {
            context = applicationContext;
        }
        EjP(context, initConfig);
        ApmHelper.initApm(context, initConfig);
        try {
            com.bytedance.sdk.openadsdk.core.uA.Sj(new com.bytedance.sdk.openadsdk.core.Fmk() {
                @Override
                public void fail(int i10, String str) {
                    PAGSdk.sP(i10, str);
                }

                public void success() {
                    PAGSdk.EjP();
                }
            });
            try {
                ib.Sj(dNu.Sj(), "tt_ad_logo_txt");
                if (ib.EjP(context, "tt_ad_logo") == 0) {
                    Sj(initConfig, pAGInitCallback);
                    return;
                }
                if (isInitSuccess()) {
                    if (pAGInitCallback != null) {
                        EjP();
                        return;
                    }
                    return;
                }
                final com.bytedance.sdk.openadsdk.HiB.Sj sj2 = new com.bytedance.sdk.openadsdk.HiB.Sj();
                SDKTypeConfig.setSdkTypeFactory(new ISDKTypeFactory() {
                    @Override
                    public IADTypeLoaderFactory createADTypeLoaderFactory(String str) {
                        return sj2;
                    }
                });
                if (!initConfig.isSupportMultiProcess()) {
                    sP(context, initConfig);
                } else {
                    com.bytedance.sdk.openadsdk.multipro.aidl.Sj.Sj().Sj(new com.bytedance.sdk.openadsdk.multipro.aidl.sP() {
                        @Override
                        public void onServiceConnected() {
                            sef.sP().post(new Runnable() {
                                @Override
                                public void run() {
                                    AnonymousClass6 anonymousClass6 = AnonymousClass6.this;
                                    PAGSdk.sP(context, initConfig);
                                }
                            });
                        }
                    });
                    com.bytedance.sdk.openadsdk.multipro.aidl.Sj.Sj().TKC();
                }
            } catch (Throwable unused) {
                Sj(initConfig, pAGInitCallback);
            }
        } catch (Throwable unused2) {
            sP(4000, "Internal Error, setting exception. ");
        }
    }

    public static void getBiddingToken(final BiddingTokenCallback biddingTokenCallback) {
        if (biddingTokenCallback == null) {
            return;
        }
        if (com.bytedance.sdk.openadsdk.common.HiB.Sj()) {
            biddingTokenCallback.onBiddingTokenCollected(null);
        } else {
            JcM.HiB(new com.bytedance.sdk.component.Dq.Dq("getBiddingToken") {
                @Override
                public void run() {
                    biddingTokenCallback.onBiddingTokenCollected(PAGSdk.getBiddingToken());
                }
            });
        }
    }

    private static void Sj(InitConfig initConfig, PAGInitCallback pAGInitCallback) {
        sef.Sj(2);
        if (pAGInitCallback != null) {
            if (initConfig instanceof PAGConfig) {
                sP(4000, "resources not found, if you use aab please call PAGConfig.setPackageName");
            } else {
                sP(4000, "resources not found, if you use aab please call TTAdConfig.setPackageName");
            }
        }
    }

    public static void getBiddingToken(final String str, final BiddingTokenCallback biddingTokenCallback) {
        if (biddingTokenCallback == null) {
            return;
        }
        if (com.bytedance.sdk.openadsdk.common.HiB.Sj()) {
            biddingTokenCallback.onBiddingTokenCollected(null);
        } else {
            JcM.HiB(new com.bytedance.sdk.component.Dq.Dq("getBiddingToken") {
                @Override
                public void run() {
                    biddingTokenCallback.onBiddingTokenCollected(PAGSdk.getBiddingToken(str));
                }
            });
        }
    }

    public static String getBiddingToken(Context context) {
        if (com.bytedance.sdk.openadsdk.common.HiB.Sj()) {
            return null;
        }
        dNu.sP(context);
        return getBiddingToken();
    }

    private static void Sj(final Context context, final boolean z10, final InitConfig initConfig, final long j10, final long j11) {
        com.bytedance.sdk.openadsdk.Zq.TKC.Sj();
        com.bytedance.sdk.openadsdk.Zq.TKC.Sj("pangle_sdk_init", false, new com.bytedance.sdk.openadsdk.Zq.sP() {
            @Override
            public com.bytedance.sdk.openadsdk.Zq.Sj.TKC getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                try {
                    boolean zTKC = com.bytedance.sdk.openadsdk.core.uA.sP().TKC();
                    jSONObject.put("duration", j10);
                    jSONObject.put("sdk_init_time", j11);
                    jSONObject.put("is_async", true);
                    jSONObject.put("is_multi_process", initConfig.isSupportMultiProcess());
                    jSONObject.put("is_debug", PAGSdk.sP(initConfig));
                    jSONObject.put("is_use_texture_view", initConfig.isUseTextureView());
                    jSONObject.put("is_activate_init", zTKC);
                    jSONObject.put("minSdkVersion", Mts.Ym(context));
                    jSONObject.put("targetSdkVersion", Mts.TEQ(context));
                    jSONObject.put("apm_is_init", ApmHelper.isIsInit());
                    jSONObject.put("is_success", z10);
                    com.bytedance.sdk.openadsdk.core.uA.sP().sP(false);
                } catch (Exception e10) {
                    sU.Sj("TTAD.PAGSdk", "run: ", e10);
                }
                return com.bytedance.sdk.openadsdk.Zq.Sj.EjP.sP().Sj("pangle_sdk_init").sP(jSONObject.toString());
            }
        });
    }

    public static void EjP() {
        sef.Sj(1);
        try {
            List<PAGInitCallback> list = PAGInitHelper.CALLBACK_LIST;
            synchronized (list) {
                try {
                    Iterator<PAGInitCallback> it = list.iterator();
                    while (it.hasNext()) {
                        PAGInitCallback next = it.next();
                        if (next != null) {
                            it.remove();
                            next.success();
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            com.bytedance.sdk.openadsdk.dNu.TKC.sP(new com.bytedance.sdk.openadsdk.dNu.EjP() {
                @Override
                public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                    com.bytedance.sdk.openadsdk.dNu.sP.Sj sj2 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                    sj2.sP("init");
                    return sj2;
                }
            });
        } catch (Throwable th3) {
            sU.sP(th3.getMessage(), new Object[0]);
        }
    }

    public static String getBiddingToken(Context context, String str) {
        if (com.bytedance.sdk.openadsdk.common.HiB.Sj()) {
            return null;
        }
        dNu.sP(context);
        return getBiddingToken(str);
    }

    public static void TKC() {
        ShortcutManager shortcutManagerA;
        if (Build.VERSION.SDK_INT >= 26) {
            try {
                Context contextSj = dNu.Sj();
                if (contextSj == null || (shortcutManagerA = b.a(contextSj.getSystemService(a.a()))) == null) {
                    return;
                }
                com.bytedance.sdk.openadsdk.core.uA.sP().Sj(shortcutManagerA.isRequestPinShortcutSupported());
            } catch (Throwable unused) {
            }
        }
    }

    public static String getBiddingToken(String str) {
        if (com.bytedance.sdk.openadsdk.common.HiB.Sj()) {
            return null;
        }
        if (dNu.Sj() == null || ley.Sj() == null) {
            return "";
        }
        PAGBiddingRequest pAGBiddingRequest = new PAGBiddingRequest();
        pAGBiddingRequest.setSlotId(str);
        return ley.Sj().Sj(pAGBiddingRequest);
    }

    private static void TKC(InitConfig initConfig) {
        if (initConfig == null) {
            return;
        }
        if (!TextUtils.isEmpty(initConfig.getData())) {
            com.bytedance.sdk.openadsdk.core.uA.sP().TKC(initConfig.getData());
        }
        com.bytedance.sdk.openadsdk.core.uA.sP().TKC(sP(initConfig));
    }

    public static String getBiddingToken() {
        if (com.bytedance.sdk.openadsdk.common.HiB.Sj()) {
            return null;
        }
        return (dNu.Sj() == null || ley.Sj() == null) ? "" : ley.Sj().Sj((PAGBiddingRequest) null);
    }

    public static void sP(Context context, InitConfig initConfig) {
        long j10;
        try {
            if (isInitSuccess()) {
                EjP();
                return;
            }
            HiB(context, initConfig);
            long jElapsedRealtime = SystemClock.elapsedRealtime() - Sj;
            EjP();
            vS(context, initConfig);
            j10 = jElapsedRealtime;
            Sj(context, isInitSuccess(), initConfig, SystemClock.elapsedRealtime() - Sj, j10);
        } catch (Throwable th2) {
            th2.getMessage();
            sU.sP("TTAD.PAGSdk", th2.getMessage());
            long jElapsedRealtime2 = SystemClock.elapsedRealtime() - Sj;
            sP(4000, th2.getMessage());
            j10 = jElapsedRealtime2;
        }
    }

    public static boolean sP(InitConfig initConfig) {
        return ((PAGConfig) initConfig).getDebugLog();
    }

    public static void sP(int i10, String str) {
        sef.Sj(2);
        try {
            List<PAGInitCallback> list = PAGInitHelper.CALLBACK_LIST;
            synchronized (list) {
                try {
                    Iterator<PAGInitCallback> it = list.iterator();
                    while (it.hasNext()) {
                        PAGInitCallback next = it.next();
                        if (next != null) {
                            it.remove();
                            next.fail(i10, str);
                        }
                    }
                    com.bytedance.sdk.openadsdk.dNu.TKC.TKC(new com.bytedance.sdk.openadsdk.dNu.EjP() {
                        @Override
                        public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                            com.bytedance.sdk.openadsdk.dNu.sP.Sj sj2 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                            sj2.sP("init");
                            return sj2;
                        }
                    });
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            sU.sP(th3.getMessage(), new Object[0]);
        }
    }

    public static String sP(PAGBiddingRequest pAGBiddingRequest) {
        if (com.bytedance.sdk.openadsdk.common.HiB.Sj()) {
            return null;
        }
        return (dNu.Sj() == null || ley.Sj() == null) ? "" : ley.Sj().Sj(pAGBiddingRequest);
    }
}
