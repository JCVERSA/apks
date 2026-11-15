package com.vungle.ads.internal;

import android.content.Context;
import com.vungle.ads.AnalyticsClient;
import com.vungle.ads.InvalidAppId;
import com.vungle.ads.OutOfMemory;
import com.vungle.ads.SdkNotInitialized;
import com.vungle.ads.SdkVersionTooLow;
import com.vungle.ads.ServiceLocator;
import com.vungle.ads.VungleError;
import com.vungle.ads.VungleWrapperFramework;
import com.vungle.ads.internal.downloader.Downloader;
import com.vungle.ads.internal.model.ConfigPayload;
import com.vungle.ads.internal.network.VungleApiClient;
import com.vungle.ads.internal.privacy.PrivacyManager;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import com.vungle.ads.internal.task.CleanupJob;
import com.vungle.ads.internal.util.n;
import com.vungle.ads.internal.util.o;
import com.vungle.ads.internal.util.p;
import com.vungle.ads.internal.util.u;
import com.vungle.ads.internal.util.v;
import com.vungle.ads.m;
import com.vungle.ads.w;
import com.vungle.ads.x;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class VungleInitializer {
    public static final a Companion = new a(null);
    private static final String TAG = "VungleInitializer";
    private AtomicBoolean isInitialized = new AtomicBoolean(false);
    private AtomicBoolean isInitializing = new AtomicBoolean(false);
    private final CopyOnWriteArrayList<m> initializationCallbackArray = new CopyOnWriteArrayList<>();
    private final x initDurationMetric = new x(Sdk$SDKMetric.SDKMetricType.INIT_TO_SUCCESS_CALLBACK_DURATION_MS);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final void configure(final Context context, String str) {
        boolean z10;
        try {
            ServiceLocator.Companion companion = ServiceLocator.Companion;
            LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
            Lazy lazyA = LazyKt.a(lazyThreadSafetyMode, new Function0<com.vungle.ads.internal.persistence.b>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.persistence.b, java.lang.Object] */
                @Override
                public final com.vungle.ads.internal.persistence.b invoke() {
                    return ServiceLocator.Companion.getInstance(context).getService(com.vungle.ads.internal.persistence.b.class);
                }
            });
            ConfigManager configManager = ConfigManager.INSTANCE;
            ConfigPayload cachedConfig = configManager.getCachedConfig(m372configure$lambda4(lazyA), str);
            if (cachedConfig != null) {
                ConfigManager.initWithConfig$vungle_ads_release$default(configManager, context, cachedConfig, true, null, 8, null);
                z10 = true;
            } else {
                z10 = false;
            }
            this.isInitialized.set(true);
            onInitSuccess();
            o.Companion.d(TAG, "Running cleanup and resend tpat jobs. " + Thread.currentThread().getId());
            m373configure$lambda5(LazyKt.a(lazyThreadSafetyMode, new Function0<com.vungle.ads.internal.task.d>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.task.d, java.lang.Object] */
                @Override
                public final com.vungle.ads.internal.task.d invoke() {
                    return ServiceLocator.Companion.getInstance(context).getService(com.vungle.ads.internal.task.d.class);
                }
            })).execute(CleanupJob.a.makeJobInfo$default(CleanupJob.Companion, null, 1, null));
            if (z10) {
                downloadMraidJs(context);
            } else {
                configManager.fetchConfigAsync$vungle_ads_release(context, new Function1<Boolean, Unit>() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override
                    public Object invoke(Object obj) {
                        invoke(((Boolean) obj).booleanValue());
                        return Unit.f64096a;
                    }

                    public final void invoke(boolean z11) {
                        if (z11) {
                            VungleInitializer.this.downloadMraidJs(context);
                        }
                    }
                });
            }
        } catch (Throwable th2) {
            o.Companion.e(TAG, "Cannot get config", th2);
        }
    }

    private static final com.vungle.ads.internal.persistence.b m372configure$lambda4(Lazy<com.vungle.ads.internal.persistence.b> lazy) {
        return (com.vungle.ads.internal.persistence.b) lazy.getValue();
    }

    private static final com.vungle.ads.internal.task.d m373configure$lambda5(Lazy<? extends com.vungle.ads.internal.task.d> lazy) {
        return (com.vungle.ads.internal.task.d) lazy.getValue();
    }

    public final void downloadMraidJs(final Context context) {
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        com.vungle.ads.internal.load.i.INSTANCE.downloadJs(m374downloadMraidJs$lambda6(LazyKt.a(lazyThreadSafetyMode, new Function0<p>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.util.p, java.lang.Object] */
            @Override
            public final p invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(p.class);
            }
        })), m375downloadMraidJs$lambda7(LazyKt.a(lazyThreadSafetyMode, new Function0<Downloader>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.downloader.Downloader, java.lang.Object] */
            @Override
            public final Downloader invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(Downloader.class);
            }
        })), m376downloadMraidJs$lambda8(LazyKt.a(lazyThreadSafetyMode, new Function0<com.vungle.ads.internal.executor.a>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.executor.a, java.lang.Object] */
            @Override
            public final com.vungle.ads.internal.executor.a invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(com.vungle.ads.internal.executor.a.class);
            }
        })).getBackgroundExecutor(), (24 & 8) != 0 ? null : null, (24 & 16) != 0 ? null : null);
    }

    private static final p m374downloadMraidJs$lambda6(Lazy<p> lazy) {
        return (p) lazy.getValue();
    }

    private static final Downloader m375downloadMraidJs$lambda7(Lazy<? extends Downloader> lazy) {
        return (Downloader) lazy.getValue();
    }

    private static final com.vungle.ads.internal.executor.a m376downloadMraidJs$lambda8(Lazy<? extends com.vungle.ads.internal.executor.a> lazy) {
        return (com.vungle.ads.internal.executor.a) lazy.getValue();
    }

    private final boolean hasInvalidChar(String str) {
        for (int i10 = 0; i10 < str.length(); i10++) {
            char cCharAt = str.charAt(i10);
            if (!Character.isLetterOrDigit(cCharAt) && cCharAt != '.') {
                return true;
            }
        }
        return false;
    }

    private static final com.vungle.ads.internal.executor.a m377init$lambda0(Lazy<? extends com.vungle.ads.internal.executor.a> lazy) {
        return (com.vungle.ads.internal.executor.a) lazy.getValue();
    }

    private static final VungleApiClient m378init$lambda1(Lazy<VungleApiClient> lazy) {
        return (VungleApiClient) lazy.getValue();
    }

    public static final void m379init$lambda2(Context context, String appId, VungleInitializer this$0, Lazy vungleApiClient$delegate) {
        Intrinsics.h(context, "$context");
        Intrinsics.h(appId, "$appId");
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(vungleApiClient$delegate, "$vungleApiClient$delegate");
        PrivacyManager.INSTANCE.init(context);
        m378init$lambda1(vungleApiClient$delegate).initialize(appId);
        this$0.configure(context, appId);
    }

    public static final void m380init$lambda3(VungleInitializer this$0) {
        Intrinsics.h(this$0, "this$0");
        this$0.onInitError(new OutOfMemory("Config: Out of Memory").logError$vungle_ads_release());
    }

    private final boolean isAppIdInvalid(String str) {
        return StringsKt.q0(str) || hasInvalidChar(str);
    }

    public static void isInitialized$vungle_ads_release$annotations() {
    }

    public static void isInitializing$vungle_ads_release$annotations() {
    }

    private final void onInitError(final VungleError vungleError) {
        this.isInitializing.set(false);
        String localizedMessage = vungleError.getLocalizedMessage();
        if (localizedMessage == null) {
            localizedMessage = "Exception code is " + vungleError.getCode();
        }
        this.initDurationMetric.setMetricType(Sdk$SDKMetric.SDKMetricType.INIT_TO_FAIL_CALLBACK_DURATION_MS);
        this.initDurationMetric.markEnd();
        AnalyticsClient.INSTANCE.logMetric$vungle_ads_release(this.initDurationMetric, (n) null, localizedMessage);
        u.INSTANCE.runOnUiThread(new Function0<Unit>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m381invoke();
                return Unit.f64096a;
            }

            public final void m381invoke() {
                o.Companion.e(VungleInitializer.TAG, "onError");
                CopyOnWriteArrayList copyOnWriteArrayList = VungleInitializer.this.initializationCallbackArray;
                VungleError vungleError2 = vungleError;
                Iterator it = copyOnWriteArrayList.iterator();
                while (it.hasNext()) {
                    ((m) it.next()).onError(vungleError2);
                }
                VungleInitializer.this.initializationCallbackArray.clear();
            }
        });
        o.Companion.e(TAG, localizedMessage);
    }

    private final void onInitSuccess() {
        this.isInitializing.set(false);
        this.initDurationMetric.setMetricType(Sdk$SDKMetric.SDKMetricType.INIT_TO_SUCCESS_CALLBACK_DURATION_MS);
        this.initDurationMetric.markEnd();
        AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, this.initDurationMetric, (n) null, (String) null, 6, (Object) null);
        o.Companion.d(TAG, "onSuccess " + Thread.currentThread().getId());
        u.INSTANCE.runOnUiThread(new Function0<Unit>() {
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m382invoke();
                return Unit.f64096a;
            }

            public final void m382invoke() {
                Iterator it = VungleInitializer.this.initializationCallbackArray.iterator();
                while (it.hasNext()) {
                    ((m) it.next()).onSuccess();
                }
                VungleInitializer.this.initializationCallbackArray.clear();
            }
        });
    }

    public final void deInit$vungle_ads_release() {
        ServiceLocator.Companion.deInit();
        VungleApiClient.Companion.reset$vungle_ads_release();
        this.isInitialized.set(false);
        this.isInitializing.set(false);
        this.initializationCallbackArray.clear();
    }

    public final void init(final String appId, final Context context, m initializationCallback) {
        Intrinsics.h(appId, "appId");
        Intrinsics.h(context, "context");
        Intrinsics.h(initializationCallback, "initializationCallback");
        AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, new w(Sdk$SDKMetric.SDKMetricType.SDK_INIT_API), (n) null, (String) null, 6, (Object) null);
        this.initDurationMetric.markStart();
        this.initializationCallbackArray.add(initializationCallback);
        if (isAppIdInvalid(appId)) {
            onInitError(new InvalidAppId("App id invalid: " + appId + ", package name: " + context.getPackageName()).logError$vungle_ads_release());
            return;
        }
        if (v.INSTANCE.isOSVersionInvalid()) {
            o.Companion.e(TAG, "Init: SDK is supported only for API versions 25 and above.");
            onInitError(new SdkVersionTooLow("Init: SDK is supported only for API versions 25 and above.").logError$vungle_ads_release());
            return;
        }
        ConfigManager.INSTANCE.setAppId$vungle_ads_release(appId);
        if (this.isInitialized.get()) {
            o.Companion.d(TAG, "init already complete");
            onInitSuccess();
            return;
        }
        if (this.isInitializing.getAndSet(true)) {
            o.Companion.d(TAG, "init already in progress");
            return;
        }
        if (androidx.core.content.b.checkSelfPermission(context, "android.permission.ACCESS_NETWORK_STATE") != 0 || androidx.core.content.b.checkSelfPermission(context, "android.permission.INTERNET") != 0) {
            o.Companion.e(TAG, "Network permissions not granted");
            onInitError(new SdkNotInitialized("Network permissions not granted").logError$vungle_ads_release());
            return;
        }
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        Lazy lazyA = LazyKt.a(lazyThreadSafetyMode, new Function0<com.vungle.ads.internal.executor.a>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.executor.a, java.lang.Object] */
            @Override
            public final com.vungle.ads.internal.executor.a invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(com.vungle.ads.internal.executor.a.class);
            }
        });
        final Lazy lazyA2 = LazyKt.a(lazyThreadSafetyMode, new Function0<VungleApiClient>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.network.VungleApiClient, java.lang.Object] */
            @Override
            public final VungleApiClient invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(VungleApiClient.class);
            }
        });
        m377init$lambda0(lazyA).getBackgroundExecutor().execute(new Runnable() {
            @Override
            public final void run() {
                VungleInitializer.m379init$lambda2(context, appId, this, lazyA2);
            }
        }, new Runnable() {
            @Override
            public final void run() {
                VungleInitializer.m380init$lambda3(this.f58368a);
            }
        });
    }

    public final boolean isInitialized() {
        return this.isInitialized.get();
    }

    public final AtomicBoolean isInitialized$vungle_ads_release() {
        return this.isInitialized;
    }

    public final AtomicBoolean isInitializing$vungle_ads_release() {
        return this.isInitializing;
    }

    public final void setInitialized$vungle_ads_release(AtomicBoolean atomicBoolean) {
        Intrinsics.h(atomicBoolean, "<set-?>");
        this.isInitialized = atomicBoolean;
    }

    public final void setInitializing$vungle_ads_release(AtomicBoolean atomicBoolean) {
        Intrinsics.h(atomicBoolean, "<set-?>");
        this.isInitializing = atomicBoolean;
    }

    public final void setIntegrationName(VungleWrapperFramework wrapperFramework, String wrapperFrameworkVersion) {
        String str;
        Intrinsics.h(wrapperFramework, "wrapperFramework");
        Intrinsics.h(wrapperFrameworkVersion, "wrapperFrameworkVersion");
        if (wrapperFramework == VungleWrapperFramework.none) {
            o.Companion.e(TAG, "Wrapper is null or is none");
            return;
        }
        com.vungle.ads.internal.network.k kVar = com.vungle.ads.internal.network.k.INSTANCE;
        String headerUa = kVar.getHeaderUa();
        if (wrapperFrameworkVersion.length() > 0) {
            str = '/' + wrapperFrameworkVersion;
        } else {
            str = "";
        }
        String str2 = wrapperFramework.name() + str;
        if (StringsKt.c0(headerUa, str2, false, 2, null)) {
            o.Companion.w(TAG, "Wrapper info already set");
            return;
        }
        kVar.setHeaderUa(headerUa + ';' + str2);
        if (isInitialized()) {
            o.Companion.w(TAG, "VUNGLE WARNING: SDK already initialized, you should've set wrapper info before");
        }
    }
}
