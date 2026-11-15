package com.hisavana.mediation.config;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import c7.b;
import com.cloud.hisavana.sdk.common.util.k0;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.cloud.sdk.commonutil.util.MitNetUtil;
import com.cloud.sdk.commonutil.util.Preconditions;
import com.cloud.sdk.commonutil.util.e;
import com.cloud.sdk.commonutil.util.m;
import com.hisavana.common.base.LogSwitch;
import com.hisavana.common.bean.AdMuteStatus;
import com.hisavana.common.bean.AppStartInfo;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.constant.ComConstants;
import com.hisavana.common.tracking.TrackingKey;
import com.hisavana.common.tracking.TrackingManager;
import com.hisavana.common.utils.AdLogUtil;
import com.transsion.ga.AthenaAnalytics;
import ee.o;
import ee.u;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import k7.c;
import l7.a;

public final class TAdManager {

    public static AdConfig f32410a;

    public static boolean f32411b;

    public static final class AdConfig {

        public boolean f32412a;

        public boolean f32413b;

        public String f32414c;

        public boolean f32415d;

        public boolean f32416e;

        public boolean f32417f = false;

        public String f32418g;

        public List<String> f32419h;

        public boolean f32420i;

        public int f32421j;

        public OnCloudCompleteListener f32422k;

        public boolean f32423l;

        public int f32424m;

        public long f32425n;

        public boolean f32426o;

        public boolean f32427p;

        public boolean f32428q;

        public String f32429r;

        public boolean f32430s;

        public AdConfig(AdConfigBuilder adConfigBuilder) {
            this.f32412a = false;
            this.f32413b = false;
            this.f32415d = false;
            this.f32420i = true;
            this.f32423l = false;
            this.f32426o = false;
            this.f32427p = false;
            this.f32428q = false;
            this.f32429r = "";
            this.f32430s = false;
            this.f32412a = adConfigBuilder.f32433c;
            this.f32413b = adConfigBuilder.f32434d;
            this.f32414c = adConfigBuilder.f32431a;
            this.f32415d = adConfigBuilder.f32435e;
            this.f32416e = adConfigBuilder.f32446p;
            this.f32418g = adConfigBuilder.f32437g;
            this.f32420i = adConfigBuilder.f32436f;
            this.f32419h = adConfigBuilder.f32438h;
            this.f32421j = adConfigBuilder.f32432b;
            this.f32422k = adConfigBuilder.f32441k;
            this.f32423l = adConfigBuilder.f32442l;
            this.f32424m = adConfigBuilder.f32444n;
            this.f32425n = adConfigBuilder.f32445o;
            this.f32426o = adConfigBuilder.f32447q;
            this.f32427p = adConfigBuilder.f32448r;
            this.f32428q = adConfigBuilder.f32449s;
            this.f32429r = adConfigBuilder.f32450t;
            this.f32430s = adConfigBuilder.f32451u;
            AppStartInfo.channel = adConfigBuilder.f32439i;
            AppStartInfo.extInfo = adConfigBuilder.f32440j;
            AdMuteStatus.MUTE_ALL = adConfigBuilder.f32443m;
        }

        public boolean checkEnableRewardedToast() {
            if (TAdManager.f32410a != null) {
                return TAdManager.f32410a.f32427p;
            }
            return true;
        }

        public boolean checkEnableWebRecommendFeature() {
            if (TAdManager.f32410a != null) {
                return TAdManager.f32410a.f32428q;
            }
            return true;
        }

        public int getAppIconId() {
            return this.f32421j;
        }

        public String getAppId() {
            return this.f32414c;
        }

        public List<String> getCodeSeatIds() {
            return this.f32419h;
        }

        public int getDefaultMaterialMaxSize() {
            return this.f32424m;
        }

        public long getDefaultVersion() {
            return this.f32425n;
        }

        public String getPangleAppId() {
            return this.f32429r;
        }

        public boolean getPkgEvn() {
            return this.f32413b;
        }

        public boolean getShouldOptimizeImageLoading() {
            return this.f32426o;
        }

        public boolean isClosePangleWebFileLock() {
            return this.f32430s;
        }

        public boolean isDebug() {
            return this.f32412a;
        }

        public boolean isEnableGDPR() {
            return this.f32416e;
        }

        public boolean isInitAdmob() {
            return this.f32423l;
        }

        public boolean isInitAlliance() {
            return this.f32420i;
        }

        public boolean isLite() {
            return this.f32417f;
        }

        public boolean isTestDevice() {
            return this.f32415d;
        }

        public void releaseCloudListener() {
            this.f32422k = null;
        }

        public void setCodeSeatIds(List<String> list) {
            if (this.f32419h == null) {
                this.f32419h = new ArrayList();
            }
            this.f32419h.clear();
            HashSet hashSet = new HashSet(list);
            list.clear();
            list.addAll(hashSet);
            this.f32419h.addAll(list);
        }
    }

    public static final class AdConfigBuilder {

        public int f32432b;

        public String f32437g;

        public List<String> f32438h;

        public Map<String, String> f32440j;

        public OnCloudCompleteListener f32441k;

        public boolean f32442l;

        public int f32444n;

        public long f32445o;

        public String f32431a = "";

        public boolean f32433c = false;

        public boolean f32434d = false;

        public boolean f32435e = false;

        public boolean f32436f = true;

        public String f32439i = "";

        public boolean f32443m = true;

        public boolean f32446p = true;

        public boolean f32447q = false;

        public boolean f32448r = true;

        public boolean f32449s = false;

        public String f32450t = "";

        public boolean f32451u = false;

        public AdConfig build() {
            return new AdConfig(this);
        }

        public AdConfigBuilder closePangleWebFileLock(boolean z10) {
            this.f32451u = z10;
            return this;
        }

        public AdConfigBuilder initAlliance(boolean z10) {
            this.f32436f = z10;
            return this;
        }

        public AdConfigBuilder initPangleAdvance(String str) {
            this.f32450t = str;
            return this;
        }

        public AdConfigBuilder isInitAdMob(boolean z10) {
            this.f32442l = z10;
            return this;
        }

        public AdConfigBuilder setAhaChannel(String str) {
            this.f32437g = str;
            return this;
        }

        public AdConfigBuilder setAppIconId(int i10) {
            this.f32432b = i10;
            return this;
        }

        public AdConfigBuilder setAppId(String str) {
            Preconditions.c(str, "appId can not be null");
            this.f32431a = str;
            return this;
        }

        public AdConfigBuilder setChannel(String str) {
            this.f32439i = str;
            return this;
        }

        public AdConfigBuilder setCloudCompleteListener(OnCloudCompleteListener onCloudCompleteListener) {
            this.f32441k = onCloudCompleteListener;
            return this;
        }

        public AdConfigBuilder setCodeSeatIds(List<String> list) {
            this.f32438h = list;
            return this;
        }

        public AdConfigBuilder setCustomParams(Map<String, String> map) {
            if (map != null && !map.isEmpty()) {
                this.f32440j = new HashMap();
                if (map.size() <= 10) {
                    this.f32440j.putAll(map);
                } else {
                    int i10 = 0;
                    for (Map.Entry<String, String> entry : map.entrySet()) {
                        if (i10 >= 10) {
                            break;
                        }
                        if (entry != null) {
                            i10++;
                            this.f32440j.put(entry.getKey(), entry.getValue());
                        }
                    }
                }
            }
            return this;
        }

        public AdConfigBuilder setDebug(boolean z10) {
            this.f32433c = z10;
            this.f32434d = z10;
            return this;
        }

        public AdConfigBuilder setDefaultMaterialCacheSize(int i10) {
            this.f32444n = i10;
            return this;
        }

        public AdConfigBuilder setEnableWebRecommendFeature(boolean z10) {
            this.f32449s = z10;
            return this;
        }

        public AdConfigBuilder setInternalDefaultAdVersion(long j10) {
            this.f32445o = j10;
            return this;
        }

        public AdConfigBuilder setMuteVideo(boolean z10) {
            this.f32443m = z10;
            AdLogUtil.Log().d("TAdManager", "SDK init , muteAllAd = " + z10);
            return this;
        }

        public AdConfigBuilder setRewardedCompletionToastEnabled(boolean z10) {
            this.f32448r = z10;
            return this;
        }

        public AdConfigBuilder setShouldOptimizeImageLoading(boolean z10) {
            this.f32447q = z10;
            return this;
        }

        public AdConfigBuilder testDevice(boolean z10) {
            this.f32435e = z10;
            return this;
        }
    }

    public interface OnCloudCompleteListener {
        void onCloudComplete(int i10, String str);
    }

    public static void b() {
        if (f32410a != null) {
            try {
                AthenaAnalytics.a0(TrackingManager.TID, "mediation" + c.l());
            } catch (Throwable unused) {
            }
            AthenaAnalytics.Q(e.a(), "Mediation", TrackingManager.TID, f32410a.isDebug(), false);
            AthenaAnalytics.D(true);
            AthenaAnalytics.s(ComConstants.HS_APPID, getAppId());
            AthenaAnalytics.s(ComConstants.HS_VER, c.l());
        }
    }

    public static void c() {
        o.a().d(e.a(), f32410a);
    }

    public static void d() {
        boolean z10;
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jI = a.e().i(ComConstants.APP_ACTIVE_TIME, 0L);
        long jI2 = a.e().i(ComConstants.FIRST_START_FOR_ONE_DAY, 0L);
        long jC = k0.c(jCurrentTimeMillis);
        if (jI == 0) {
            a.e().q(ComConstants.APP_ACTIVE_TIME, jCurrentTimeMillis);
        } else {
            jCurrentTimeMillis = jI;
        }
        if (jI2 != jC) {
            a.e().q(ComConstants.FIRST_START_FOR_ONE_DAY, jC);
            z10 = true;
        } else {
            z10 = false;
        }
        AppStartInfo.activeTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss SSS Z").format(new Date(jCurrentTimeMillis));
        AppStartInfo.isFirstStartToday = z10;
    }

    public static void e() {
        Bundle bundle = new Bundle();
        bundle.putLong(TrackingKey.INIT_TS, System.currentTimeMillis());
        bundle.putString(TrackingKey.CLD_APP_ID, getAppId());
        TrackingManager.trackInit(bundle);
    }

    public static String getAhaChannel() {
        AdConfig adConfig = f32410a;
        if (adConfig != null) {
            return adConfig.f32418g;
        }
        return null;
    }

    public static String getAppId() {
        AdConfig adConfig = f32410a;
        if (adConfig != null) {
            return adConfig.f32414c;
        }
        return null;
    }

    public static OnCloudCompleteListener getCloudCompleteListener() {
        AdConfig adConfig = f32410a;
        if (adConfig != null) {
            return adConfig.f32422k;
        }
        return null;
    }

    public static List<String> getCodeSeatIds() {
        AdConfig adConfig = f32410a;
        if (adConfig == null || adConfig.f32419h == null) {
            return null;
        }
        return new ArrayList(f32410a.f32419h);
    }

    public static synchronized void init(@NonNull final Context context, @NonNull AdConfig adConfig) {
        AdLogUtil.Log().e(ComConstants.SDK_INIT, "========================== HiSavana SDk init ========================== ");
        if (TextUtils.isEmpty(adConfig.f32414c)) {
            AdLogUtil.Log().e(ComConstants.SDK_INIT, "config or appId is null, please check");
            OnCloudCompleteListener onCloudCompleteListener = adConfig.f32422k;
            if (onCloudCompleteListener != null) {
                onCloudCompleteListener.onCloudComplete(TAdErrorCode.CODE_INVALID_APP_ID, "Invalid app id");
            }
            return;
        }
        e.g(context);
        d();
        HSScopeHelper.f22503a.g(new Runnable() {
            @Override
            public void run() {
                NetStateManager.setIsNetAvailable(MitNetUtil.c(context));
                CloudControlConfigSync.q();
            }
        });
        a(adConfig);
        f32411b = true;
    }

    public static boolean isDebug() {
        AdConfig adConfig = f32410a;
        if (adConfig != null) {
            return adConfig.f32412a;
        }
        return false;
    }

    public static boolean isTestDevice() {
        AdConfig adConfig = f32410a;
        if (adConfig != null) {
            return adConfig.isTestDevice();
        }
        return false;
    }

    public static void releaseCloudListener() {
        AdConfig adConfig = f32410a;
        if (adConfig != null) {
            adConfig.releaseCloudListener();
        }
    }

    public static void setAgeRestrictedUser(boolean z10) {
        AppStartInfo.ageRestrictedUser = z10;
    }

    public static void setCodeSeatIds(List<String> list) {
        if (list == null || list.size() == 0 || !f32411b) {
            AdLogUtil.Log().e(ComConstants.SDK_INIT, "setCodeSeatIds codeSeatIds is null or empty");
            return;
        }
        AdConfig adConfig = f32410a;
        if (adConfig == null) {
            AdLogUtil.Log().e(ComConstants.SDK_INIT, "setCodeSeatIds u must init first");
        } else {
            adConfig.setCodeSeatIds(list);
            CloudControlConfigSync.b(5);
        }
    }

    public static void setTrackSamplingFraction(int i10) {
        try {
            b.p(i10);
        } catch (Throwable unused) {
        }
    }

    public static void setUserConsent(boolean z10) {
        AppStartInfo.userConsent = z10;
    }

    public static void a(@NonNull AdConfig adConfig) {
        if (f32410a != null) {
            AdLogUtil.Log().w(ComConstants.SDK_INIT, "Already initialized");
            return;
        }
        u.b(adConfig.f32413b);
        if (!adConfig.f32412a) {
            adConfig.f32412a = Log.isLoggable("ADSDK", 3);
        }
        if (!adConfig.f32412a) {
            com.cloud.sdk.commonutil.util.c.NET_LOG.m().q(Log.isLoggable("AD_NET_LOG", 3));
        }
        AdLogUtil.Log().setLogSwitch(adConfig.f32412a);
        LogSwitch.isDebug = adConfig.f32412a;
        f32410a = adConfig;
        e.j(adConfig.f32412a);
        ComConstants.LITE = false;
        f32410a.f32417f = false;
        b();
        c();
        m.j((Application) e.a().getApplicationContext());
        e();
    }
}
