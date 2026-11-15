package com.vungle.ads.internal.platform;

import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageManager;
import android.media.AudioManager;
import android.os.Build;
import android.os.Environment;
import android.os.PowerManager;
import android.os.SystemClock;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.appset.AppSet;
import com.google.android.gms.appset.AppSetIdClient;
import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.vungle.ads.internal.executor.VungleThreadPoolExecutor;
import com.vungle.ads.internal.util.o;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class c implements d {
    public static final a Companion = new a(null);
    private static final String TAG = "AndroidPlatform";
    private com.vungle.ads.internal.model.a advertisingInfo;
    private String appSetId;
    private Integer appSetIdScope;
    private final AudioManager audioManager;
    private final Context context;
    private final boolean isSideLoaded;
    private final PowerManager powerManager;
    private final VungleThreadPoolExecutor uaExecutor;
    private String userAgent;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String getCarrierName$vungle_ads_release(Context context) {
            Intrinsics.h(context, "context");
            Object systemService = context.getSystemService("phone");
            Intrinsics.f(systemService, "null cannot be cast to non-null type android.telephony.TelephonyManager");
            return ((TelephonyManager) systemService).getNetworkOperatorName();
        }

        private a() {
        }
    }

    public c(Context context, VungleThreadPoolExecutor uaExecutor) {
        Intrinsics.h(context, "context");
        Intrinsics.h(uaExecutor, "uaExecutor");
        this.context = context;
        this.uaExecutor = uaExecutor;
        updateAppSetID();
        Object systemService = context.getSystemService("power");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.os.PowerManager");
        this.powerManager = (PowerManager) systemService;
        Object systemService2 = context.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        Intrinsics.f(systemService2, "null cannot be cast to non-null type android.media.AudioManager");
        this.audioManager = (AudioManager) systemService2;
    }

    private final com.vungle.ads.internal.model.a getAmazonAdvertisingInfo() {
        com.vungle.ads.internal.model.a aVar = new com.vungle.ads.internal.model.a();
        try {
            ContentResolver contentResolver = this.context.getContentResolver();
            boolean z10 = true;
            if (Settings.Secure.getInt(contentResolver, "limit_ad_tracking") != 1) {
                z10 = false;
            }
            aVar.setLimitAdTracking(z10);
            aVar.setAdvertisingId(Settings.Secure.getString(contentResolver, "advertising_id"));
        } catch (Settings.SettingNotFoundException e10) {
            o.Companion.w(TAG, "Error getting Amazon advertising info: Setting not found.", e10);
        } catch (Exception e11) {
            o.Companion.w(TAG, "Error getting Amazon advertising info", e11);
        }
        return aVar;
    }

    private final com.vungle.ads.internal.model.a getGoogleAdvertisingInfo() {
        com.vungle.ads.internal.model.a aVar = new com.vungle.ads.internal.model.a();
        try {
            AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(this.context);
            Intrinsics.g(advertisingIdInfo, "getAdvertisingIdInfo(context)");
            aVar.setAdvertisingId(advertisingIdInfo.getId());
            aVar.setLimitAdTracking(advertisingIdInfo.isLimitAdTrackingEnabled());
        } catch (GooglePlayServicesNotAvailableException e10) {
            o.Companion.e(TAG, "Play services Not available: " + e10.getLocalizedMessage());
        } catch (Exception e11) {
            o.Companion.e(TAG, "Error getting Google advertising info: " + e11.getLocalizedMessage());
        } catch (NoClassDefFoundError e12) {
            o.Companion.e(TAG, "Play services Not available: " + e12.getLocalizedMessage());
            aVar.setAdvertisingId(Settings.Secure.getString(this.context.getContentResolver(), "advertising_id"));
        }
        return aVar;
    }

    public static final void m414getUserAgentLazy$lambda0(c this$0, androidx.core.util.a consumer) {
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(consumer, "$consumer");
        e.INSTANCE.getUserAgent(this$0.context, consumer);
    }

    private final void updateAppSetID() {
        String str = this.appSetId;
        if (str == null || str.length() == 0) {
            try {
                AppSetIdClient client = AppSet.getClient(this.context);
                Intrinsics.g(client, "getClient(context)");
                Task appSetIdInfo = client.getAppSetIdInfo();
                Intrinsics.g(appSetIdInfo, "client.appSetIdInfo");
                appSetIdInfo.addOnSuccessListener(new OnSuccessListener() {
                    @Override
                    public final void onSuccess(Object obj) {
                        c.m415updateAppSetID$lambda4(this.f58414a, (AppSetIdInfo) obj);
                    }
                });
            } catch (Exception e10) {
                o.Companion.e(TAG, "Error getting AppSetID: " + e10.getLocalizedMessage());
            } catch (NoClassDefFoundError e11) {
                o.Companion.e(TAG, "Required libs to get AppSetID Not available: " + e11.getLocalizedMessage());
            }
        }
    }

    public static final void m415updateAppSetID$lambda4(c this$0, AppSetIdInfo appSetIdInfo) {
        Intrinsics.h(this$0, "this$0");
        if (appSetIdInfo != null) {
            this$0.appSetId = appSetIdInfo.getId();
            this$0.appSetIdScope = Integer.valueOf(appSetIdInfo.getScope());
        }
    }

    @Override
    public com.vungle.ads.internal.model.a getAdvertisingInfo() {
        String advertisingId;
        com.vungle.ads.internal.model.a aVar = this.advertisingInfo;
        if (aVar != null && (advertisingId = aVar.getAdvertisingId()) != null && advertisingId.length() != 0) {
            return aVar;
        }
        com.vungle.ads.internal.model.a amazonAdvertisingInfo = StringsKt.H(Build.MANUFACTURER, "Amazon", true) ? getAmazonAdvertisingInfo() : getGoogleAdvertisingInfo();
        this.advertisingInfo = amazonAdvertisingInfo;
        return amazonAdvertisingInfo;
    }

    @Override
    public String getAppSetId() {
        return this.appSetId;
    }

    @Override
    public Integer getAppSetIdScope() {
        return this.appSetIdScope;
    }

    @Override
    public long getBuildTime() {
        return Build.TIME;
    }

    @Override
    public String getCarrierName() {
        String carrierName$vungle_ads_release = Companion.getCarrierName$vungle_ads_release(this.context);
        Intrinsics.g(carrierName$vungle_ads_release, "getCarrierName(context)");
        return carrierName$vungle_ads_release;
    }

    @Override
    public long getLastBootTime() {
        return System.currentTimeMillis() - SystemClock.elapsedRealtime();
    }

    @Override
    public long getOSInstallationTime() {
        Object objM453constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(Long.valueOf((Build.VERSION.SDK_INT >= 33 ? this.context.getPackageManager().getPackageInfo("android", PackageManager.PackageInfoFlags.of(0L)) : this.context.getPackageManager().getPackageInfo("android", 0)).firstInstallTime));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null) {
            if (thM456exceptionOrNullimpl instanceof PackageManager.NameNotFoundException) {
                o.Companion.e(TAG, "Error getting OS installation time: " + ((PackageManager.NameNotFoundException) thM456exceptionOrNullimpl).getLocalizedMessage());
            }
            objM453constructorimpl = -1L;
        }
        return ((Number) objM453constructorimpl).longValue();
    }

    @Override
    public String getUserAgent() {
        String str = this.userAgent;
        return str == null ? System.getProperty("http.agent") : str;
    }

    @Override
    public void getUserAgentLazy(final androidx.core.util.a consumer) {
        Intrinsics.h(consumer, "consumer");
        this.uaExecutor.execute(new Runnable() {
            @Override
            public final void run() {
                c.m414getUserAgentLazy$lambda0(this.f58412a, consumer);
            }
        });
    }

    @Override
    public float getVolumeLevel() {
        try {
            return this.audioManager.getStreamVolume(3) / this.audioManager.getStreamMaxVolume(3);
        } catch (Exception unused) {
            return 0.0f;
        }
    }

    @Override
    public boolean isBatterySaverEnabled() {
        return this.powerManager.isPowerSaveMode();
    }

    @Override
    public boolean isSdCardPresent() {
        try {
            return Intrinsics.c(Environment.getExternalStorageState(), "mounted");
        } catch (Exception e10) {
            o.Companion.e(TAG, "Acquiring external storage state failed", e10);
            return false;
        }
    }

    @Override
    public boolean isSideLoaded() {
        return this.isSideLoaded;
    }

    @Override
    public boolean isSilentModeEnabled() {
        try {
            return this.audioManager.getRingerMode() == 0 || this.audioManager.getRingerMode() == 1;
        } catch (Exception unused) {
            return false;
        }
    }

    @Override
    public boolean isSoundEnabled() {
        try {
            return this.audioManager.getStreamVolume(3) > 0;
        } catch (Exception unused) {
            return true;
        }
    }

    public void setUserAgent(String str) {
        this.userAgent = str;
    }
}
