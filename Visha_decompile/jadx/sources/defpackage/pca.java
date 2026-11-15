package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.cloud.sdk.commonutil.util.Preconditions;
import com.hisavana.common.base.BaseAd;
import com.hisavana.common.base.LogSwitch;
import com.hisavana.common.bean.AdCache;
import com.hisavana.common.bean.AdNativeInfo;
import com.hisavana.common.bean.AdditionalInfo;
import com.hisavana.common.bean.NativeAdWrapper;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.bean.TAdRequestBody;
import com.hisavana.common.constant.ComConstants;
import com.hisavana.common.interfacz.ICacheAd;
import com.hisavana.common.manager.AdCacheManager;
import com.hisavana.common.mock.RecordTestInfo;
import com.hisavana.common.tracking.TrackingKey;
import com.hisavana.common.tracking.TrackingManager;
import com.hisavana.common.tracking.TrackingUtil;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.common.utils.AdUtil;
import com.hisavana.common.utils.MediaLogUtil;
import com.hisavana.common.utils.RunTimer;
import com.hisavana.mediation.bean.CloudControlConfig;
import com.hisavana.mediation.config.CloudControlConfigSync;
import com.hisavana.mediation.config.TAdManager;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

public abstract class pca {
    public String a;
    public Context b;
    public RunTimer c;
    public com.hisavana.mediation.a d;
    public boolean e;
    public boolean f;
    public CloudControlConfig.CodeSeat g;
    public rud h;
    public boolean i;
    public int j;
    public int k;
    public long l;
    public boolean m;
    public int mFillSource;
    public final LinkedHashMap<String, String> n;
    public int o;
    public boolean p;
    public boolean q;
    public String r;
    public String s;
    public Map<String, Object> t;
    public boolean u;
    public int v;
    public RunTimer.TimeOutCallback w;
    public String x;
    public long y;
    public Bundle z;

    public class a implements RunTimer.TimeOutCallback {
        public a() {
        }

        @Override
        public void isTimeOut() {
            AdLogUtil.Log().w(ComConstants.AD_FLOW, "TBaseAd --> Load ad is time out ");
            pca.this.clearCurrentAd();
            rud rudVar = pca.this.h;
            if (rudVar != null) {
                rudVar.onError(TAdErrorCode.ERROR_FILL_FAILED_WITH_MEDIATION_TIME_OUT);
            }
        }
    }

    public class b implements Preconditions.a {
        public b() {
        }

        @Override
        public void onRun() {
            pca.this.o();
        }
    }

    public class c implements Preconditions.a {
        public c() {
        }

        @Override
        public void onRun() {
            pca.this.s();
        }
    }

    public pca(Context context, String str) {
        this.a = "";
        this.b = null;
        this.e = false;
        this.f = false;
        this.j = ComConstants.defScheduleTime;
        this.k = 0;
        this.l = 0L;
        this.m = false;
        this.n = new LinkedHashMap<>();
        this.v = 1;
        this.w = new a();
        this.a = str;
        this.b = context.getApplicationContext();
        if (ul4.a() == null) {
            ul4.k(context);
        }
        b();
    }

    public abstract com.hisavana.mediation.a a(CloudControlConfig.CodeSeat codeSeat);

    public abstract boolean a(int i);

    public int c(CloudControlConfig.CodeSeat codeSeat) {
        int i = 0;
        if (codeSeat == null) {
            return 0;
        }
        int iIntValue = codeSeat.getAdxShowRate().intValue();
        int iIntValue2 = codeSeat.getEwShowRate().intValue();
        Random random = new Random(System.currentTimeMillis());
        int iAbs = Math.abs(random.nextInt() % 100);
        int iAbs2 = Math.abs(random.nextInt() % 100);
        if (iAbs < iIntValue && iAbs2 < iIntValue2) {
            i = 3;
        } else if (iAbs < iIntValue) {
            i = 1;
        } else if (iAbs2 < iIntValue2) {
            i = 2;
        }
        AdLogUtil.Log().d("TBaseAd", "Traffic support config: adxShowRate " + iIntValue + " ewShowRate " + iIntValue2 + ",current random result is: " + i);
        return i;
    }

    public abstract boolean c();

    public void clearCurrentAd() {
        if (this.e && this.d != null) {
            a();
        }
        stopTimer();
        com.hisavana.mediation.a aVar = this.d;
        if (aVar != null) {
            aVar.w();
        }
        setIsShowing(false);
        if (this.e) {
            AdLogUtil.Log().d(ComConstants.AD_FLOW, "cancel request ad ");
        }
    }

    public vid d() {
        vid vidVar = new vid();
        vidVar.c(this.z);
        vidVar.w(this.k);
        vidVar.k(this.q);
        vidVar.e(this.r);
        vidVar.j(this.s);
        vidVar.f(this.t);
        vidVar.n(this.u);
        return vidVar;
    }

    public void destroy() {
        Preconditions.d(new b());
    }

    public int e() {
        return this.o;
    }

    public String enterScene(String str, int i) {
        try {
            if (this.z == null) {
                this.z = new Bundle();
            }
            this.z.putString(TrackingKey.SCENE_ID, str);
            if (TextUtils.isEmpty(TAdManager.getAppId())) {
                AdLogUtil.Log().e("TBaseAd", "appId is empty");
                return "";
            }
            if (!ul4.i()) {
                AdLogUtil.Log().e("TBaseAd", "you should init first");
                return "";
            }
            if (TextUtils.isEmpty(this.a)) {
                AdLogUtil.Log().d("TBaseAd", "enterScene,mAdUnit is null");
                return "";
            }
            if (this.g == null) {
                this.g = zgd.a(this.a);
            }
            CloudControlConfig.CodeSeat codeSeat = this.g;
            if (codeSeat == null) {
                AdLogUtil.Log().d("TBaseAd", "enterScene,mCodeSeatConfig is null");
                return "";
            }
            if (b(codeSeat) != null) {
                AdLogUtil.Log().d("TBaseAd", "enterScene,cloud control inspection failed");
                return "";
            }
            Preconditions.a();
            String strP = DeviceUtil.p();
            a(str, i);
            if (this.n.size() >= 24) {
                Iterator<String> it = this.n.keySet().iterator();
                if (it.hasNext()) {
                    this.n.remove(it.next());
                }
            }
            this.n.put(strP, str);
            return strP;
        } catch (Throwable th) {
            AdLogUtil.Log().e("TBaseAd", "enterScene is exception", th);
            return "";
        }
    }

    public final AdditionalInfo f() {
        AdditionalInfo additionalInfo = new AdditionalInfo();
        additionalInfo.setPlacementId(this.a);
        additionalInfo.setMcc(md8.d());
        additionalInfo.setTriggerId(this.x);
        CloudControlConfig.CodeSeat codeSeat = this.g;
        if (codeSeat != null) {
            additionalInfo.setTrafficGroupId(codeSeat.getTrafficGroupId());
            additionalInfo.setExperimentGroupId(this.g.getExperimentGroupId());
        }
        additionalInfo.setSdkVersion(md8.l());
        return additionalInfo;
    }

    public final com.hisavana.mediation.a g() {
        CloudControlConfig.CodeSeat codeSeat;
        if (this.h == null || (codeSeat = this.g) == null) {
            return null;
        }
        if (this.d == null) {
            this.d = a(codeSeat);
        }
        return this.d;
    }

    public int getSupportFlag() {
        return this.k;
    }

    public double getTopPrice(int i) {
        AdCache cache = AdCacheManager.getCache(i);
        if (cache == null) {
            return 0.0d;
        }
        return cache.getMaxPrice(this.a, this.q);
    }

    public final Network h() {
        CloudControlConfig.CodeSeat codeSeat = this.g;
        if (codeSeat == null || codeSeat.getNetworks() == null) {
            return null;
        }
        for (Network network : this.g.getNetworks()) {
            if (network != null && network.getSource().intValue() == 0) {
                return network;
            }
        }
        return null;
    }

    public boolean hasAd() {
        int lastExpireReason;
        if (TextUtils.isEmpty(TAdManager.getAppId())) {
            AdLogUtil.Log().e("TBaseAd", "appId is empty");
            return false;
        }
        if (!ul4.i()) {
            AdLogUtil.Log().e("TBaseAd", "you should init first");
            return false;
        }
        if (this.m) {
            a(false, 3);
            AdLogUtil.Log().d("TBaseAd", "current object is destroyed");
            return false;
        }
        if (TextUtils.isEmpty(this.a)) {
            a(false, 4);
            AdLogUtil.Log().d("TBaseAd", "isReady,mAdUnit is null");
            return false;
        }
        if (this.g == null) {
            this.g = zgd.a(this.a);
        }
        CloudControlConfig.CodeSeat codeSeat = this.g;
        if (codeSeat == null) {
            a(false, 5);
            AdLogUtil.Log().d("TBaseAd", "isReady,mCodeSeatConfig is null");
            return false;
        }
        TAdErrorCode tAdErrorCodeB = b(codeSeat);
        if (tAdErrorCodeB != null) {
            a(false, tAdErrorCodeB.getErrorCode());
            AdLogUtil.Log().d("TBaseAd", "isReady,cloud control inspection failed");
            return false;
        }
        AdCache cache = AdCacheManager.getCache(this.g.getCodeSeatType().intValue());
        if (cache == null) {
            a(false, 6);
            AdLogUtil.Log().d("TBaseAd", "isReady,no ad cache");
            return false;
        }
        boolean zHasAds = cache.hasAds(this.a, this.q);
        AdLogUtil.Log().d("TBaseAd", "isReady key " + this.a + " hasAd " + zHasAds);
        if (zHasAds) {
            a(true, 0);
        } else {
            try {
                lastExpireReason = cache.getLastExpireReason(this.a);
            } catch (Throwable th) {
                AdLogUtil.Log().e("TBaseAd", Log.getStackTraceString(th));
                lastExpireReason = 0;
            }
            a(false, 0, lastExpireReason);
            try {
                cache.clearLastExpireReason(this.a);
            } catch (Throwable th2) {
                AdLogUtil.Log().e("TBaseAd", Log.getStackTraceString(th2));
            }
        }
        return zHasAds;
    }

    public final ICacheAd i() {
        com.hisavana.mediation.a aVar = this.d;
        if (aVar == null) {
            return null;
        }
        return aVar.G().getCache(this.a, false, 0, this.q);
    }

    public boolean isLoaded() {
        return this.f;
    }

    public final void j() {
        CloudControlConfig.CodeSeat codeSeat;
        if (this.h == null || (codeSeat = this.g) == null) {
            this.d = null;
            return;
        }
        com.hisavana.mediation.a aVarA = a(codeSeat);
        this.d = aVarA;
        if (aVarA != null) {
            aVarA.p(this.h);
            this.d.k(this.c);
            this.d.R(this.v);
        }
    }

    public final void k() {
        this.g = zgd.a(this.a);
        b(false, !NetStateManager.checkNetworkState(false) ? 1 : 0);
        m();
        if (this.p && !c()) {
            a(TAdErrorCode.ERROR_CODE_AD_IS_SHOWING);
            return;
        }
        this.f = false;
        clearCurrentAd();
        this.e = true;
        if (this.m) {
            this.e = false;
            a(TAdErrorCode.ERROR_CURRENT_OBJECT_IS_DESTROYED);
            AdLogUtil.Log().w(ComConstants.AD_FLOW, "TBaseAd -->current object haved been destroyed");
            MediaLogUtil.e("TBaseAd", "current object haved been destroyed");
            return;
        }
        if (TextUtils.isEmpty(TAdManager.getAppId())) {
            this.e = false;
            a(TAdErrorCode.ERROR_INVALID_APP_ID);
            AdLogUtil.Log().w(ComConstants.AD_FLOW, "TBaseAd --> Network request is invalid, the appId or appToken must be valid ----- Current app id is:" + TAdManager.getAppId());
            MediaLogUtil.e("TBaseAd", "loadAdInternal,appId is empty");
            return;
        }
        CloudControlConfig.CodeSeat codeSeat = this.g;
        if (codeSeat == null) {
            MediaLogUtil.e("TBaseAd", "loadAdInternal,config is null；codeSeatId = " + this.a);
            this.e = false;
            CloudControlConfigSync.b(6);
            int iF = o9.e().f(ComConstants.Pref.CLOUD_CONFIG_ERROR_CODE);
            if (iF != 0) {
                a(ComConstants.transferCloudErrorCode(iF));
                return;
            } else {
                a(TAdErrorCode.ERROR_AD_UNIT_CONFIG_EMPTY);
                return;
            }
        }
        this.o = codeSeat.getCodeSeatType().intValue();
        if (Boolean.FALSE.equals(this.g.getCloudControlEnable())) {
            MediaLogUtil.e("TBaseAd", "loadAdInternal,config is closed");
            this.e = false;
            a(TAdErrorCode.ERROR_CLOUD_AD_SEAT_IS_CLOSED);
            AdLogUtil.Log().w(ComConstants.AD_FLOW, "TBaseAd --> current ad unit is close ");
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jC = una.c(jCurrentTimeMillis);
        long jB = una.b(jCurrentTimeMillis);
        if (this.g.getAdShowCountLimitDay().intValue() == 0 || (this.g.getAdShowCountLimitDay().intValue() != -1 && jC == this.g.getTodayZeroClock() && this.g.getTodayShowTimes() >= this.g.getAdShowCountLimitDay().intValue())) {
            AdLogUtil.Log().w(ComConstants.AD_FLOW, "TBaseAd --> ad show times can not exceed day show max");
            MediaLogUtil.e("TBaseAd", "ad show times reach the limit of day,day showTimes " + this.g.getAdShowCountLimitDay());
            this.e = false;
            a(TAdErrorCode.ERROR_AD_SHOW_TIMES_OUT_OF_DAY);
            return;
        }
        if (this.g.getAdShowCountLimitHour().intValue() == 0 || (this.g.getAdShowCountLimitHour().intValue() != -1 && jB == this.g.getCurrentHourZeroClock() && this.g.getCurrentHourShowTimes() >= this.g.getAdShowCountLimitHour().intValue())) {
            AdLogUtil.Log().w(ComConstants.AD_FLOW, "TBaseAd --> ad display has reached the limit of hours");
            MediaLogUtil.e("TBaseAd", "ad display has reached the limit of hour,hour showTimes " + this.g.getAdShowCountLimitHour());
            this.e = false;
            a(TAdErrorCode.ERROR_AD_SHOW_TIMES_OUT_OF_HOUR);
            return;
        }
        long lastShowTime = jCurrentTimeMillis - this.g.getLastShowTime();
        if (lastShowTime <= 0) {
            lastShowTime = -lastShowTime;
        }
        if (this.g.getAdShowTimeInterval().intValue() != -1000 && lastShowTime <= this.g.getAdShowTimeInterval().intValue()) {
            AdLogUtil.Log().w(ComConstants.AD_FLOW, "TBaseAd --> ad display did not reach the interval");
            MediaLogUtil.e("TBaseAd", "ad display did not reach the interval,time " + this.g.getAdShowTimeInterval());
            this.e = false;
            a(TAdErrorCode.ERROR_AD_SHOW_NOT_IN_INTERVAL);
            return;
        }
        this.k = c(this.g);
        j();
        if (!a(e())) {
            AdLogUtil.Log().w(ComConstants.AD_FLOW, "TBaseAd --> code seat type does not match request type");
            MediaLogUtil.e("TBaseAd", "code seat type does not match request type ---> " + this.g.getCodeSeatType());
            this.e = false;
            a(TAdErrorCode.ERROR_AD_TYPE_LOAD_INCONSISTENCY);
            return;
        }
        this.g = end.a(this.g);
        if (NetStateManager.checkNetworkState(false)) {
            p();
            r();
            return;
        }
        AdLogUtil.Log().w(ComConstants.AD_FLOW, "TBaseAd --> net error ");
        MediaLogUtil.e("TBaseAd", "net error");
        this.e = false;
        Network networkH = h();
        com.hisavana.mediation.a aVarG = g();
        if (networkH == null || aVarG == null || !aVarG.d0()) {
            a(TAdErrorCode.ERROR_FILL_FAILED_WITH_NETWORK_EXCEPTION);
            return;
        }
        aVarG.g(this.z);
        aVarG.O(this.g.getAdRequestCount().intValue());
        if (aVarG.r(this.g, networkH)) {
            return;
        }
        a(TAdErrorCode.ERROR_FILL_FAILED_NO_NETWORK_AND_OFFLINE);
    }

    public void l() {
        if (this.h == null) {
            return;
        }
        AdditionalInfo additionalInfoF = f();
        ICacheAd iCacheAdI = i();
        Network network = iCacheAdI != null ? iCacheAdI.getNetwork() : null;
        if (network != null) {
            additionalInfoF.setSource(network.getSource());
            additionalInfoF.setApplicationId(network.getApplicationId());
            additionalInfoF.setApplicationKey(network.getApplicationKey());
            additionalInfoF.setCodeSeatId(network.getCodeSeatId());
            additionalInfoF.setEcpm(network.getPrice());
            additionalInfoF.setPrecision(AdUtil.isWaterFall(network) ? "estimated" : "exact");
            additionalInfoF.setCurrency("USD");
            additionalInfoF.setBidding(Boolean.valueOf(AdUtil.isBiddingNetwork(network)));
        }
        if (iCacheAdI != null) {
            additionalInfoF.setMediatorSource(iCacheAdI.getMediatorSourceName());
        }
        this.h.c(additionalInfoF);
    }

    public void loadAd() {
        b(1);
    }

    public final void m() {
        if (this.h != null) {
            this.h.p(f());
        }
    }

    public void n() {
        a((TAdNativeInfo) null);
    }

    public final void o() {
        rud rudVar = this.h;
        if (rudVar != null) {
            rudVar.g(null);
            this.h.a(null);
            this.h.h(null);
        }
        this.h = null;
        this.g = null;
        RecordTestInfo.destroy();
        setIsShowing(false);
        clearCurrentAd();
        if (this.e) {
            trackingAdLoaded(TAdErrorCode.CODE_CURRENT_OBJECT_IS_DESTROYED, TAdErrorCode.ERROR_CURRENT_OBJECT_IS_DESTROYED.getErrorMessage(), -1);
        }
        this.e = false;
        this.m = true;
    }

    public final void p() {
        CloudControlConfig.CodeSeat codeSeat = this.g;
        if (codeSeat != null) {
            this.j = codeSeat.getAdRequestTimeout().intValue() * 1000;
        }
        if (this.j > 0) {
            if (this.c == null) {
                this.c = new RunTimer();
            }
            this.c.cancelTimeTask();
            this.c.setTimeOutCallback(this.w);
            this.c.setScheduleTime(this.j);
            this.c.runTimerTask();
        }
    }

    public void pause() {
        com.hisavana.mediation.a aVar = this.d;
        if (aVar != null) {
            aVar.i0();
        }
    }

    public final void preload() {
        loadAd();
    }

    public void q() {
    }

    public final void r() {
        if (this.g == null) {
            MediaLogUtil.e("TBaseAd", "startLoadMediation codeSeat is null");
            a(TAdErrorCode.ERROR_AD_UNIT_CONFIG_EMPTY);
            return;
        }
        AdLogUtil.Log().i(ComConstants.AD_FLOW, "*----> TBaseAd - current cloudConfig is " + this.g.toString());
        List<Network> networks = this.g.getNetworks();
        if (networks == null || networks.isEmpty()) {
            AdLogUtil.Log().w(ComConstants.AD_FLOW, "TBaseAd --> ad is empty ");
            MediaLogUtil.e("TBaseAd", "startLoadMediation,network is empty");
            a(TAdErrorCode.ERROR_AD_SOURCE_LIST_IS_EMPTY);
            return;
        }
        com.hisavana.mediation.a aVarG = g();
        if (aVarG != null) {
            aVarG.g(this.z);
            if (aVarG.q(this.b)) {
                return;
            }
            MediaLogUtil.e("TBaseAd", "prepare for request failed");
            a(TAdErrorCode.ERROR_PREPARE_REQUEST_FAILED);
        }
    }

    public void resume() {
        com.hisavana.mediation.a aVar = this.d;
        if (aVar != null) {
            aVar.m0();
        }
    }

    public final void s() {
        RunTimer runTimer = this.c;
        if (runTimer != null) {
            runTimer.cancelTimeTask();
            this.c = null;
        }
    }

    public void setAdLoadScenes(String str, String str2, Map<String, Object> map) {
        this.r = str;
        this.s = str2;
        this.t = map;
    }

    public void setCodeSeatType(int i) {
        this.o = i;
    }

    public void setContainVulgarContent(boolean z) {
        this.q = z;
    }

    public void setCurrActivityFullscreen(boolean z) {
        this.u = z;
    }

    public void setIsShowing(boolean z) {
        this.p = z;
    }

    public void setLoaded(boolean z) {
        this.f = z;
    }

    public void setLoading(boolean z) {
        this.e = z;
    }

    public void setRequestBody(TAdRequestBody tAdRequestBody) {
        if (tAdRequestBody == null) {
            return;
        }
        b();
        this.j = tAdRequestBody.getScheduleTime();
        rud rudVar = this.h;
        if (rudVar != null) {
            rudVar.g(tAdRequestBody.getAdListener());
            this.h.h(tAdRequestBody.getAdditionalListener());
        }
    }

    public void stopTimer() {
        Preconditions.d(new c());
    }

    public void t() {
        if (this.h != null) {
            if (NetStateManager.checkNetworkState(false)) {
                TAdErrorCode tAdErrorCode = TAdErrorCode.ERROR_TRIGGER_SHOW_ONLINE_NO_AD;
                trackingTriggerShowError(tAdErrorCode);
                this.h.onShowError(tAdErrorCode);
            } else {
                TAdErrorCode tAdErrorCode2 = TAdErrorCode.ERROR_RIGGER_SHOW_OFFLINE_NO_AD;
                trackingTriggerShowError(tAdErrorCode2);
                this.h.onShowError(tAdErrorCode2);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:28:0x00d8 A[Catch: Exception -> 0x003a, TryCatch #0 {Exception -> 0x003a, blocks: (B:3:0x002a, B:5:0x002e, B:9:0x003d, B:11:0x006e, B:13:0x0072, B:18:0x008e, B:20:0x009a, B:26:0x00b7, B:28:0x00d8, B:30:0x00de, B:32:0x0111, B:35:0x0118, B:42:0x01b7, B:39:0x01af, B:43:0x01d1, B:48:0x01ef, B:52:0x022a, B:54:0x024b, B:55:0x0254, B:57:0x0258, B:58:0x026e, B:60:0x0277, B:61:0x028f, B:65:0x029c, B:69:0x02aa, B:68:0x02a6, B:64:0x0298, B:51:0x0226, B:47:0x01eb, B:21:0x00a0, B:23:0x00a4), top: B:73:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:29:0x00dd  */
    public void trackingAdLoaded(int i, String str, int i2) {
        double d;
        Bundle bundle;
        Network network;
        Object obj;
        try {
            if (this.z == null) {
                AdLogUtil.Log().w(ComConstants.AD_FLOW, "mBundle is null");
                return;
            }
            Bundle bundle2 = new Bundle();
            bundle2.putString(TrackingKey.TRIGGER_ID, this.z.getString(TrackingKey.TRIGGER_ID));
            bundle2.putLong(TrackingKey.TRIGGER_TS, this.z.getLong(TrackingKey.TRIGGER_TS));
            bundle2.putInt(TrackingKey.AD_TYPE, this.z.getInt(TrackingKey.AD_TYPE));
            bundle2.putInt(TrackingKey.AD_TRIGGER_STATUS, this.z.getInt(TrackingKey.AD_TRIGGER_STATUS));
            com.hisavana.mediation.a aVar = this.d;
            ICacheAd cache = (aVar == null || this.g == null) ? null : aVar.G().getCache(this.g.getCodeSeatId(), false, this.k, this.q);
            if (cache != null) {
                double ecpmPrice = cache.getEcpmPrice();
                Network network2 = cache.getNetwork();
                if (cache instanceof BaseAd) {
                    bundle = ((BaseAd) cache).mBundle;
                } else {
                    if (cache instanceof AdNativeInfo) {
                        bundle = ((AdNativeInfo) cache).getNativeAdWrapper().getAdImpl().mBundle;
                    } else {
                        bundle = null;
                    }
                    AdLogUtil adLogUtilLog = AdLogUtil.Log();
                    StringBuilder sb = new StringBuilder();
                    sb.append("trackingAdLoaded --> isNative = ");
                    sb.append(cache instanceof AdNativeInfo);
                    sb.append(" 设置标识符 contextBundle.PLATFORM=");
                    if (bundle != null) {
                        obj = bundle.get("platform");
                    } else {
                        obj = null;
                    }
                    sb.append(obj);
                    adLogUtilLog.d("TBaseAd", sb.toString());
                    bundle2.putInt(TrackingKey.IS_OFFLINE_AD, cache.isOfflineAd() ? 1 : 0);
                    bundle2.putString(TrackingKey.MEDIATOR_SOURCE, cache.getMediatorSourceName());
                    bundle2.putString(TrackingKey.MEDIATOR_CODE_SEAT_ID, cache.getMediatorSourceUnitId());
                    network = network2;
                    d = ecpmPrice;
                }
                AdLogUtil adLogUtilLog2 = AdLogUtil.Log();
                StringBuilder sb2 = new StringBuilder();
                sb2.append("trackingAdLoaded --> isNative = ");
                sb2.append(cache instanceof AdNativeInfo);
                sb2.append(" 设置标识符 contextBundle.PLATFORM=");
                if (bundle != null) {
                    obj = bundle.get("platform");
                } else {
                    obj = null;
                }
                sb2.append(obj);
                adLogUtilLog2.d("TBaseAd", sb2.toString());
                bundle2.putInt(TrackingKey.IS_OFFLINE_AD, cache.isOfflineAd() ? 1 : 0);
                bundle2.putString(TrackingKey.MEDIATOR_SOURCE, cache.getMediatorSourceName());
                bundle2.putString(TrackingKey.MEDIATOR_CODE_SEAT_ID, cache.getMediatorSourceUnitId());
                network = network2;
                d = ecpmPrice;
            } else {
                d = 0.0d;
                bundle = null;
                network = null;
            }
            a(bundle2, d);
            if (bundle != null) {
                bundle2.putInt(TrackingKey.IS_PRE_TRIGGER, bundle.getInt(TrackingKey.IS_PRE_TRIGGER));
                bundle2.putInt(TrackingKey.REQUEST_TYPE, bundle.getInt(TrackingKey.REQUEST_TYPE));
                bundle2.putInt("platform", bundle.getInt("platform"));
                bundle2.putString("app_id", bundle.getString("app_id"));
                bundle2.putString(TrackingKey.CODE_SEAT_ID, bundle.getString(TrackingKey.CODE_SEAT_ID));
                bundle2.putDouble(TrackingKey.BIDDING_PRICE, bundle.getDouble(TrackingKey.BIDDING_PRICE));
                bundle2.putInt(TrackingKey.BIDDING_TYPE, bundle.getInt(TrackingKey.BIDDING_TYPE));
                bundle2.putInt("priority", bundle.getInt("priority"));
                bundle2.putInt(TrackingKey.AD_COUNT, bundle.getInt(TrackingKey.AD_COUNT));
                bundle2.putInt(TrackingKey.IS_RETREATAD, bundle.getInt(TrackingKey.IS_RETREATAD));
                bundle2.putString("request_id", bundle.getString("request_id"));
                RecordTestInfo.record("adTrackingFilling code_seat_id:" + bundle.getString(TrackingKey.CODE_SEAT_ID) + ",platform:" + bundle.getInt("platform") + ",bidding_price:" + bundle.getDouble(TrackingKey.BIDDING_PRICE));
                bundle2.putInt(TrackingKey.REQUEST_NUM, bundle.getInt(TrackingKey.REQUEST_NUM));
                int i3 = 1;
                if (bundle.getInt(TrackingKey.AD_TRIGGER_STATUS) == 1) {
                    i3 = 3;
                } else if (cache.isOfflineAd()) {
                    i3 = 2;
                }
                bundle2.putInt(TrackingKey.FILLING_AD_TYPE, i3);
                bundle.putInt(TrackingKey.FILLING_AD_TYPE, i3);
                bundle2.putInt(TrackingKey.IS_PRELOAD, bundle.getInt(TrackingKey.IS_PRELOAD));
                bundle2.putString(TrackingKey.SCENE_ID, bundle.getString(TrackingKey.SCENE_ID));
            }
            RecordTestInfo.record("adTrackingFilling");
            bundle2.putString(TrackingKey.CLD_APP_ID, this.z.getString("app_id"));
            CloudControlConfig.CodeSeat codeSeat = this.g;
            String experimentGroupId = "";
            bundle2.putString(TrackingKey.CLD_CODE_SEAT_ID, codeSeat == null ? "" : codeSeat.getCodeSeatId());
            int iM = 0;
            bundle2.putInt(TrackingKey.IS_TIMEOUT, 0);
            bundle2.putInt("error_code", i);
            bundle2.putString(TrackingKey.ERROR_MESSAGE, TAdErrorCode.simpleErrorMessage(str));
            bundle2.putInt(TrackingKey.FILLING_SOURCE, i2);
            bundle2.putLong(TrackingKey.FILLING_TS, System.currentTimeMillis());
            bundle2.putInt(TrackingKey.INSTALL_FACEBOOK, ComConstants.isFbAppExist ? 1 : 0);
            com.hisavana.mediation.a aVar2 = this.d;
            if (aVar2 != null) {
                iM = aVar2.M();
            }
            bundle2.putInt(TrackingKey.FILTER_COUNT, iM);
            bundle2.putInt(TrackingKey.OPTIMIZE_STATUS, this.z.getInt(TrackingKey.OPTIMIZE_STATUS));
            bundle2.putInt(TrackingKey.PRIORITY_CODE, this.z.getInt(TrackingKey.PRIORITY_CODE));
            com.hisavana.mediation.a aVar3 = this.d;
            if (aVar3 != null) {
                bundle2.putDouble(TrackingKey.MAX_PRICE, aVar3.S());
            }
            if (LogSwitch.isDebug) {
                RecordTestInfo.LogMsg("fill result code : " + i, RecordTestInfo.LOG_CODE7);
            }
            bundle2.putInt(TrackingKey.IS_CONTAIN_VULGAR, this.q ? 1 : 0);
            if (network != null) {
                bundle2.putDouble(TrackingKey.PRICE_COEFFICIENT, network.getShowPriceCoefficient().doubleValue());
                bundle2.putInt("platform", network.getSource().intValue());
            }
            CloudControlConfig.CodeSeat codeSeat2 = this.g;
            bundle2.putString(TrackingKey.TRAFFIC_GROUP_ID, codeSeat2 == null ? "" : codeSeat2.getTrafficGroupId());
            CloudControlConfig.CodeSeat codeSeat3 = this.g;
            if (codeSeat3 != null) {
                experimentGroupId = codeSeat3.getExperimentGroupId();
            }
            bundle2.putString(TrackingKey.EXPERIMENT_GROUP_ID, experimentGroupId);
            TrackingManager.trackingAdLoaded(bundle2);
        } catch (Exception e) {
            AdLogUtil.Log().e(Log.getStackTraceString(e));
        }
    }

    public void trackingTriggerShowError(TAdErrorCode tAdErrorCode) {
        Bundle bundle = new Bundle();
        try {
            Bundle bundle2 = this.z;
            if (bundle2 != null) {
                bundle.putString(TrackingKey.TRIGGER_ID, bundle2.getString(TrackingKey.TRIGGER_ID));
                bundle.putLong(TrackingKey.TRIGGER_TS, this.z.getLong(TrackingKey.TRIGGER_TS));
                bundle.putDouble(TrackingKey.BIDDING_PRICE, this.z.getDouble(TrackingKey.BIDDING_PRICE));
                bundle.putInt("platform", this.z.getInt("platform"));
            } else {
                bundle.putString(TrackingKey.TRIGGER_ID, TrackingUtil.getTriggerId());
                bundle.putLong(TrackingKey.TRIGGER_TS, System.currentTimeMillis());
            }
            if (this.g == null) {
                this.g = zgd.a(this.a);
            }
            bundle.putString(TrackingKey.CLD_APP_ID, TAdManager.getAppId());
            bundle.putString("app_id", TAdManager.getAppId());
            bundle.putString(TrackingKey.CODE_SEAT_ID, this.a);
            bundle.putString(TrackingKey.CLD_CODE_SEAT_ID, this.a);
            bundle.putInt(TrackingKey.AD_TYPE, e());
            CloudControlConfig.CodeSeat codeSeat = this.g;
            if (codeSeat != null) {
                bundle.putString(TrackingKey.TRAFFIC_GROUP_ID, codeSeat.getTrafficGroupId());
                bundle.putString(TrackingKey.EXPERIMENT_GROUP_ID, this.g.getExperimentGroupId());
            }
            if (tAdErrorCode != null) {
                bundle.putString("error_code", String.valueOf(tAdErrorCode.getErrorCode()));
                bundle.putString(TrackingKey.ERROR_MESSAGE, TAdErrorCode.simpleErrorMessage(tAdErrorCode.getErrorMessage()));
            }
            bundle.putInt(TrackingKey.IS_OFFLINE, !NetStateManager.checkNetworkState(false) ? 1 : 0);
            ICacheAd iCacheAdI = i();
            if (iCacheAdI != null) {
                bundle.putString(TrackingKey.MEDIATOR_SOURCE, iCacheAdI.getMediatorSourceName());
                bundle.putString(TrackingKey.MEDIATOR_CODE_SEAT_ID, iCacheAdI.getMediatorSourceUnitId());
            }
            TrackingManager.trackingTriggerShow(bundle);
        } catch (Exception e) {
            AdLogUtil.Log().e(ComConstants.AD_FLOW, Log.getStackTraceString(e));
        }
    }

    public void a(TAdErrorCode tAdErrorCode) {
        rud rudVar = this.h;
        if (rudVar != null) {
            rudVar.onError(tAdErrorCode);
        }
    }

    public final void b(int i) {
        if (!ul4.i()) {
            AdLogUtil.Log().e("TBaseAd", "you should init first");
            return;
        }
        zm6.a.d();
        this.i = false;
        this.v = i;
        Preconditions.d(new Preconditions.a() {
            @Override
            public final void onRun() {
                this.a.k();
            }
        });
    }

    public String a(String str) {
        if (TextUtils.isEmpty(str)) {
            try {
                Bundle bundle = this.z;
                if (bundle == null) {
                    return null;
                }
                String string = bundle.getString(TrackingKey.SCENE_ID);
                if (TextUtils.isEmpty(string)) {
                    return null;
                }
                return string;
            } catch (Exception unused) {
                return null;
            }
        }
        return this.n.get(str);
    }

    public void c(TAdErrorCode tAdErrorCode) {
        if (this.h != null) {
            AdditionalInfo additionalInfoF = f();
            if (tAdErrorCode != null) {
                additionalInfoF.setErrorCode(tAdErrorCode);
            }
            this.h.d(tAdErrorCode, additionalInfoF);
        }
    }

    public TAdErrorCode b(CloudControlConfig.CodeSeat codeSeat) {
        if (codeSeat == null) {
            return TAdErrorCode.ERROR_AD_UNIT_CONFIG_EMPTY;
        }
        if (TAdManager.isDebug()) {
            String str = "cloudControlEnable=" + codeSeat.getCloudControlEnable() + "\ncodeSeatId=" + codeSeat.getCodeSeatId() + "\ncodeSeatType=" + codeSeat.getCodeSeatType() + "\nadShowCountLimitDay=" + codeSeat.getAdShowCountLimitDay() + "\nadShowCountLimitDay=" + codeSeat.getAdShowCountLimitDay() + "\nadShowCountLimitHour=" + codeSeat.getAdShowCountLimitHour() + "\nadShowTimeInterval=" + codeSeat.getAdShowTimeInterval() + "\ncurrentShowInterval=" + (System.currentTimeMillis() - codeSeat.getLastShowTime()) + "\n";
            AdLogUtil.Log().i(ComConstants.AD_FLOW, "inspection info is: \n" + str);
        }
        if (!codeSeat.getCloudControlEnable().booleanValue()) {
            return TAdErrorCode.ERROR_CLOUD_AD_SEAT_IS_CLOSED;
        }
        this.o = codeSeat.getCodeSeatType().intValue();
        if (!a(codeSeat.getCodeSeatType().intValue())) {
            AdLogUtil.Log().w(ComConstants.AD_FLOW, "TBaseAd --> code seat type does not match request type");
            MediaLogUtil.e("TBaseAd", "code seat type does not match request type ---> " + codeSeat.getCodeSeatType());
            return TAdErrorCode.ERROR_AD_TYPE_LOAD_INCONSISTENCY;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jC = una.c(jCurrentTimeMillis);
        long jB = una.b(jCurrentTimeMillis);
        if (codeSeat.getAdShowCountLimitDay().intValue() != 0 && (codeSeat.getAdShowCountLimitDay().intValue() == -1 || jC != codeSeat.getTodayZeroClock() || codeSeat.getTodayShowTimes() < codeSeat.getAdShowCountLimitDay().intValue())) {
            if (codeSeat.getAdShowCountLimitHour().intValue() != 0 && (codeSeat.getAdShowCountLimitHour().intValue() == -1 || jB != codeSeat.getCurrentHourZeroClock() || codeSeat.getCurrentHourShowTimes() < codeSeat.getAdShowCountLimitHour().intValue())) {
                long lastShowTime = jCurrentTimeMillis - codeSeat.getLastShowTime();
                if (lastShowTime <= 0) {
                    lastShowTime = -lastShowTime;
                }
                if (codeSeat.getAdShowTimeInterval().intValue() == -1000 || lastShowTime > codeSeat.getAdShowTimeInterval().intValue()) {
                    return null;
                }
                AdLogUtil.Log().w(ComConstants.AD_FLOW, "TBaseAd --> ad display did not reach the interval");
                MediaLogUtil.e("TBaseAd", "ad display did not reach the interval,time " + codeSeat.getAdShowTimeInterval());
                return TAdErrorCode.ERROR_AD_SHOW_NOT_IN_INTERVAL;
            }
            AdLogUtil.Log().w(ComConstants.AD_FLOW, "TBaseAd --> ad display has reached the limit of hours");
            MediaLogUtil.e("TBaseAd", "ad display has reached the limit of hour,hour showTimes " + codeSeat.getAdShowCountLimitHour());
            return TAdErrorCode.ERROR_AD_SHOW_TIMES_OUT_OF_HOUR;
        }
        AdLogUtil.Log().w(ComConstants.AD_FLOW, "TBaseAd --> ad show times can not exceed day show max");
        MediaLogUtil.e("TBaseAd", "ad show times reach the limit of day,day showTimes " + codeSeat.getAdShowCountLimitDay());
        return TAdErrorCode.ERROR_AD_SHOW_TIMES_OUT_OF_DAY;
    }

    public final void a(Bundle bundle, double d) {
        ArrayList<ICacheAd> caches;
        NativeAdWrapper nativeAdWrapper;
        StringBuilder sb = new StringBuilder();
        com.hisavana.mediation.a aVar = this.d;
        String strSubstring = "";
        int i = 0;
        if (aVar != null && (caches = aVar.G().getCaches(this.a, 100, false, this.q)) != null) {
            int i2 = 0;
            for (ICacheAd iCacheAd : caches) {
                if (iCacheAd.getEcpmPrice() < d) {
                    i2++;
                    if (iCacheAd.getAdSource() == 0) {
                        if (iCacheAd instanceof BaseAd) {
                            sb.append(((BaseAd) iCacheAd).mBundle.get("request_id"));
                        } else if ((iCacheAd instanceof AdNativeInfo) && (nativeAdWrapper = ((AdNativeInfo) iCacheAd).getNativeAdWrapper()) != null && nativeAdWrapper.getAdImpl() != null) {
                            sb.append(nativeAdWrapper.getAdImpl().mBundle.get("request_id"));
                        }
                        sb.append(StringUtils.COMMA);
                    }
                }
            }
            if (sb.toString().length() > 1) {
                strSubstring = sb.substring(0, sb.length() - 1);
                AdLogUtil.Log().d("TBaseAd", "bidding_platform_str" + strSubstring);
            }
            i = i2;
        }
        if (bundle != null) {
            bundle.putString(TrackingKey.BIDDING_FAIL_PLATFORM, strSubstring);
            bundle.putInt(TrackingKey.VALID_CACHE_MATERIAL_CNT, i);
        }
    }

    public void d(TAdErrorCode tAdErrorCode) {
        if (this.h != null) {
            AdditionalInfo additionalInfoF = f();
            if (tAdErrorCode != null) {
                additionalInfoF.setErrorCode(tAdErrorCode);
            }
            this.h.m(tAdErrorCode, additionalInfoF);
        }
    }

    public pca(Context context) {
        this.a = "";
        this.b = null;
        this.e = false;
        this.f = false;
        this.j = ComConstants.defScheduleTime;
        this.k = 0;
        this.l = 0L;
        this.m = false;
        this.n = new LinkedHashMap<>();
        this.v = 1;
        this.w = new a();
        this.b = context.getApplicationContext();
        if (ul4.a() == null) {
            ul4.k(context);
        }
        b();
    }

    public final void a() {
        if (this.z == null) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putInt(TrackingKey.REQUEST_TYPE, 1);
        bundle.putString(TrackingKey.TRIGGER_ID, this.z.getString(TrackingKey.TRIGGER_ID));
        bundle.putLong(TrackingKey.TRIGGER_TS, this.z.getLong(TrackingKey.TRIGGER_TS));
        bundle.putInt(TrackingKey.AD_TYPE, this.z.getInt(TrackingKey.AD_TYPE));
        bundle.putString(TrackingKey.CLD_APP_ID, this.z.getString(TrackingKey.CLD_APP_ID));
        bundle.putString(TrackingKey.CLD_CODE_SEAT_ID, this.z.getString(TrackingKey.CLD_CODE_SEAT_ID));
        bundle.putString("app_id", this.z.getString("app_id"));
        bundle.putString(TrackingKey.CODE_SEAT_ID, this.z.getString(TrackingKey.CODE_SEAT_ID));
        bundle.putInt(TrackingKey.IS_RETREATAD, this.z.getInt(TrackingKey.IS_RETREATAD));
        bundle.putString(TrackingKey.CLD_CONFIGURE_ID, o9.e().j("cloudControlVersion"));
        bundle.putInt(TrackingKey.IS_PRELOAD, this.z.getInt(TrackingKey.IS_PRELOAD));
        bundle.putString(TrackingKey.TRAFFIC_GROUP_ID, this.z.getString(TrackingKey.TRAFFIC_GROUP_ID));
        bundle.putString(TrackingKey.EXPERIMENT_GROUP_ID, this.z.getString(TrackingKey.EXPERIMENT_GROUP_ID));
        TrackingManager.trackingAdCancel(bundle);
    }

    public pca() {
        this.a = "";
        this.b = null;
        this.e = false;
        this.f = false;
        this.j = ComConstants.defScheduleTime;
        this.k = 0;
        this.l = 0L;
        this.m = false;
        this.n = new LinkedHashMap<>();
        this.v = 1;
        this.w = new a();
    }

    public final void a(String str, int i) {
        Bundle bundle = new Bundle();
        bundle.putString(TrackingKey.SCENE_ID, str);
        bundle.putInt(TrackingKey.IS_OFFLINE, !NetStateManager.checkNetworkState(false) ? 1 : 0);
        if (this.g == null) {
            this.g = zgd.a(this.a);
        }
        CloudControlConfig.CodeSeat codeSeat = this.g;
        if (codeSeat == null) {
            bundle.putInt(TrackingKey.CACHE_STATUS, 1);
        } else {
            AdCache cache = AdCacheManager.getCache(codeSeat.getCodeSeatType().intValue());
            if (cache != null) {
                if (cache.hasAds(this.a, this.q)) {
                    bundle.putInt(TrackingKey.CACHE_STATUS, 0);
                } else {
                    bundle.putInt(TrackingKey.CACHE_STATUS, this.e ? 2 : 1);
                }
            }
        }
        bundle.putString(TrackingKey.CLD_CODE_SEAT_ID, this.a);
        bundle.putString(TrackingKey.CLD_APP_ID, TAdManager.getAppId());
        bundle.putLong(TrackingKey.TS, System.currentTimeMillis());
        bundle.putInt(TrackingKey.AD_COUNT, i);
        TrackingManager.trackEnterScene(bundle);
    }

    public void b(TAdErrorCode tAdErrorCode) {
        rud rudVar = this.h;
        if (rudVar != null) {
            rudVar.onShowError(tAdErrorCode);
        }
    }

    public void b() {
        if (this.h == null) {
            this.h = new rud(this);
        }
    }

    public final void b(boolean z, int i) {
        int[] validAndInvalidAdNum;
        this.x = TrackingUtil.getTriggerId();
        if (this.z == null) {
            this.z = new Bundle();
        }
        this.z.putString(TrackingKey.TRIGGER_ID, this.x);
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.y = jCurrentTimeMillis;
        this.z.putLong(TrackingKey.TRIGGER_TS, jCurrentTimeMillis);
        CloudControlConfig.CodeSeat codeSeat = this.g;
        if (codeSeat != null) {
            this.z.putInt(TrackingKey.AD_TYPE, codeSeat.getCodeSeatType().intValue());
            AdCache cache = AdCacheManager.getCache(this.g.getCodeSeatType().intValue());
            if (cache != null && (validAndInvalidAdNum = cache.getValidAndInvalidAdNum(this.a)) != null && validAndInvalidAdNum.length >= 2) {
                int i2 = validAndInvalidAdNum[0];
                int i3 = validAndInvalidAdNum[1];
                this.z.putInt(TrackingKey.CACHE_VALID_ADS, i2);
                this.z.putInt(TrackingKey.CACHE_EXPIRE_ADS, i3);
            }
            this.z.putInt(TrackingKey.MULTI_COUNT, this.g.getAdRequestConcurrentCount().intValue());
            this.z.putInt(TrackingKey.BIDDING_DURATION, (this.v == 2 ? this.g.getRealtimeBiddingWaitTime() : this.g.getBiddingWaitTime()).intValue());
            this.z.putString(TrackingKey.TRAFFIC_GROUP_ID, this.g.getTrafficGroupId());
            this.z.putString(TrackingKey.EXPERIMENT_GROUP_ID, this.g.getExperimentGroupId());
            this.z.putInt(TrackingKey.REQUEST_NUM, this.g.getCodeSeatType().intValue() == 6 ? this.g.getAdRequestCount().intValue() : 1);
        }
        this.z.putString("app_id", TAdManager.getAppId());
        this.z.putString(TrackingKey.CODE_SEAT_ID, this.a);
        this.z.putInt(TrackingKey.IS_PRE_TRIGGER, z ? 1 : 0);
        this.z.putString(TrackingKey.CLD_APP_ID, TAdManager.getAppId());
        this.z.putString(TrackingKey.CLD_CODE_SEAT_ID, this.a);
        this.z.putInt(TrackingKey.AD_TRIGGER_STATUS, i);
        this.z.putInt(TrackingKey.PRIORITY_CODE, this.k);
        this.z.putInt(TrackingKey.IS_CONTAIN_VULGAR, this.q ? 1 : 0);
        this.z.putInt(TrackingKey.TRIGGER_MODE, this.v);
        TrackingManager.trackingADTrigger(this.z);
    }

    public final void a(boolean z, int i) {
        a(z, i, 0);
    }

    public final void a(boolean z, int i, int i2) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.l < 1000) {
            AdLogUtil.Log().e("TBaseAd", "isReady interval time is not fit");
            return;
        }
        this.l = jCurrentTimeMillis;
        Bundle bundle = new Bundle();
        if (z) {
            i = this.f ? 1 : 2;
        }
        bundle.putInt("is_ready_status", i);
        if (!z && i2 != 0) {
            try {
                bundle.putInt(TrackingKey.AD_EXPIRE_REASON, i2);
            } catch (Throwable th) {
                AdLogUtil.Log().e("TBaseAd", Log.getStackTraceString(th));
                return;
            }
        }
        bundle.putString(TrackingKey.CLD_CODE_SEAT_ID, this.a);
        bundle.putString(TrackingKey.CLD_APP_ID, TAdManager.getAppId());
        bundle.putLong(TrackingKey.TS, System.currentTimeMillis());
        TrackingManager.trackIsReady(bundle);
    }

    public void a(TAdNativeInfo tAdNativeInfo) {
        Network network;
        if (this.h == null) {
            return;
        }
        AdditionalInfo additionalInfoF = f();
        if (tAdNativeInfo != null) {
            network = tAdNativeInfo.getNetwork();
            additionalInfoF.setMediatorSource(tAdNativeInfo.getMediatorSourceName());
        } else {
            ICacheAd iCacheAdI = i();
            Network network2 = iCacheAdI == null ? null : iCacheAdI.getNetwork();
            additionalInfoF.setMediatorSource(iCacheAdI != null ? iCacheAdI.getMediatorSourceName() : null);
            network = network2;
        }
        if (network != null) {
            additionalInfoF.setSource(network.getSource());
            additionalInfoF.setApplicationId(network.getApplicationId());
            additionalInfoF.setApplicationKey(network.getApplicationKey());
            additionalInfoF.setCodeSeatId(network.getCodeSeatId());
        }
        this.h.r(additionalInfoF);
    }
}
