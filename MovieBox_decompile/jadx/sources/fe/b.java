package fe;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.cloud.hisavana.sdk.common.util.k0;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.cloud.sdk.commonutil.util.Preconditions;
import com.cloud.sdk.commonutil.util.e;
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
import ee.h;
import ee.i;
import ee.m;
import ee.s;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

public abstract class b {

    public String f60129a;

    public Context f60130b;

    public RunTimer f60131c;

    public ee.c f60132d;

    public boolean f60133e;

    public boolean f60134f;

    public CloudControlConfig.CodeSeat f60135g;

    public s f60136h;

    public boolean f60137i;

    public int f60138j;

    public int f60139k;

    public long f60140l;

    public boolean f60141m;
    public int mFillSource;

    public final LinkedHashMap<String, String> f60142n;

    public int f60143o;

    public boolean f60144p;

    public boolean f60145q;

    public String f60146r;

    public String f60147s;

    public Map<String, Object> f60148t;

    public boolean f60149u;

    public int f60150v;

    public RunTimer.TimeOutCallback f60151w;

    public String f60152x;

    public long f60153y;

    public Bundle f60154z;

    public class a implements RunTimer.TimeOutCallback {
        public a() {
        }

        @Override
        public void isTimeOut() {
            AdLogUtil.Log().w(ComConstants.AD_FLOW, "TBaseAd --> Load ad is time out ");
            b.this.clearCurrentAd();
            s sVar = b.this.f60136h;
            if (sVar != null) {
                sVar.onError(TAdErrorCode.ERROR_FILL_FAILED_WITH_MEDIATION_TIME_OUT);
            }
        }
    }

    public class C0731b implements Preconditions.a {
        public C0731b() {
        }

        @Override
        public void onRun() {
            b.this.o();
        }
    }

    public class c implements Preconditions.a {
        public c() {
        }

        @Override
        public void onRun() {
            b.this.s();
        }
    }

    public b(Context context, String str) {
        this.f60129a = "";
        this.f60130b = null;
        this.f60133e = false;
        this.f60134f = false;
        this.f60138j = 60000;
        this.f60139k = 0;
        this.f60140l = 0L;
        this.f60141m = false;
        this.f60142n = new LinkedHashMap<>();
        this.f60150v = 1;
        this.f60151w = new a();
        this.f60129a = str;
        this.f60130b = context.getApplicationContext();
        if (e.a() == null) {
            e.i(context);
        }
        b();
    }

    public abstract ee.c a(CloudControlConfig.CodeSeat codeSeat);

    public abstract boolean a(int i10);

    public int c(CloudControlConfig.CodeSeat codeSeat) {
        int i10 = 0;
        if (codeSeat == null) {
            return 0;
        }
        int iIntValue = codeSeat.getAdxShowRate().intValue();
        int iIntValue2 = codeSeat.getEwShowRate().intValue();
        Random random = new Random(System.currentTimeMillis());
        int iAbs = Math.abs(random.nextInt() % 100);
        int iAbs2 = Math.abs(random.nextInt() % 100);
        if (iAbs < iIntValue && iAbs2 < iIntValue2) {
            i10 = 3;
        } else if (iAbs < iIntValue) {
            i10 = 1;
        } else if (iAbs2 < iIntValue2) {
            i10 = 2;
        }
        AdLogUtil.Log().d("TBaseAd", "Traffic support config: adxShowRate " + iIntValue + " ewShowRate " + iIntValue2 + ",current random result is: " + i10);
        return i10;
    }

    public abstract boolean c();

    public void clearCurrentAd() {
        if (this.f60133e && this.f60132d != null) {
            a();
        }
        stopTimer();
        ee.c cVar = this.f60132d;
        if (cVar != null) {
            cVar.w();
        }
        setIsShowing(false);
        if (this.f60133e) {
            AdLogUtil.Log().d(ComConstants.AD_FLOW, "cancel request ad ");
        }
    }

    public i d() {
        i iVar = new i();
        iVar.c(this.f60154z);
        iVar.w(this.f60139k);
        iVar.k(this.f60145q);
        iVar.e(this.f60146r);
        iVar.j(this.f60147s);
        iVar.f(this.f60148t);
        iVar.n(this.f60149u);
        return iVar;
    }

    public void destroy() {
        Preconditions.d(new C0731b());
    }

    public int e() {
        return this.f60143o;
    }

    public String enterScene(String str, int i10) {
        if (TextUtils.isEmpty(TAdManager.getAppId())) {
            AdLogUtil.Log().e("TBaseAd", "appId is empty");
            return "";
        }
        if (!e.h()) {
            AdLogUtil.Log().e("TBaseAd", "you should init first");
            return "";
        }
        Preconditions.a();
        String strO = DeviceUtil.o();
        a(strO, str, i10);
        if (this.f60142n.size() >= 24) {
            Iterator<String> it = this.f60142n.keySet().iterator();
            if (it.hasNext()) {
                this.f60142n.remove(it.next());
            }
        }
        this.f60142n.put(strO, str);
        return strO;
    }

    public final AdditionalInfo f() {
        AdditionalInfo additionalInfo = new AdditionalInfo();
        additionalInfo.setPlacementId(this.f60129a);
        additionalInfo.setMcc(k7.c.d());
        additionalInfo.setTriggerId(this.f60152x);
        CloudControlConfig.CodeSeat codeSeat = this.f60135g;
        if (codeSeat != null) {
            additionalInfo.setTrafficGroupId(codeSeat.getTrafficGroupId());
            additionalInfo.setExperimentGroupId(this.f60135g.getExperimentGroupId());
        }
        additionalInfo.setSdkVersion(k7.c.l());
        return additionalInfo;
    }

    public final ee.c g() {
        CloudControlConfig.CodeSeat codeSeat;
        if (this.f60136h == null || (codeSeat = this.f60135g) == null) {
            return null;
        }
        if (this.f60132d == null) {
            this.f60132d = a(codeSeat);
        }
        return this.f60132d;
    }

    public int getSupportFlag() {
        return this.f60139k;
    }

    public double getTopPrice(int i10) {
        AdCache cache = AdCacheManager.getCache(i10);
        if (cache == null) {
            return 0.0d;
        }
        return cache.getMaxPrice(this.f60129a, this.f60145q);
    }

    public final Network h() {
        CloudControlConfig.CodeSeat codeSeat = this.f60135g;
        if (codeSeat == null || codeSeat.getNetworks() == null) {
            return null;
        }
        for (Network network : this.f60135g.getNetworks()) {
            if (network != null && network.getSource().intValue() == 0) {
                return network;
            }
        }
        return null;
    }

    public boolean hasAd() {
        if (TextUtils.isEmpty(TAdManager.getAppId())) {
            AdLogUtil.Log().e("TBaseAd", "appId is empty");
            return false;
        }
        if (!e.h()) {
            AdLogUtil.Log().e("TBaseAd", "you should init first");
            return false;
        }
        if (this.f60141m) {
            a(false, 3);
            AdLogUtil.Log().d("TBaseAd", "current object is destroyed");
            return false;
        }
        if (TextUtils.isEmpty(this.f60129a)) {
            a(false, 4);
            AdLogUtil.Log().d("TBaseAd", "isReady,mAdUnit is null");
            return false;
        }
        if (this.f60135g == null) {
            this.f60135g = h.a(this.f60129a);
        }
        CloudControlConfig.CodeSeat codeSeat = this.f60135g;
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
        AdCache cache = AdCacheManager.getCache(this.f60135g.getCodeSeatType().intValue());
        if (cache == null) {
            a(false, 6);
            AdLogUtil.Log().d("TBaseAd", "isReady,no ad cache");
            return false;
        }
        boolean zHasAds = cache.hasAds(this.f60129a, this.f60145q);
        AdLogUtil.Log().d("TBaseAd", "isReady key " + this.f60129a + " hasAd " + zHasAds);
        a(zHasAds, 0);
        return zHasAds;
    }

    public final ICacheAd i() {
        ee.c cVar = this.f60132d;
        if (cVar == null) {
            return null;
        }
        return cVar.G().getCache(this.f60129a, false, 0, this.f60145q);
    }

    public boolean isLoaded() {
        return this.f60134f;
    }

    public final void j() {
        CloudControlConfig.CodeSeat codeSeat;
        if (this.f60136h == null || (codeSeat = this.f60135g) == null) {
            this.f60132d = null;
            return;
        }
        ee.c cVarA = a(codeSeat);
        this.f60132d = cVarA;
        if (cVarA != null) {
            cVarA.o(this.f60136h);
            this.f60132d.k(this.f60131c);
            this.f60132d.R(this.f60150v);
        }
    }

    public final void k() {
        this.f60135g = h.a(this.f60129a);
        b(false, !NetStateManager.checkNetworkState(false) ? 1 : 0);
        m();
        if (this.f60144p && !c()) {
            a(TAdErrorCode.ERROR_CODE_AD_IS_SHOWING);
            return;
        }
        this.f60134f = false;
        clearCurrentAd();
        this.f60133e = true;
        if (this.f60141m) {
            this.f60133e = false;
            a(TAdErrorCode.ERROR_CURRENT_OBJECT_IS_DESTROYED);
            AdLogUtil.Log().w(ComConstants.AD_FLOW, "TBaseAd -->current object haved been destroyed");
            MediaLogUtil.e("TBaseAd", "current object haved been destroyed");
            return;
        }
        if (TextUtils.isEmpty(TAdManager.getAppId())) {
            this.f60133e = false;
            a(TAdErrorCode.ERROR_INVALID_APP_ID);
            AdLogUtil.Log().w(ComConstants.AD_FLOW, "TBaseAd --> Network request is invalid, the appId or appToken must be valid ----- Current app id is:" + TAdManager.getAppId());
            MediaLogUtil.e("TBaseAd", "loadAdInternal,appId is empty");
            return;
        }
        CloudControlConfig.CodeSeat codeSeat = this.f60135g;
        if (codeSeat == null) {
            MediaLogUtil.e("TBaseAd", "loadAdInternal,config is null；codeSeatId = " + this.f60129a);
            this.f60133e = false;
            CloudControlConfigSync.b(6);
            int iF = l7.a.e().f(ComConstants.Pref.CLOUD_CONFIG_ERROR_CODE);
            if (iF != 0) {
                a(ComConstants.transferCloudErrorCode(iF));
                return;
            } else {
                a(TAdErrorCode.ERROR_AD_UNIT_CONFIG_EMPTY);
                return;
            }
        }
        this.f60143o = codeSeat.getCodeSeatType().intValue();
        if (Boolean.FALSE.equals(this.f60135g.getCloudControlEnable())) {
            MediaLogUtil.e("TBaseAd", "loadAdInternal,config is closed");
            this.f60133e = false;
            a(TAdErrorCode.ERROR_CLOUD_AD_SEAT_IS_CLOSED);
            AdLogUtil.Log().w(ComConstants.AD_FLOW, "TBaseAd --> current ad unit is close ");
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jC = k0.c(jCurrentTimeMillis);
        long jB = k0.b(jCurrentTimeMillis);
        if (this.f60135g.getAdShowCountLimitDay().intValue() == 0 || (this.f60135g.getAdShowCountLimitDay().intValue() != -1 && jC == this.f60135g.getTodayZeroClock() && this.f60135g.getTodayShowTimes() >= this.f60135g.getAdShowCountLimitDay().intValue())) {
            AdLogUtil.Log().w(ComConstants.AD_FLOW, "TBaseAd --> ad show times can not exceed day show max");
            MediaLogUtil.e("TBaseAd", "ad show times reach the limit of day,day showTimes " + this.f60135g.getAdShowCountLimitDay());
            this.f60133e = false;
            a(TAdErrorCode.ERROR_AD_SHOW_TIMES_OUT_OF_DAY);
            return;
        }
        if (this.f60135g.getAdShowCountLimitHour().intValue() == 0 || (this.f60135g.getAdShowCountLimitHour().intValue() != -1 && jB == this.f60135g.getCurrentHourZeroClock() && this.f60135g.getCurrentHourShowTimes() >= this.f60135g.getAdShowCountLimitHour().intValue())) {
            AdLogUtil.Log().w(ComConstants.AD_FLOW, "TBaseAd --> ad display has reached the limit of hours");
            MediaLogUtil.e("TBaseAd", "ad display has reached the limit of hour,hour showTimes " + this.f60135g.getAdShowCountLimitHour());
            this.f60133e = false;
            a(TAdErrorCode.ERROR_AD_SHOW_TIMES_OUT_OF_HOUR);
            return;
        }
        long lastShowTime = jCurrentTimeMillis - this.f60135g.getLastShowTime();
        if (lastShowTime <= 0) {
            lastShowTime = -lastShowTime;
        }
        if (this.f60135g.getAdShowTimeInterval().intValue() != -1000 && lastShowTime <= this.f60135g.getAdShowTimeInterval().intValue()) {
            AdLogUtil.Log().w(ComConstants.AD_FLOW, "TBaseAd --> ad display did not reach the interval");
            MediaLogUtil.e("TBaseAd", "ad display did not reach the interval,time " + this.f60135g.getAdShowTimeInterval());
            this.f60133e = false;
            a(TAdErrorCode.ERROR_AD_SHOW_NOT_IN_INTERVAL);
            return;
        }
        this.f60139k = c(this.f60135g);
        j();
        if (!a(e())) {
            AdLogUtil.Log().w(ComConstants.AD_FLOW, "TBaseAd --> code seat type does not match request type");
            MediaLogUtil.e("TBaseAd", "code seat type does not match request type ---> " + this.f60135g.getCodeSeatType());
            this.f60133e = false;
            a(TAdErrorCode.ERROR_AD_TYPE_LOAD_INCONSISTENCY);
            return;
        }
        this.f60135g = m.a(this.f60135g);
        if (NetStateManager.checkNetworkState(false)) {
            p();
            r();
            return;
        }
        AdLogUtil.Log().w(ComConstants.AD_FLOW, "TBaseAd --> net error ");
        MediaLogUtil.e("TBaseAd", "net error");
        this.f60133e = false;
        Network networkH = h();
        ee.c cVarG = g();
        if (networkH == null || cVarG == null || !cVarG.d0()) {
            a(TAdErrorCode.ERROR_FILL_FAILED_WITH_NETWORK_EXCEPTION);
            return;
        }
        cVarG.g(this.f60154z);
        cVarG.O(this.f60135g.getAdRequestCount().intValue());
        if (cVarG.r(this.f60135g, networkH)) {
            return;
        }
        a(TAdErrorCode.ERROR_FILL_FAILED_NO_NETWORK_AND_OFFLINE);
    }

    public void l() {
        if (this.f60136h == null) {
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
        this.f60136h.c(additionalInfoF);
    }

    public void loadAd() {
        b(1);
    }

    public final void m() {
        if (this.f60136h != null) {
            this.f60136h.q(f());
        }
    }

    public void n() {
        a((TAdNativeInfo) null);
    }

    public final void o() {
        s sVar = this.f60136h;
        if (sVar != null) {
            sVar.h(null);
            this.f60136h.g(null);
            this.f60136h.i(null);
        }
        this.f60136h = null;
        this.f60135g = null;
        RecordTestInfo.destroy();
        setIsShowing(false);
        clearCurrentAd();
        if (this.f60133e) {
            trackingAdLoaded(TAdErrorCode.CODE_CURRENT_OBJECT_IS_DESTROYED, TAdErrorCode.ERROR_CURRENT_OBJECT_IS_DESTROYED.getErrorMessage(), -1);
        }
        this.f60133e = false;
        this.f60141m = true;
    }

    public final void p() {
        CloudControlConfig.CodeSeat codeSeat = this.f60135g;
        if (codeSeat != null) {
            this.f60138j = codeSeat.getAdRequestTimeout().intValue() * 1000;
        }
        if (this.f60138j > 0) {
            if (this.f60131c == null) {
                this.f60131c = new RunTimer();
            }
            this.f60131c.cancelTimeTask();
            this.f60131c.setTimeOutCallback(this.f60151w);
            this.f60131c.setScheduleTime(this.f60138j);
            this.f60131c.runTimerTask();
        }
    }

    public void pause() {
        ee.c cVar = this.f60132d;
        if (cVar != null) {
            cVar.i0();
        }
    }

    public final void preload() {
        loadAd();
    }

    public void q() {
    }

    public final void r() {
        if (this.f60135g == null) {
            MediaLogUtil.e("TBaseAd", "startLoadMediation codeSeat is null");
            a(TAdErrorCode.ERROR_AD_UNIT_CONFIG_EMPTY);
            return;
        }
        AdLogUtil.Log().i(ComConstants.AD_FLOW, "*----> TBaseAd - current cloudConfig is " + this.f60135g.toString());
        List<Network> networks = this.f60135g.getNetworks();
        if (networks == null || networks.isEmpty()) {
            AdLogUtil.Log().w(ComConstants.AD_FLOW, "TBaseAd --> ad is empty ");
            MediaLogUtil.e("TBaseAd", "startLoadMediation,network is empty");
            a(TAdErrorCode.ERROR_AD_SOURCE_LIST_IS_EMPTY);
            return;
        }
        ee.c cVarG = g();
        if (cVarG != null) {
            cVarG.g(this.f60154z);
            if (cVarG.q(this.f60130b)) {
                return;
            }
            MediaLogUtil.e("TBaseAd", "prepare for request failed");
            a(TAdErrorCode.ERROR_PREPARE_REQUEST_FAILED);
        }
    }

    public void resume() {
        ee.c cVar = this.f60132d;
        if (cVar != null) {
            cVar.m0();
        }
    }

    public final void s() {
        RunTimer runTimer = this.f60131c;
        if (runTimer != null) {
            runTimer.cancelTimeTask();
            this.f60131c = null;
        }
    }

    public void setAdLoadScenes(String str, String str2, Map<String, Object> map) {
        this.f60146r = str;
        this.f60147s = str2;
        this.f60148t = map;
    }

    public void setCodeSeatType(int i10) {
        this.f60143o = i10;
    }

    public void setContainVulgarContent(boolean z10) {
        this.f60145q = z10;
    }

    public void setCurrActivityFullscreen(boolean z10) {
        this.f60149u = z10;
    }

    public void setIsShowing(boolean z10) {
        this.f60144p = z10;
    }

    public void setLoaded(boolean z10) {
        this.f60134f = z10;
    }

    public void setLoading(boolean z10) {
        this.f60133e = z10;
    }

    public void setRequestBody(TAdRequestBody tAdRequestBody) {
        if (tAdRequestBody == null) {
            return;
        }
        b();
        this.f60138j = tAdRequestBody.getScheduleTime();
        s sVar = this.f60136h;
        if (sVar != null) {
            sVar.h(tAdRequestBody.getAdListener());
            this.f60136h.i(tAdRequestBody.getAdditionalListener());
        }
    }

    public void stopTimer() {
        Preconditions.d(new c());
    }

    public void t() {
        if (this.f60136h != null) {
            if (NetStateManager.checkNetworkState(false)) {
                TAdErrorCode tAdErrorCode = TAdErrorCode.ERROR_TRIGGER_SHOW_ONLINE_NO_AD;
                trackingTriggerShowError(tAdErrorCode);
                this.f60136h.onShowError(tAdErrorCode);
            } else {
                TAdErrorCode tAdErrorCode2 = TAdErrorCode.ERROR_RIGGER_SHOW_OFFLINE_NO_AD;
                trackingTriggerShowError(tAdErrorCode2);
                this.f60136h.onShowError(tAdErrorCode2);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:28:0x00d5 A[Catch: Exception -> 0x0038, TryCatch #0 {Exception -> 0x0038, blocks: (B:3:0x0028, B:5:0x002c, B:9:0x003b, B:11:0x006c, B:13:0x0070, B:18:0x008c, B:20:0x0098, B:26:0x00b5, B:28:0x00d5, B:30:0x00db, B:32:0x010e, B:35:0x0115, B:42:0x01b4, B:39:0x01ac, B:43:0x01c3, B:48:0x01e1, B:52:0x021c, B:54:0x023d, B:55:0x0246, B:57:0x024a, B:58:0x0260, B:60:0x0269, B:61:0x0281, B:65:0x028d, B:69:0x029b, B:68:0x0297, B:64:0x0289, B:51:0x0218, B:47:0x01dd, B:21:0x009e, B:23:0x00a2), top: B:73:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x00da  */
    public void trackingAdLoaded(int i10, String str, int i11) {
        double d10;
        Bundle bundle;
        Network network;
        Object obj;
        try {
            if (this.f60154z == null) {
                AdLogUtil.Log().w(ComConstants.AD_FLOW, "mBundle is null");
                return;
            }
            Bundle bundle2 = new Bundle();
            bundle2.putString(TrackingKey.TRIGGER_ID, this.f60154z.getString(TrackingKey.TRIGGER_ID));
            bundle2.putLong(TrackingKey.TRIGGER_TS, this.f60154z.getLong(TrackingKey.TRIGGER_TS));
            bundle2.putInt("ad_type", this.f60154z.getInt("ad_type"));
            bundle2.putInt(TrackingKey.AD_TRIGGER_STATUS, this.f60154z.getInt(TrackingKey.AD_TRIGGER_STATUS));
            ee.c cVar = this.f60132d;
            ICacheAd cache = (cVar == null || this.f60135g == null) ? null : cVar.G().getCache(this.f60135g.getCodeSeatId(), false, this.f60139k, this.f60145q);
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
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("trackingAdLoaded --> isNative = ");
                    sb2.append(cache instanceof AdNativeInfo);
                    sb2.append(" 设置标识符 contextBundle.PLATFORM=");
                    if (bundle != null) {
                        obj = bundle.get(TrackingKey.PLATFORM);
                    } else {
                        obj = null;
                    }
                    sb2.append(obj);
                    adLogUtilLog.d("TBaseAd", sb2.toString());
                    bundle2.putInt(TrackingKey.IS_OFFLINE_AD, cache.isOfflineAd() ? 1 : 0);
                    bundle2.putString(TrackingKey.MEDIATOR_SOURCE, cache.getMediatorSourceName());
                    bundle2.putString(TrackingKey.MEDIATOR_CODE_SEAT_ID, cache.getMediatorSourceUnitId());
                    network = network2;
                    d10 = ecpmPrice;
                }
                AdLogUtil adLogUtilLog2 = AdLogUtil.Log();
                StringBuilder sb3 = new StringBuilder();
                sb3.append("trackingAdLoaded --> isNative = ");
                sb3.append(cache instanceof AdNativeInfo);
                sb3.append(" 设置标识符 contextBundle.PLATFORM=");
                if (bundle != null) {
                    obj = bundle.get(TrackingKey.PLATFORM);
                } else {
                    obj = null;
                }
                sb3.append(obj);
                adLogUtilLog2.d("TBaseAd", sb3.toString());
                bundle2.putInt(TrackingKey.IS_OFFLINE_AD, cache.isOfflineAd() ? 1 : 0);
                bundle2.putString(TrackingKey.MEDIATOR_SOURCE, cache.getMediatorSourceName());
                bundle2.putString(TrackingKey.MEDIATOR_CODE_SEAT_ID, cache.getMediatorSourceUnitId());
                network = network2;
                d10 = ecpmPrice;
            } else {
                d10 = 0.0d;
                bundle = null;
                network = null;
            }
            a(bundle2, d10);
            if (bundle != null) {
                bundle2.putInt(TrackingKey.IS_PRE_TRIGGER, bundle.getInt(TrackingKey.IS_PRE_TRIGGER));
                bundle2.putInt(TrackingKey.REQUEST_TYPE, bundle.getInt(TrackingKey.REQUEST_TYPE));
                bundle2.putInt(TrackingKey.PLATFORM, bundle.getInt(TrackingKey.PLATFORM));
                bundle2.putString("app_id", bundle.getString("app_id"));
                bundle2.putString(TrackingKey.CODE_SEAT_ID, bundle.getString(TrackingKey.CODE_SEAT_ID));
                bundle2.putDouble(TrackingKey.BIDDING_PRICE, bundle.getDouble(TrackingKey.BIDDING_PRICE));
                bundle2.putInt(TrackingKey.BIDDING_TYPE, bundle.getInt(TrackingKey.BIDDING_TYPE));
                bundle2.putInt(TrackingKey.PRIORITY, bundle.getInt(TrackingKey.PRIORITY));
                bundle2.putInt(TrackingKey.AD_COUNT, bundle.getInt(TrackingKey.AD_COUNT));
                bundle2.putInt(TrackingKey.IS_RETREATAD, bundle.getInt(TrackingKey.IS_RETREATAD));
                bundle2.putString(TrackingKey.REQUEST_ID, bundle.getString(TrackingKey.REQUEST_ID));
                RecordTestInfo.record("adTrackingFilling code_seat_id:" + bundle.getString(TrackingKey.CODE_SEAT_ID) + ",platform:" + bundle.getInt(TrackingKey.PLATFORM) + ",bidding_price:" + bundle.getDouble(TrackingKey.BIDDING_PRICE));
                bundle2.putInt(TrackingKey.REQUEST_NUM, bundle.getInt(TrackingKey.REQUEST_NUM));
                int i12 = 1;
                if (bundle.getInt(TrackingKey.AD_TRIGGER_STATUS) == 1) {
                    i12 = 3;
                } else if (cache.isOfflineAd()) {
                    i12 = 2;
                }
                bundle2.putInt(TrackingKey.FILLING_AD_TYPE, i12);
                bundle.putInt(TrackingKey.FILLING_AD_TYPE, i12);
                bundle2.putInt(TrackingKey.IS_PRELOAD, bundle.getInt(TrackingKey.IS_PRELOAD));
            }
            RecordTestInfo.record("adTrackingFilling");
            bundle2.putString(TrackingKey.CLD_APP_ID, this.f60154z.getString("app_id"));
            CloudControlConfig.CodeSeat codeSeat = this.f60135g;
            String experimentGroupId = "";
            bundle2.putString(TrackingKey.CLD_CODE_SEAT_ID, codeSeat == null ? "" : codeSeat.getCodeSeatId());
            int iM = 0;
            bundle2.putInt(TrackingKey.IS_TIMEOUT, 0);
            bundle2.putInt("error_code", i10);
            bundle2.putString(TrackingKey.ERROR_MESSAGE, TAdErrorCode.simpleErrorMessage(str));
            bundle2.putInt(TrackingKey.FILLING_SOURCE, i11);
            bundle2.putLong(TrackingKey.FILLING_TS, System.currentTimeMillis());
            bundle2.putInt(TrackingKey.INSTALL_FACEBOOK, ComConstants.isFbAppExist ? 1 : 0);
            ee.c cVar2 = this.f60132d;
            if (cVar2 != null) {
                iM = cVar2.M();
            }
            bundle2.putInt(TrackingKey.FILTER_COUNT, iM);
            bundle2.putInt(TrackingKey.OPTIMIZE_STATUS, this.f60154z.getInt(TrackingKey.OPTIMIZE_STATUS));
            bundle2.putInt(TrackingKey.PRIORITY_CODE, this.f60154z.getInt(TrackingKey.PRIORITY_CODE));
            ee.c cVar3 = this.f60132d;
            if (cVar3 != null) {
                bundle2.putDouble(TrackingKey.MAX_PRICE, cVar3.S());
            }
            if (LogSwitch.isDebug) {
                RecordTestInfo.LogMsg("fill result code : " + i10, RecordTestInfo.LOG_CODE7);
            }
            bundle2.putInt(TrackingKey.IS_CONTAIN_VULGAR, this.f60145q ? 1 : 0);
            if (network != null) {
                bundle2.putDouble(TrackingKey.PRICE_COEFFICIENT, network.getShowPriceCoefficient().doubleValue());
                bundle2.putInt(TrackingKey.PLATFORM, network.getSource().intValue());
            }
            CloudControlConfig.CodeSeat codeSeat2 = this.f60135g;
            bundle2.putString(TrackingKey.TRAFFIC_GROUP_ID, codeSeat2 == null ? "" : codeSeat2.getTrafficGroupId());
            CloudControlConfig.CodeSeat codeSeat3 = this.f60135g;
            if (codeSeat3 != null) {
                experimentGroupId = codeSeat3.getExperimentGroupId();
            }
            bundle2.putString(TrackingKey.EXPERIMENT_GROUP_ID, experimentGroupId);
            TrackingManager.trackingAdLoaded(bundle2);
        } catch (Exception e10) {
            AdLogUtil.Log().e(Log.getStackTraceString(e10));
        }
    }

    public void trackingTriggerShowError(TAdErrorCode tAdErrorCode) {
        Bundle bundle = new Bundle();
        try {
            Bundle bundle2 = this.f60154z;
            if (bundle2 != null) {
                bundle.putString(TrackingKey.TRIGGER_ID, bundle2.getString(TrackingKey.TRIGGER_ID));
                bundle.putLong(TrackingKey.TRIGGER_TS, this.f60154z.getLong(TrackingKey.TRIGGER_TS));
                bundle.putDouble(TrackingKey.BIDDING_PRICE, this.f60154z.getDouble(TrackingKey.BIDDING_PRICE));
                bundle.putInt(TrackingKey.PLATFORM, this.f60154z.getInt(TrackingKey.PLATFORM));
            } else {
                bundle.putString(TrackingKey.TRIGGER_ID, TrackingUtil.getTriggerId());
                bundle.putLong(TrackingKey.TRIGGER_TS, System.currentTimeMillis());
            }
            if (this.f60135g == null) {
                this.f60135g = h.a(this.f60129a);
            }
            bundle.putString(TrackingKey.CLD_APP_ID, TAdManager.getAppId());
            bundle.putString("app_id", TAdManager.getAppId());
            bundle.putString(TrackingKey.CODE_SEAT_ID, this.f60129a);
            bundle.putString(TrackingKey.CLD_CODE_SEAT_ID, this.f60129a);
            bundle.putInt("ad_type", e());
            CloudControlConfig.CodeSeat codeSeat = this.f60135g;
            if (codeSeat != null) {
                bundle.putString(TrackingKey.TRAFFIC_GROUP_ID, codeSeat.getTrafficGroupId());
                bundle.putString(TrackingKey.EXPERIMENT_GROUP_ID, this.f60135g.getExperimentGroupId());
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
        } catch (Exception e10) {
            AdLogUtil.Log().e(ComConstants.AD_FLOW, Log.getStackTraceString(e10));
        }
    }

    public void a(TAdErrorCode tAdErrorCode) {
        s sVar = this.f60136h;
        if (sVar != null) {
            sVar.onError(tAdErrorCode);
        }
    }

    public final void b(int i10) {
        if (!e.h()) {
            AdLogUtil.Log().e("TBaseAd", "you should init first");
            return;
        }
        com.cloud.hisavana.sdk.manager.b.f22054a.d();
        this.f60137i = false;
        this.f60150v = i10;
        Preconditions.d(new Preconditions.a() {
            @Override
            public final void onRun() {
                this.f60128a.k();
            }
        });
    }

    public String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return this.f60142n.get(str);
    }

    public final void a(Bundle bundle, double d10) {
        ArrayList<ICacheAd> caches;
        NativeAdWrapper nativeAdWrapper;
        StringBuilder sb2 = new StringBuilder();
        ee.c cVar = this.f60132d;
        String strSubstring = "";
        int i10 = 0;
        if (cVar != null && (caches = cVar.G().getCaches(this.f60129a, 100, false, this.f60145q)) != null) {
            int i11 = 0;
            for (ICacheAd iCacheAd : caches) {
                if (iCacheAd.getEcpmPrice() < d10) {
                    i11++;
                    if (iCacheAd.getAdSource() == 0) {
                        if (iCacheAd instanceof BaseAd) {
                            sb2.append(((BaseAd) iCacheAd).mBundle.get(TrackingKey.REQUEST_ID));
                        } else if ((iCacheAd instanceof AdNativeInfo) && (nativeAdWrapper = ((AdNativeInfo) iCacheAd).getNativeAdWrapper()) != null && nativeAdWrapper.getAdImpl() != null) {
                            sb2.append(nativeAdWrapper.getAdImpl().mBundle.get(TrackingKey.REQUEST_ID));
                        }
                        sb2.append(",");
                    }
                }
            }
            if (sb2.toString().length() > 1) {
                strSubstring = sb2.substring(0, sb2.length() - 1);
                AdLogUtil.Log().d("TBaseAd", "bidding_platform_str" + strSubstring);
            }
            i10 = i11;
        }
        if (bundle != null) {
            bundle.putString(TrackingKey.BIDDING_FAIL_PLATFORM, strSubstring);
            bundle.putInt(TrackingKey.VALID_CACHE_MATERIAL_CNT, i10);
        }
    }

    public void c(TAdErrorCode tAdErrorCode) {
        if (this.f60136h != null) {
            AdditionalInfo additionalInfoF = f();
            if (tAdErrorCode != null) {
                additionalInfoF.setErrorCode(tAdErrorCode);
            }
            this.f60136h.d(tAdErrorCode, additionalInfoF);
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
        this.f60143o = codeSeat.getCodeSeatType().intValue();
        if (!a(codeSeat.getCodeSeatType().intValue())) {
            AdLogUtil.Log().w(ComConstants.AD_FLOW, "TBaseAd --> code seat type does not match request type");
            MediaLogUtil.e("TBaseAd", "code seat type does not match request type ---> " + codeSeat.getCodeSeatType());
            return TAdErrorCode.ERROR_AD_TYPE_LOAD_INCONSISTENCY;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jC = k0.c(jCurrentTimeMillis);
        long jB = k0.b(jCurrentTimeMillis);
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

    public void d(TAdErrorCode tAdErrorCode) {
        if (this.f60136h != null) {
            AdditionalInfo additionalInfoF = f();
            if (tAdErrorCode != null) {
                additionalInfoF.setErrorCode(tAdErrorCode);
            }
            this.f60136h.n(tAdErrorCode, additionalInfoF);
        }
    }

    public b(Context context) {
        this.f60129a = "";
        this.f60130b = null;
        this.f60133e = false;
        this.f60134f = false;
        this.f60138j = 60000;
        this.f60139k = 0;
        this.f60140l = 0L;
        this.f60141m = false;
        this.f60142n = new LinkedHashMap<>();
        this.f60150v = 1;
        this.f60151w = new a();
        this.f60130b = context.getApplicationContext();
        if (e.a() == null) {
            e.i(context);
        }
        b();
    }

    public final void a() {
        if (this.f60154z == null) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putInt(TrackingKey.REQUEST_TYPE, 1);
        bundle.putString(TrackingKey.TRIGGER_ID, this.f60154z.getString(TrackingKey.TRIGGER_ID));
        bundle.putLong(TrackingKey.TRIGGER_TS, this.f60154z.getLong(TrackingKey.TRIGGER_TS));
        bundle.putInt("ad_type", this.f60154z.getInt("ad_type"));
        bundle.putString(TrackingKey.CLD_APP_ID, this.f60154z.getString(TrackingKey.CLD_APP_ID));
        bundle.putString(TrackingKey.CLD_CODE_SEAT_ID, this.f60154z.getString(TrackingKey.CLD_CODE_SEAT_ID));
        bundle.putString("app_id", this.f60154z.getString("app_id"));
        bundle.putString(TrackingKey.CODE_SEAT_ID, this.f60154z.getString(TrackingKey.CODE_SEAT_ID));
        bundle.putInt(TrackingKey.IS_RETREATAD, this.f60154z.getInt(TrackingKey.IS_RETREATAD));
        bundle.putString(TrackingKey.CLD_CONFIGURE_ID, l7.a.e().j("cloudControlVersion"));
        bundle.putInt(TrackingKey.IS_PRELOAD, this.f60154z.getInt(TrackingKey.IS_PRELOAD));
        bundle.putString(TrackingKey.TRAFFIC_GROUP_ID, this.f60154z.getString(TrackingKey.TRAFFIC_GROUP_ID));
        bundle.putString(TrackingKey.EXPERIMENT_GROUP_ID, this.f60154z.getString(TrackingKey.EXPERIMENT_GROUP_ID));
        TrackingManager.trackingAdCancel(bundle);
    }

    public b() {
        this.f60129a = "";
        this.f60130b = null;
        this.f60133e = false;
        this.f60134f = false;
        this.f60138j = 60000;
        this.f60139k = 0;
        this.f60140l = 0L;
        this.f60141m = false;
        this.f60142n = new LinkedHashMap<>();
        this.f60150v = 1;
        this.f60151w = new a();
    }

    public final void a(String str, String str2, int i10) {
        Bundle bundle = new Bundle();
        bundle.putString("scene_id", str2);
        bundle.putString(TrackingKey.SCENE_TOKEN, str);
        bundle.putInt(TrackingKey.IS_OFFLINE, !NetStateManager.checkNetworkState(false) ? 1 : 0);
        if (this.f60135g == null) {
            this.f60135g = h.a(this.f60129a);
        }
        CloudControlConfig.CodeSeat codeSeat = this.f60135g;
        if (codeSeat == null) {
            bundle.putInt(TrackingKey.CACHE_STATUS, 1);
        } else {
            AdCache cache = AdCacheManager.getCache(codeSeat.getCodeSeatType().intValue());
            if (cache != null) {
                if (cache.hasAds(this.f60129a, this.f60145q)) {
                    bundle.putInt(TrackingKey.CACHE_STATUS, 0);
                } else {
                    bundle.putInt(TrackingKey.CACHE_STATUS, this.f60133e ? 2 : 1);
                }
            }
        }
        bundle.putString(TrackingKey.CLD_CODE_SEAT_ID, this.f60129a);
        bundle.putString(TrackingKey.CLD_APP_ID, TAdManager.getAppId());
        bundle.putLong("ts", System.currentTimeMillis());
        bundle.putInt(TrackingKey.AD_COUNT, i10);
        TrackingManager.trackEnterScene(bundle);
    }

    public void b(TAdErrorCode tAdErrorCode) {
        s sVar = this.f60136h;
        if (sVar != null) {
            sVar.onShowError(tAdErrorCode);
        }
    }

    public void b() {
        if (this.f60136h == null) {
            this.f60136h = new s(this);
        }
    }

    public final void b(boolean z10, int i10) {
        int[] validAndInvalidAdNum;
        this.f60152x = TrackingUtil.getTriggerId();
        Bundle bundle = new Bundle();
        this.f60154z = bundle;
        bundle.putString(TrackingKey.TRIGGER_ID, this.f60152x);
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.f60153y = jCurrentTimeMillis;
        this.f60154z.putLong(TrackingKey.TRIGGER_TS, jCurrentTimeMillis);
        CloudControlConfig.CodeSeat codeSeat = this.f60135g;
        if (codeSeat != null) {
            this.f60154z.putInt("ad_type", codeSeat.getCodeSeatType().intValue());
            AdCache cache = AdCacheManager.getCache(this.f60135g.getCodeSeatType().intValue());
            if (cache != null && (validAndInvalidAdNum = cache.getValidAndInvalidAdNum(this.f60129a)) != null && validAndInvalidAdNum.length >= 2) {
                int i11 = validAndInvalidAdNum[0];
                int i12 = validAndInvalidAdNum[1];
                this.f60154z.putInt(TrackingKey.CACHE_VALID_ADS, i11);
                this.f60154z.putInt(TrackingKey.CACHE_EXPIRE_ADS, i12);
            }
            this.f60154z.putInt(TrackingKey.MULTI_COUNT, this.f60135g.getAdRequestConcurrentCount().intValue());
            this.f60154z.putInt(TrackingKey.BIDDING_DURATION, (this.f60150v == 2 ? this.f60135g.getRealtimeBiddingWaitTime() : this.f60135g.getBiddingWaitTime()).intValue());
            this.f60154z.putString(TrackingKey.TRAFFIC_GROUP_ID, this.f60135g.getTrafficGroupId());
            this.f60154z.putString(TrackingKey.EXPERIMENT_GROUP_ID, this.f60135g.getExperimentGroupId());
            this.f60154z.putInt(TrackingKey.REQUEST_NUM, this.f60135g.getCodeSeatType().intValue() == 6 ? this.f60135g.getAdRequestCount().intValue() : 1);
        }
        this.f60154z.putString("app_id", TAdManager.getAppId());
        this.f60154z.putString(TrackingKey.CODE_SEAT_ID, this.f60129a);
        this.f60154z.putInt(TrackingKey.IS_PRE_TRIGGER, z10 ? 1 : 0);
        this.f60154z.putString(TrackingKey.CLD_APP_ID, TAdManager.getAppId());
        this.f60154z.putString(TrackingKey.CLD_CODE_SEAT_ID, this.f60129a);
        this.f60154z.putInt(TrackingKey.AD_TRIGGER_STATUS, i10);
        this.f60154z.putInt(TrackingKey.PRIORITY_CODE, this.f60139k);
        this.f60154z.putInt(TrackingKey.IS_CONTAIN_VULGAR, this.f60145q ? 1 : 0);
        this.f60154z.putInt(TrackingKey.TRIGGER_MODE, this.f60150v);
        TrackingManager.trackingADTrigger(this.f60154z);
    }

    public final void a(boolean z10, int i10) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.f60140l < 1000) {
            AdLogUtil.Log().e("TBaseAd", "isReady interval time is not fit");
            return;
        }
        this.f60140l = jCurrentTimeMillis;
        Bundle bundle = new Bundle();
        if (z10) {
            i10 = this.f60134f ? 1 : 2;
        }
        bundle.putInt("is_ready_status", i10);
        bundle.putString(TrackingKey.CLD_CODE_SEAT_ID, this.f60129a);
        bundle.putString(TrackingKey.CLD_APP_ID, TAdManager.getAppId());
        bundle.putLong("ts", System.currentTimeMillis());
        TrackingManager.trackIsReady(bundle);
    }

    public void a(TAdNativeInfo tAdNativeInfo) {
        Network network;
        if (this.f60136h == null) {
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
        this.f60136h.s(additionalInfoF);
    }
}
