package com.hisavana.mediation.config;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.cloud.sdk.commonutil.util.MitNetUtil;
import com.cloud.sdk.commonutil.util.Preconditions;
import com.hisavana.common.base.LogSwitch;
import com.hisavana.common.bean.AdMuteStatus;
import com.hisavana.common.bean.AppStartInfo;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.constant.ComConstants;
import com.hisavana.common.tracking.TrackingKey;
import com.hisavana.common.tracking.TrackingManager;
import com.hisavana.common.utils.AdLogUtil;
import com.transsion.ga.AthenaAnalytics;
import defpackage.ja1;
import defpackage.jvd;
import defpackage.md8;
import defpackage.o9;
import defpackage.r6;
import defpackage.sod;
import defpackage.ul4;
import defpackage.una;
import defpackage.zk5;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;

public final class TAdManager {
    public static AdConfig a;
    public static boolean b;

    public static final class AdConfig {
        public boolean a;
        public boolean b;
        public String c;
        public boolean d;
        public boolean e;
        public boolean f = false;
        public String g;
        public List<String> h;
        public boolean i;
        public int j;
        public OnCloudCompleteListener k;
        public boolean l;
        public int m;
        public long n;
        public boolean o;
        public boolean p;
        public boolean q;
        public boolean r;
        public String s;
        public boolean t;

        public AdConfig(AdConfigBuilder adConfigBuilder) {
            this.a = false;
            this.b = false;
            this.d = false;
            this.i = true;
            this.l = false;
            this.o = false;
            this.p = false;
            this.q = false;
            this.r = true;
            this.s = "";
            this.t = false;
            this.a = adConfigBuilder.c;
            this.b = adConfigBuilder.d;
            this.c = adConfigBuilder.a;
            this.d = adConfigBuilder.e;
            this.e = adConfigBuilder.p;
            this.g = adConfigBuilder.g;
            this.i = adConfigBuilder.f;
            this.h = adConfigBuilder.h;
            this.j = adConfigBuilder.b;
            this.k = adConfigBuilder.k;
            this.l = adConfigBuilder.l;
            this.m = adConfigBuilder.n;
            this.n = adConfigBuilder.o;
            this.o = adConfigBuilder.q;
            this.p = adConfigBuilder.r;
            this.q = adConfigBuilder.s;
            this.r = adConfigBuilder.t;
            this.s = adConfigBuilder.u;
            this.t = adConfigBuilder.v;
            AppStartInfo.channel = adConfigBuilder.i;
            AppStartInfo.extInfo = adConfigBuilder.j;
            AdMuteStatus.MUTE_ALL = adConfigBuilder.m;
        }

        public boolean checkEnableRewardedToast() {
            if (TAdManager.a != null) {
                return TAdManager.a.p;
            }
            return true;
        }

        public boolean checkEnableVideoAd() {
            if (TAdManager.a != null) {
                return TAdManager.a.r;
            }
            return true;
        }

        public boolean checkEnableWebRecommendFeature() {
            if (TAdManager.a != null) {
                return TAdManager.a.q;
            }
            return true;
        }

        public int getAppIconId() {
            return this.j;
        }

        public String getAppId() {
            return this.c;
        }

        public List<String> getCodeSeatIds() {
            return this.h;
        }

        public int getDefaultMaterialMaxSize() {
            return this.m;
        }

        public long getDefaultVersion() {
            return this.n;
        }

        public String getPangleAppId() {
            return this.s;
        }

        public boolean getPkgEvn() {
            return this.b;
        }

        public boolean getShouldOptimizeImageLoading() {
            return this.o;
        }

        public boolean isClosePangleWebFileLock() {
            return this.t;
        }

        public boolean isDebug() {
            return this.a;
        }

        public boolean isEnableGDPR() {
            return this.e;
        }

        public boolean isInitAdmob() {
            return this.l;
        }

        public boolean isInitAlliance() {
            return this.i;
        }

        public boolean isLite() {
            return this.f;
        }

        public boolean isTestDevice() {
            return this.d;
        }

        public void releaseCloudListener() {
            this.k = null;
        }

        public void setCodeSeatIds(List<String> list) {
            if (this.h == null) {
                this.h = new ArrayList();
            }
            this.h.clear();
            HashSet hashSet = new HashSet(list);
            list.clear();
            list.addAll(hashSet);
            this.h.addAll(list);
        }
    }

    public static final class AdConfigBuilder {
        public int b;
        public String g;
        public List<String> h;
        public Map<String, String> j;
        public OnCloudCompleteListener k;
        public boolean l;
        public int n;
        public long o;
        public String a = "";
        public boolean c = false;
        public boolean d = false;
        public boolean e = false;
        public boolean f = true;
        public String i = "";
        public boolean m = true;
        public boolean p = true;
        public boolean q = false;
        public boolean r = true;
        public boolean s = false;
        public boolean t = true;
        public String u = "";
        public boolean v = false;

        public AdConfig build() {
            return new AdConfig(this);
        }

        public AdConfigBuilder closePangleWebFileLock(boolean z) {
            this.v = z;
            return this;
        }

        public AdConfigBuilder initAlliance(boolean z) {
            this.f = z;
            return this;
        }

        public AdConfigBuilder initPangleAdvance(String str) {
            this.u = str;
            return this;
        }

        public AdConfigBuilder isInitAdMob(boolean z) {
            this.l = z;
            return this;
        }

        public AdConfigBuilder setAhaChannel(String str) {
            this.g = str;
            return this;
        }

        public AdConfigBuilder setAppIconId(int i) {
            this.b = i;
            return this;
        }

        public AdConfigBuilder setAppId(String str) {
            Preconditions.c(str, "appId can not be null");
            this.a = str;
            return this;
        }

        public AdConfigBuilder setChannel(String str) {
            this.i = str;
            return this;
        }

        public AdConfigBuilder setCloudCompleteListener(OnCloudCompleteListener onCloudCompleteListener) {
            this.k = onCloudCompleteListener;
            return this;
        }

        public AdConfigBuilder setCodeSeatIds(List<String> list) {
            this.h = list;
            return this;
        }

        public AdConfigBuilder setCustomParams(Map<String, String> map) {
            if (map != null && !map.isEmpty()) {
                this.j = new HashMap();
                if (map.size() <= 10) {
                    this.j.putAll(map);
                } else {
                    int i = 0;
                    for (Map.Entry<String, String> entry : map.entrySet()) {
                        if (i >= 10) {
                            break;
                        }
                        if (entry != null) {
                            i++;
                            this.j.put(entry.getKey(), entry.getValue());
                        }
                    }
                }
            }
            return this;
        }

        public AdConfigBuilder setDebug(boolean z) {
            this.c = z;
            this.d = z;
            return this;
        }

        public AdConfigBuilder setDefaultMaterialCacheSize(int i) {
            this.n = i;
            return this;
        }

        public AdConfigBuilder setEnableVideoAd(boolean z) {
            this.t = z;
            return this;
        }

        public AdConfigBuilder setEnableWebRecommendFeature(boolean z) {
            this.s = z;
            return this;
        }

        public AdConfigBuilder setInternalDefaultAdVersion(long j) {
            this.o = j;
            return this;
        }

        public AdConfigBuilder setMuteVideo(boolean z) {
            this.m = z;
            AdLogUtil.Log().d("TAdManager", "SDK init , muteAllAd = " + z);
            return this;
        }

        public AdConfigBuilder setRewardedCompletionToastEnabled(boolean z) {
            this.r = z;
            return this;
        }

        public AdConfigBuilder setShouldOptimizeImageLoading(boolean z) {
            this.q = z;
            return this;
        }

        public AdConfigBuilder testDevice(boolean z) {
            this.e = z;
            return this;
        }
    }

    public interface OnCloudCompleteListener {
        void onCloudComplete(int i, String str);
    }

    public static void b() {
        if (a != null) {
            try {
                AthenaAnalytics.Y(TrackingManager.TID, "mediation" + md8.l());
            } catch (Throwable unused) {
            }
            AthenaAnalytics.P(ul4.a(), "Mediation", TrackingManager.TID, a.isDebug(), false);
            AthenaAnalytics.C(true);
            AthenaAnalytics.s(ComConstants.HS_APPID, getAppId());
            AthenaAnalytics.s(ComConstants.HS_VER, md8.l());
        }
    }

    public static void c() {
        sod.b().d(ul4.a(), a);
    }

    public static void d() {
        boolean z;
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jI = o9.e().i(ComConstants.APP_ACTIVE_TIME, 0L);
        long jI2 = o9.e().i(ComConstants.FIRST_START_FOR_ONE_DAY, 0L);
        long jC = una.c(jCurrentTimeMillis);
        if (jI == 0) {
            o9.e().q(ComConstants.APP_ACTIVE_TIME, jCurrentTimeMillis);
        } else {
            jCurrentTimeMillis = jI;
        }
        if (jI2 != jC) {
            o9.e().q(ComConstants.FIRST_START_FOR_ONE_DAY, jC);
            z = true;
        } else {
            z = false;
        }
        AppStartInfo.activeTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss SSS Z").format(new Date(jCurrentTimeMillis));
        AppStartInfo.isFirstStartToday = z;
    }

    public static void e() {
        Bundle bundle = new Bundle();
        bundle.putLong(TrackingKey.INIT_TS, System.currentTimeMillis());
        bundle.putString(TrackingKey.CLD_APP_ID, getAppId());
        TrackingManager.trackInit(bundle);
    }

    public static String getAhaChannel() {
        AdConfig adConfig = a;
        if (adConfig != null) {
            return adConfig.g;
        }
        return null;
    }

    public static String getAppId() {
        AdConfig adConfig = a;
        if (adConfig != null) {
            return adConfig.c;
        }
        return null;
    }

    public static OnCloudCompleteListener getCloudCompleteListener() {
        AdConfig adConfig = a;
        if (adConfig != null) {
            return adConfig.k;
        }
        return null;
    }

    public static List<String> getCodeSeatIds() {
        AdConfig adConfig = a;
        if (adConfig == null || adConfig.h == null) {
            return null;
        }
        return new ArrayList(a.h);
    }

    public static synchronized void init(@NonNull final Context context, @NonNull AdConfig adConfig) {
        AdLogUtil.Log().e(ComConstants.SDK_INIT, "========================== HiSavana SDk init ========================== ");
        if (TextUtils.isEmpty(adConfig.c)) {
            AdLogUtil.Log().e(ComConstants.SDK_INIT, "config or appId is null, please check");
            OnCloudCompleteListener onCloudCompleteListener = adConfig.k;
            if (onCloudCompleteListener != null) {
                onCloudCompleteListener.onCloudComplete(TAdErrorCode.CODE_INVALID_APP_ID, "Invalid app id");
            }
            return;
        }
        ul4.g(context);
        d();
        HSScopeHelper.a.l(new Runnable() {
            @Override
            public void run() {
                NetStateManager.setIsNetAvailable(MitNetUtil.c(context));
                CloudControlConfigSync.q();
            }
        });
        a(adConfig);
        b = true;
    }

    public static boolean isDebug() {
        AdConfig adConfig = a;
        if (adConfig != null) {
            return adConfig.a;
        }
        return false;
    }

    public static boolean isTestDevice() {
        AdConfig adConfig = a;
        if (adConfig != null) {
            return adConfig.isTestDevice();
        }
        return false;
    }

    public static void releaseCloudListener() {
        AdConfig adConfig = a;
        if (adConfig != null) {
            adConfig.releaseCloudListener();
        }
    }

    public static void setAgeRestrictedUser(boolean z) {
        AppStartInfo.ageRestrictedUser = z;
    }

    public static void setCodeSeatIds(List<String> list) {
        if (list == null || list.size() == 0 || !b) {
            AdLogUtil.Log().e(ComConstants.SDK_INIT, "setCodeSeatIds codeSeatIds is null or empty");
            return;
        }
        AdConfig adConfig = a;
        if (adConfig == null) {
            AdLogUtil.Log().e(ComConstants.SDK_INIT, "setCodeSeatIds u must init first");
        } else {
            adConfig.setCodeSeatIds(list);
            CloudControlConfigSync.b(5);
        }
    }

    public static void setTrackSamplingFraction(int i) {
        try {
            r6.t(i);
        } catch (Throwable unused) {
        }
    }

    public static void setUserConsent(boolean z) {
        AppStartInfo.userConsent = z;
    }

    public static void a(@NonNull AdConfig adConfig) {
        if (a != null) {
            AdLogUtil.Log().w(ComConstants.SDK_INIT, "Already initialized");
            return;
        }
        jvd.b(adConfig.b);
        if (!adConfig.a) {
            adConfig.a = Log.isLoggable("ADSDK", 3);
        }
        if (!adConfig.a) {
            ja1.NET_LOG.m().q(Log.isLoggable("AD_NET_LOG", 3));
        }
        AdLogUtil.Log().setLogSwitch(adConfig.a);
        LogSwitch.isDebug = adConfig.a;
        a = adConfig;
        ul4.l(adConfig.a);
        ComConstants.LITE = false;
        a.f = false;
        b();
        c();
        zk5.j((Application) ul4.a().getApplicationContext());
        e();
    }
}
