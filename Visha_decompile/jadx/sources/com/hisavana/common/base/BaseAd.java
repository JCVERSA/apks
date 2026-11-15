package com.hisavana.common.base;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import com.cloud.hisavana.sdk.common.bean.AdActiveInfo;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.cloud.sdk.commonutil.util.Preconditions;
import com.hisavana.common.bean.AdCache;
import com.hisavana.common.bean.AdNativeInfo;
import com.hisavana.common.bean.AdditionalInfo;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.bean.TInnerAdRequestBody;
import com.hisavana.common.constant.ComConstants;
import com.hisavana.common.interfacz.ICacheAd;
import com.hisavana.common.interfacz.Iad;
import com.hisavana.common.interfacz.TAdditionalListener;
import com.hisavana.common.interfacz.WrapTAdAllianceListener;
import com.hisavana.common.manager.AdCacheManager;
import com.hisavana.common.manager.RequestingAdManager;
import com.hisavana.common.mock.RecordTestInfo;
import com.hisavana.common.tracking.TrackingKey;
import com.hisavana.common.tracking.TrackingManager;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.common.utils.AdUtil;
import com.hisavana.common.utils.MediaLogUtil;
import com.hisavana.common.utils.RunTimer;
import defpackage.ja1;
import defpackage.md8;
import defpackage.o9;
import defpackage.zm6;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

public abstract class BaseAd implements Iad {
    private int adSource;
    private TAdditionalListener additionalListener;
    private volatile int expireReason;
    protected boolean isContainVulgarContent;
    protected boolean isOfflineAd;
    private boolean isPreload;
    protected String mAdUnit;
    protected WeakReference<Context> mContext;
    protected boolean mCurrActivityFullscreen;
    protected Map<String, Object> mExtInfo;
    protected String mGameName;
    protected String mGameScene;
    private long mImpressionTime;
    private int mLoadStatus;
    private long mLoadedTime;
    protected final Network mNetwork;
    private double maxPrice;
    private String mediatorSourceName;
    private String mediatorSourceUnitId;
    private long requestTime;
    protected int requestType;
    protected RunTimer runTimer;
    private String sceneId;
    private String sceneToken;
    public double secondPrice;
    protected long startTime;
    private int ttl;
    private boolean isTimeOut = false;
    private int supportHisavanaFlag = 0;
    protected int mAdCount = 1;
    private final String TAG = "BaseAd";
    private double price = 0.0d;
    protected boolean isLoaded = false;
    protected final List<WrapTAdAllianceListener> mListenerList = new CopyOnWriteArrayList();
    private int mRequestRound = -1;
    public final Bundle mBundle = new Bundle();
    protected String mRequestId = null;
    protected String mTriggerId = null;
    protected String mShowId = null;
    private boolean isDestroyed = false;
    private AtomicBoolean reportScene = new AtomicBoolean(true);
    protected RunTimer.TimeOutCallback timeOutCallback = new RunTimer.TimeOutCallback() {
        @Override
        public void isTimeOut() {
            AdLogUtil.Log().d("BaseAd", "Load ad is time out" + BaseAd.this.getLogString());
            BaseAd.this.onTimeOut();
        }
    };

    public BaseAd(Context context, Network network) {
        this.mContext = new WeakReference<>(context);
        Preconditions.b(network);
        this.mNetwork = network;
    }

    private void adFailedToLoadTemp(TAdErrorCode tAdErrorCode) {
        RequestingAdManager.getInstance().removeRequest(this);
        AdLogUtil adLogUtilLog = AdLogUtil.Log();
        StringBuilder sb = new StringBuilder();
        sb.append("Ad request has been destroyed or loaded,isLoaded = ");
        sb.append(this.isLoaded);
        sb.append(",isDestroyed = ");
        sb.append(this.isDestroyed);
        sb.append("( triggerId is ");
        sb.append(this.mTriggerId);
        sb.append(", code seat id is ");
        Network network = this.mNetwork;
        sb.append(network == null ? "" : network.getCodeSeatId());
        sb.append(" )");
        adLogUtilLog.d("BaseAd", sb.toString());
        if (this.isLoaded) {
            return;
        }
        this.isLoaded = true;
        Bundle bundle = new Bundle();
        int i = TAdErrorCode.CODE_AD_REQUEST_FAILED;
        int errorCode = tAdErrorCode != null ? tAdErrorCode.getErrorCode() : 30003;
        if (errorCode != 0) {
            i = errorCode;
        }
        bundle.putInt("error_code", i);
        bundle.putString(TrackingKey.ERROR_MESSAGE, tAdErrorCode == null ? "null" : TAdErrorCode.simpleErrorMessage(tAdErrorCode.getErrorMessage()));
        bundle.putInt(TrackingKey.REQUEST_NUM, this.mAdCount);
        adReturnTracking(bundle);
        errorCallBack(tAdErrorCode);
        if (supportTimer()) {
            stopTimer();
        }
        destroyAd();
    }

    private void adLoadedTemp() {
        AdLogUtil adLogUtilLog = AdLogUtil.Log();
        StringBuilder sb = new StringBuilder();
        sb.append("Ad request has been destroyed or loaded,isLoaded = ");
        sb.append(this.isLoaded);
        sb.append(",isDestroyed = ");
        sb.append(this.isDestroyed);
        sb.append("( triggerId is ");
        sb.append(this.mTriggerId);
        sb.append(", code seat id is ");
        Network network = this.mNetwork;
        sb.append(network == null ? "" : network.getCodeSeatId());
        sb.append(" )");
        adLogUtilLog.d("BaseAd", sb.toString());
        RequestingAdManager.getInstance().removeRequest(this);
        if (this.isLoaded) {
            return;
        }
        if (this.mNetwork != null) {
            MediaLogUtil.d("BaseAd", "loadSuccess adSource " + this.mNetwork.getSource() + " id " + this.mNetwork.getCodeSeatId() + " " + getLogString());
        }
        ArrayList arrayList = new ArrayList(this.mListenerList.size());
        arrayList.addAll(this.mListenerList);
        addDataToAdCache(null);
        Bundle bundle = new Bundle();
        bundle.putInt("error_code", 0);
        bundle.putInt(TrackingKey.REQUEST_NUM, this.mAdCount);
        bundle.putInt(TrackingKey.IS_INTERNAL_AD, isInternalAd() ? 1 : 0);
        adReturnTracking(bundle);
        this.isLoaded = true;
        this.mLoadedTime = System.currentTimeMillis();
        loadedCallBack(arrayList);
        if (supportTimer()) {
            stopTimer();
        }
    }

    private void addDataToAdCache(List<TAdNativeInfo> list) {
        double ecpmPrice;
        AdCache cache = AdCacheManager.getCache(getAdType());
        if (cache == null) {
            return;
        }
        if (getAdType() != 6 && this.adSource == 0 && zm6.a.b() == 1) {
            ICacheAd adBySourceAndUnitID = cache.getAdBySourceAndUnitID(this.mAdUnit, this.adSource, this.isContainVulgarContent);
            double ecpmPrice2 = adBySourceAndUnitID == null ? -1.0d : adBySourceAndUnitID.getEcpmPrice();
            if (list == null) {
                ecpmPrice = this.price;
            } else {
                ecpmPrice = list.isEmpty() ? 0.0d : list.get(0).getEcpmPrice();
            }
            if (ecpmPrice2 >= ecpmPrice) {
                return;
            }
        }
        if (list == null) {
            cache.addCache(this.mAdUnit, this);
        } else {
            cache.addCaches(this.mAdUnit, list);
        }
    }

    private void addToContextParam(String str, Object obj) {
        if (obj == null) {
            return;
        }
        if (obj instanceof Integer) {
            this.mBundle.putInt(str, ((Integer) obj).intValue());
        } else if (obj instanceof String) {
            this.mBundle.putString(str, (String) obj);
        } else if (obj instanceof Long) {
            this.mBundle.putLong(str, ((Long) obj).longValue());
        }
    }

    private void appendContextParam(Bundle bundle) {
        bundle.putString(TrackingKey.TRIGGER_ID, this.mBundle.getString(TrackingKey.TRIGGER_ID));
        bundle.putLong(TrackingKey.TRIGGER_TS, this.mBundle.getLong(TrackingKey.TRIGGER_TS));
        bundle.putInt(TrackingKey.AD_TYPE, this.mBundle.getInt(TrackingKey.AD_TYPE));
        bundle.putString(TrackingKey.CLD_APP_ID, this.mBundle.getString(TrackingKey.CLD_APP_ID));
        bundle.putString(TrackingKey.CLD_CODE_SEAT_ID, this.mBundle.getString(TrackingKey.CLD_CODE_SEAT_ID));
        bundle.putInt("platform", this.mBundle.getInt("platform"));
        bundle.putString("app_id", this.mBundle.getString("app_id"));
        bundle.putString(TrackingKey.CODE_SEAT_ID, this.mBundle.getString(TrackingKey.CODE_SEAT_ID));
        bundle.putDouble(TrackingKey.BIDDING_PRICE, this.mBundle.getDouble(TrackingKey.BIDDING_PRICE));
        bundle.putInt("priority", this.mBundle.getInt("priority"));
        bundle.putInt(TrackingKey.AD_COUNT, this.mBundle.getInt(TrackingKey.AD_COUNT));
        bundle.putInt(TrackingKey.IS_RETREATAD, this.mBundle.getInt(TrackingKey.IS_RETREATAD));
        bundle.putInt(TrackingKey.IS_DEFAULT_AD, 0);
        bundle.putLong(TrackingKey.REQUEST_TS, this.mBundle.getLong(TrackingKey.REQUEST_TS));
        bundle.putInt(TrackingKey.REQUEST_TIME, this.mBundle.getInt(TrackingKey.REQUEST_TIME));
        bundle.putString("request_id", this.mBundle.getString("request_id"));
        bundle.putLong(TrackingKey.RETURN_TS, this.mBundle.getLong(TrackingKey.RETURN_TS));
        bundle.putInt(TrackingKey.RETURN_TIME, this.mBundle.getInt(TrackingKey.RETURN_TIME));
        bundle.putInt(TrackingKey.REQUEST_TYPE, this.mBundle.getInt(TrackingKey.REQUEST_TYPE));
        bundle.putInt(TrackingKey.BIDDING_TYPE, this.mBundle.getInt(TrackingKey.BIDDING_TYPE));
    }

    private void errorCallBack(TAdErrorCode tAdErrorCode) {
        for (WrapTAdAllianceListener wrapTAdAllianceListener : this.mListenerList) {
            if (wrapTAdAllianceListener != null) {
                wrapTAdAllianceListener.onError(tAdErrorCode);
            }
        }
    }

    private AdditionalInfo getBaseAdditionalInfo() {
        AdditionalInfo additionalInfo = new AdditionalInfo();
        additionalInfo.setPlacementId(this.mAdUnit);
        additionalInfo.setMcc(md8.d());
        additionalInfo.setTriggerId(this.mBundle.getString(TrackingKey.TRIGGER_ID));
        additionalInfo.setTrafficGroupId(this.mBundle.getString(TrackingKey.TRAFFIC_GROUP_ID));
        additionalInfo.setExperimentGroupId(this.mBundle.getString(TrackingKey.EXPERIMENT_GROUP_ID));
        additionalInfo.setSdkVersion(md8.l());
        additionalInfo.setCollapsibleBanner(isCollapsible());
        return additionalInfo;
    }

    private double getBiddingPrice() {
        Network network = this.mNetwork;
        if (network == null) {
            return 0.0d;
        }
        int networkType = AdUtil.getNetworkType(network);
        if (networkType != 1) {
            return networkType != 3 ? this.mNetwork.getTempPrice() : this.mNetwork.getPrice().doubleValue();
        }
        return this.price;
    }

    private AdditionalInfo getShowAdditionalInfo(AdNativeInfo adNativeInfo) {
        AdditionalInfo baseAdditionalInfo = getBaseAdditionalInfo();
        Network network = this.mNetwork;
        if (network != null) {
            baseAdditionalInfo.setSource(network.getSource());
            baseAdditionalInfo.setApplicationId(this.mNetwork.getApplicationId());
            baseAdditionalInfo.setApplicationKey(this.mNetwork.getApplicationKey());
            baseAdditionalInfo.setCodeSeatId(this.mNetwork.getCodeSeatId());
            baseAdditionalInfo.setEcpm(Double.valueOf(this.mBundle.getDouble(TrackingKey.BIDDING_PRICE)));
            baseAdditionalInfo.setPrecision(isWaterFallExecutor() ? "estimated" : "exact");
            baseAdditionalInfo.setCurrency("USD");
            baseAdditionalInfo.setBidding(Boolean.valueOf(AdUtil.isBiddingNetwork(this.mNetwork)));
            baseAdditionalInfo.setMediatorSource(this.mediatorSourceName);
        }
        baseAdditionalInfo.setInternalAd(Boolean.valueOf(adNativeInfo == null ? isInternalAd() : adNativeInfo.isInternalAd()));
        return baseAdditionalInfo;
    }

    private boolean isWaterFallExecutor() {
        return AdUtil.isWaterFall(this.mNetwork);
    }

    private void loadedCallBack(List<WrapTAdAllianceListener> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (WrapTAdAllianceListener wrapTAdAllianceListener : list) {
            if (wrapTAdAllianceListener != null) {
                wrapTAdAllianceListener.onLoad();
            }
        }
    }

    private void saveShowedValue(long j) {
        if (this.mNetwork == null || j <= 0) {
            return;
        }
        o9.e().q(this.mNetwork.getCodeSeatId(), j);
        AdLogUtil.Log().w(ComConstants.AD_FLOW, ">>>>> codeSeatId: " + this.mNetwork.getCodeSeatId() + " | adType : " + this.mNetwork.getAdt() + " | valueMicros: " + j);
    }

    public void adActivate(AdActiveInfo adActiveInfo) {
        WrapTAdAllianceListener wrapTAdAllianceListener = this.mListenerList.isEmpty() ? null : this.mListenerList.get(0);
        if (wrapTAdAllianceListener != null) {
            AdditionalInfo clickAdditionalInfo = getClickAdditionalInfo(null);
            clickAdditionalInfo.setPackageName(adActiveInfo.getPackageName());
            clickAdditionalInfo.setImageUrl(adActiveInfo.getImageUrl());
            wrapTAdAllianceListener.onAdActivate(clickAdditionalInfo);
        }
    }

    public void adClicked(AdNativeInfo adNativeInfo) {
        logClick(adNativeInfo);
        WrapTAdAllianceListener wrapTAdAllianceListener = this.mListenerList.isEmpty() ? null : this.mListenerList.get(0);
        if (wrapTAdAllianceListener != null) {
            wrapTAdAllianceListener.onNativeFeedClicked(getAdSource(), adNativeInfo, getClickAdditionalInfo(adNativeInfo));
        }
    }

    public void adClosed() {
        logClose(null);
        WrapTAdAllianceListener wrapTAdAllianceListener = this.mListenerList.isEmpty() ? null : this.mListenerList.get(0);
        if (wrapTAdAllianceListener != null) {
            wrapTAdAllianceListener.onClosed(getAdSource());
        }
    }

    public void adFailedToLoad(TAdErrorCode tAdErrorCode) {
        adFailedToLoadTemp(tAdErrorCode);
    }

    public void adImpression(AdNativeInfo adNativeInfo) {
        if (LogSwitch.isDebug) {
            StringBuilder sb = new StringBuilder();
            sb.append(RecordTestInfo.getLogMsg(adNativeInfo == null ? this : adNativeInfo));
            sb.append("  isSupportFlag = ");
            sb.append(this.supportHisavanaFlag);
            RecordTestInfo.LogMsg(sb.toString(), RecordTestInfo.LOG_CODE12);
        }
        logImpression(adNativeInfo, true, TAdErrorCode.SUCCESS_MESSAGE);
        this.mImpressionTime = System.currentTimeMillis();
        WrapTAdAllianceListener wrapTAdAllianceListener = this.mListenerList.isEmpty() ? null : this.mListenerList.get(0);
        if (wrapTAdAllianceListener != null) {
            wrapTAdAllianceListener.onNativeFeedShow(getAdSource(), adNativeInfo, getShowAdditionalInfo(adNativeInfo));
        }
    }

    public void adLoaded() {
        adLoadedTemp();
    }

    public void adReturnTracking(Bundle bundle) {
        Bundle bundle2;
        if (bundle == null || (bundle2 = this.mBundle) == null) {
            return;
        }
        if (bundle2.containsKey(TrackingKey.CLD_CONFIGURE_ID)) {
            this.mBundle.remove(TrackingKey.CLD_CONFIGURE_ID);
        }
        bundle.putString(TrackingKey.TRIGGER_ID, this.mBundle.getString(TrackingKey.TRIGGER_ID));
        bundle.putLong(TrackingKey.TRIGGER_TS, this.mBundle.getLong(TrackingKey.TRIGGER_TS));
        bundle.putLong(TrackingKey.REQUEST_TS, this.mBundle.getLong(TrackingKey.REQUEST_TS));
        bundle.putInt(TrackingKey.REQUEST_TIME, (int) (this.mBundle.getLong(TrackingKey.REQUEST_TS) - this.mBundle.getLong(TrackingKey.TRIGGER_TS)));
        bundle.putString("request_id", this.mBundle.getString("request_id"));
        bundle.putLong(TrackingKey.RETURN_TS, System.currentTimeMillis());
        bundle.putInt(TrackingKey.RETURN_TIME, (int) (System.currentTimeMillis() - this.mBundle.getLong(TrackingKey.REQUEST_TS)));
        this.mBundle.putLong(TrackingKey.RETURN_TS, System.currentTimeMillis());
        this.mBundle.putInt(TrackingKey.RETURN_TIME, (int) (System.currentTimeMillis() - this.mBundle.getLong(TrackingKey.REQUEST_TS)));
        bundle.putInt(TrackingKey.AD_TYPE, this.mBundle.getInt(TrackingKey.AD_TYPE));
        bundle.putString(TrackingKey.CLD_APP_ID, this.mBundle.getString(TrackingKey.CLD_APP_ID));
        bundle.putString(TrackingKey.CLD_CODE_SEAT_ID, this.mBundle.getString(TrackingKey.CLD_CODE_SEAT_ID));
        bundle.putInt("platform", this.mBundle.getInt("platform"));
        bundle.putString("app_id", this.mBundle.getString("app_id"));
        bundle.putString(TrackingKey.CODE_SEAT_ID, this.mBundle.getString(TrackingKey.CODE_SEAT_ID));
        double biddingPrice = getBiddingPrice();
        bundle.putDouble(TrackingKey.BIDDING_PRICE, biddingPrice);
        this.mBundle.putDouble(TrackingKey.BIDDING_PRICE, biddingPrice);
        RecordTestInfo.record("adReturnTracking code_seat_id:" + this.mBundle.getString(TrackingKey.CODE_SEAT_ID) + ",bidding_price:" + bundle.getDouble(TrackingKey.BIDDING_PRICE));
        bundle.putInt("priority", this.mBundle.getInt("priority"));
        bundle.putInt(TrackingKey.AD_COUNT, this.mBundle.getInt(TrackingKey.AD_COUNT));
        bundle.putInt(TrackingKey.IS_RETREATAD, this.mBundle.getInt(TrackingKey.IS_RETREATAD));
        bundle.putInt(TrackingKey.IS_DEFAULT_AD, 0);
        bundle.putInt(TrackingKey.REQUEST_TYPE, this.mBundle.getInt(TrackingKey.REQUEST_TYPE));
        bundle.putInt(TrackingKey.IS_PRE_TRIGGER, this.mBundle.getInt(TrackingKey.IS_PRE_TRIGGER));
        bundle.putString(TrackingKey.AD_TITLE, this.mBundle.getString(TrackingKey.AD_TITLE));
        bundle.putString(TrackingKey.AD_URL, this.mBundle.getString(TrackingKey.AD_URL));
        bundle.putString("description", this.mBundle.getString("description"));
        bundle.putString(TrackingKey.IMAGE_URL, this.mBundle.getString(TrackingKey.IMAGE_URL));
        bundle.putString(TrackingKey.ICON_URL, this.mBundle.getString(TrackingKey.ICON_URL));
        bundle.putString(TrackingKey.ENDCARD_URL, this.mBundle.getString(TrackingKey.ENDCARD_URL));
        bundle.putString("app_name", this.mBundle.getString("app_name"));
        bundle.putString(TrackingKey.PACKAGE_NAME, this.mBundle.getString(TrackingKey.PACKAGE_NAME));
        bundle.putString(TrackingKey.NATIVE_INFO_LIST, this.mBundle.getString(TrackingKey.NATIVE_INFO_LIST));
        bundle.putString(TrackingKey.DOWNLOAD_URL, this.mBundle.getString(TrackingKey.DOWNLOAD_URL));
        bundle.putInt(TrackingKey.IS_TIMEOUT, this.isTimeOut ? 1 : 0);
        bundle.putInt(TrackingKey.REQUEST_NUM, this.mAdCount);
        bundle.putLong(TrackingKey.IS_OFFLINE_AD, isOfflineAd() ? 1L : 0L);
        bundle.putLong(TrackingKey.AD_TRIGGER_STATUS, this.mBundle.getInt(TrackingKey.AD_TRIGGER_STATUS));
        bundle.putInt(TrackingKey.REQUEST_ROUND, this.mBundle.getInt(TrackingKey.REQUEST_ROUND));
        bundle.putString(TrackingKey.TRAFFIC_GROUP_ID, this.mBundle.getString(TrackingKey.TRAFFIC_GROUP_ID));
        bundle.putString(TrackingKey.EXPERIMENT_GROUP_ID, this.mBundle.getString(TrackingKey.EXPERIMENT_GROUP_ID));
        bundle.putInt(TrackingKey.OPTIMIZE_STATUS, this.mBundle.getInt(TrackingKey.OPTIMIZE_STATUS));
        bundle.putInt(TrackingKey.PRIORITY_CODE, this.mBundle.getInt(TrackingKey.PRIORITY_CODE));
        bundle.putString(TrackingKey.MEDIATOR_SOURCE, this.mediatorSourceName);
        bundle.putString(TrackingKey.MEDIATOR_CODE_SEAT_ID, this.mediatorSourceUnitId);
        Network network = this.mNetwork;
        bundle.putDouble(TrackingKey.PRICE_COEFFICIENT, network != null ? network.getShowPriceCoefficient().doubleValue() : 0.0d);
        bundle.putInt(TrackingKey.BIDDING_TYPE, this.mBundle.getInt(TrackingKey.BIDDING_TYPE));
        if (this.adSource == 0) {
            zm6 zm6Var = zm6.a;
            bundle.putInt(TrackingKey.EW_REQUEST_STRATEGY, zm6Var.b());
            bundle.putLong(TrackingKey.EW_STRATEGY_VAR_ID, zm6Var.a());
        }
        if (this.mBundle.containsKey(TrackingKey.SCENE_ID)) {
            bundle.putString(TrackingKey.SCENE_ID, this.mBundle.getString(TrackingKey.SCENE_ID));
        }
        TrackingManager.trackingAdReturn(bundle);
    }

    public void adTrackingRequest() {
        RecordTestInfo.record("adTrackingRequest code_seat_id:" + getPlacementId() + ",bidding_price:" + this.mBundle.getDouble(TrackingKey.BIDDING_PRICE));
        this.mBundle.putInt(TrackingKey.AD_COUNT, this.mAdCount);
        this.mBundle.putInt(TrackingKey.IS_RETREATAD, 0);
        this.mBundle.putInt(TrackingKey.IS_DEFAULT_AD, 0);
        if (TextUtils.isEmpty(this.mRequestId)) {
            this.mRequestId = DeviceUtil.p();
        }
        this.mTriggerId = this.mBundle.getString(TrackingKey.TRIGGER_ID);
        this.mBundle.putString("request_id", this.mRequestId);
        this.mBundle.putString(TrackingKey.CLD_CONFIGURE_ID, o9.e().j("cloudControlVersion"));
        this.mBundle.putInt(TrackingKey.REQUEST_NUM, this.mAdCount);
        this.mBundle.putInt(TrackingKey.REQUEST_ROUND, this.mRequestRound);
        Bundle bundle = this.mBundle;
        Network network = this.mNetwork;
        bundle.putDouble(TrackingKey.PRICE_COEFFICIENT, network != null ? network.getShowPriceCoefficient().doubleValue() : 0.0d);
        this.mBundle.putInt(TrackingKey.IS_PRELOAD, this.isPreload ? 1 : 0);
        this.mBundle.putInt(TrackingKey.BIDDING_TYPE, AdUtil.isBiddingNetwork(this.mNetwork) || AdUtil.isQueryPriceNetwork(this.mNetwork) ? 1 : 2);
        if (this.adSource == 0) {
            Bundle bundle2 = this.mBundle;
            zm6 zm6Var = zm6.a;
            bundle2.putInt(TrackingKey.EW_REQUEST_STRATEGY, zm6Var.b());
            this.mBundle.putLong(TrackingKey.EW_STRATEGY_VAR_ID, zm6Var.a());
        }
        TrackingManager.trackingAdRequest(this.mBundle);
    }

    @Override
    public void addRequestBody(TInnerAdRequestBody tInnerAdRequestBody) {
        if (tInnerAdRequestBody != null) {
            this.mListenerList.add(tInnerAdRequestBody.getAdListener());
            if (this.mListenerList.size() > 2) {
                this.mListenerList.remove(0);
            }
        }
    }

    public void admobShowPriceTracking(float f, String str, int i) {
        Bundle bundle = new Bundle();
        bundle.putString(TrackingKey.TRIGGER_ID, this.mBundle.getString(TrackingKey.TRIGGER_ID));
        bundle.putString("request_id", this.mBundle.getString("request_id"));
        bundle.putString(TrackingKey.CLD_APP_ID, this.mBundle.getString(TrackingKey.CLD_APP_ID));
        bundle.putString("app_id", this.mBundle.getString("app_id"));
        bundle.putString(TrackingKey.CLD_CODE_SEAT_ID, this.mBundle.getString(TrackingKey.CLD_CODE_SEAT_ID));
        bundle.putString(TrackingKey.CODE_SEAT_ID, this.mBundle.getString(TrackingKey.CODE_SEAT_ID));
        bundle.putFloat(TrackingKey.AD_VALUE, f);
        bundle.putString(TrackingKey.ADVALUE_CURRENCY_CODE, str);
        bundle.putInt(TrackingKey.AD_VALUE_TYPE, i);
        bundle.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
        Network network = this.mNetwork;
        bundle.putDouble(TrackingKey.BIDDING_PRICE, network == null ? 0.0d : network.getPrice().doubleValue());
        Network network2 = this.mNetwork;
        bundle.putInt(TrackingKey.AD_TYPE, network2 == null ? 0 : network2.getAdt());
        bundle.putString(TrackingKey.TRAFFIC_GROUP_ID, this.mBundle.getString(TrackingKey.TRAFFIC_GROUP_ID));
        bundle.putString(TrackingKey.EXPERIMENT_GROUP_ID, this.mBundle.getString(TrackingKey.EXPERIMENT_GROUP_ID));
        bundle.putString(TrackingKey.MEDIATOR_SOURCE, this.mediatorSourceName);
        bundle.putString(TrackingKey.MEDIATOR_CODE_SEAT_ID, this.mediatorSourceUnitId);
        Network network3 = this.mNetwork;
        bundle.putDouble(TrackingKey.PRICE_COEFFICIENT, network3 != null ? network3.getShowPriceCoefficient().doubleValue() : 0.0d);
        TrackingManager.trackingAdmobShowPrice(bundle);
    }

    @Override
    public void destroyAd() {
        this.isDestroyed = true;
        detachContext();
        stopTimer();
        if (this.isLoaded) {
            return;
        }
        this.isLoaded = true;
        Bundle bundle = new Bundle();
        bundle.putInt("error_code", TAdErrorCode.CODE_REQUEST_OBJECT_IS_DESTROYED);
        bundle.putString(TrackingKey.ERROR_MESSAGE, TAdErrorCode.ERROR_REQUEST_OBJECT_IS_DESTROYED.getErrorMessage());
        bundle.putInt(TrackingKey.REQUEST_NUM, this.mAdCount);
        adReturnTracking(bundle);
    }

    @Override
    public void detachContext() {
        this.mListenerList.clear();
    }

    @Override
    public int getAdSource() {
        return this.adSource;
    }

    @Override
    public String getAdUnit() {
        return this.mAdUnit;
    }

    public AdditionalInfo getClickAdditionalInfo(AdNativeInfo adNativeInfo) {
        AdditionalInfo baseAdditionalInfo = getBaseAdditionalInfo();
        Network network = this.mNetwork;
        if (network != null) {
            baseAdditionalInfo.setSource(network.getSource());
            baseAdditionalInfo.setApplicationId(this.mNetwork.getApplicationId());
            baseAdditionalInfo.setApplicationKey(this.mNetwork.getApplicationKey());
            baseAdditionalInfo.setCodeSeatId(this.mNetwork.getCodeSeatId());
            baseAdditionalInfo.setEcpm(Double.valueOf(this.mBundle.getDouble(TrackingKey.BIDDING_PRICE)));
            baseAdditionalInfo.setPrecision(isWaterFallExecutor() ? "estimated" : "exact");
            baseAdditionalInfo.setCurrency("USD");
            baseAdditionalInfo.setBidding(Boolean.valueOf(AdUtil.isBiddingNetwork(this.mNetwork)));
            baseAdditionalInfo.setMediatorSource(this.mediatorSourceName);
        }
        baseAdditionalInfo.setInternalAd(Boolean.valueOf(adNativeInfo == null ? isInternalAd() : adNativeInfo.isInternalAd()));
        return baseAdditionalInfo;
    }

    @Override
    public double getEcpmPrice() {
        return this.price;
    }

    @Override
    public int getExpireReason() {
        return this.expireReason;
    }

    @Override
    public String getExt() {
        return "";
    }

    @Override
    public String getFilterSource() {
        return "";
    }

    @Override
    public int getLoadStatus() {
        return this.mLoadStatus;
    }

    public String getLogString() {
        return "----- class name = " + getClass().getSimpleName() + " ----- mAdUnit = " + this.mAdUnit;
    }

    @Override
    public String getMediatorSourceName() {
        return this.mediatorSourceName;
    }

    @Override
    public String getMediatorSourceUnitId() {
        return this.mediatorSourceUnitId;
    }

    @Override
    public Network getNetwork() {
        return this.mNetwork;
    }

    @Override
    public String getPlacementId() {
        return this.mNetwork.getCodeSeatId();
    }

    @Override
    public long getRequestTime() {
        return this.requestTime;
    }

    public int getSupportHisavanaFlag() {
        return this.supportHisavanaFlag;
    }

    @Override
    public WrapTAdAllianceListener getTAdAllianceListener() {
        WrapTAdAllianceListener wrapTAdAllianceListener = this.mListenerList.isEmpty() ? null : this.mListenerList.get(0);
        AdLogUtil.Log().i("BaseAd", "Base Ad getTAdAllianceListener");
        return wrapTAdAllianceListener;
    }

    public int getTimeOutTime() {
        return ComConstants.AD_TIMEOUT_MILLIS;
    }

    public int getTtl() {
        return this.ttl;
    }

    @Override
    public long getValidTimeLimit() {
        int i = this.ttl;
        if (i <= 0) {
            return Long.MAX_VALUE;
        }
        return (((long) i) * 60000) - Math.abs(System.currentTimeMillis() - this.startTime);
    }

    @Override
    public boolean isAdxAd() {
        return false;
    }

    public boolean isCollapsible() {
        return false;
    }

    @Override
    public boolean isEwAd() {
        return false;
    }

    @Override
    public boolean isExpired() {
        boolean z = getValidTimeLimit() <= 0;
        if (z) {
            setExpireReason(2);
        }
        return z;
    }

    @Override
    public boolean isIconAd() {
        Network network = this.mNetwork;
        return network != null && network.getAdt() == 6;
    }

    @Override
    public boolean isInternalAd() {
        return false;
    }

    @Override
    public boolean isMatchVulgarBrand() {
        return false;
    }

    @Override
    public boolean isSupportRtBidding() {
        return false;
    }

    public boolean isSupportStopRequest() {
        return false;
    }

    @Override
    public void loadAd() {
        this.mRequestId = DeviceUtil.p();
        this.startTime = System.currentTimeMillis();
        if (supportTimer()) {
            startTimer();
        }
        if (this.isPreload && this.mBundle.containsKey(TrackingKey.SCENE_ID)) {
            this.mBundle.remove(TrackingKey.SCENE_ID);
        }
        adTrackingRequest();
        if (this.mNetwork != null) {
            MediaLogUtil.d("BaseAd", "loadAd adSource " + this.mNetwork.getSource() + " id " + this.mNetwork.getCodeSeatId() + " " + getLogString());
        }
        if (TextUtils.isEmpty(this.mAdUnit)) {
            return;
        }
        RequestingAdManager.getInstance().addRequest(this);
    }

    public void logClick(TAdNativeInfo tAdNativeInfo) {
        Bundle bundle = new Bundle();
        appendContextParam(bundle);
        bundle.putInt(TrackingKey.REQUEST_TIME, this.mBundle.getInt(TrackingKey.REQUEST_TIME));
        bundle.putLong(TrackingKey.RETURN_TS, this.mBundle.getLong(TrackingKey.RETURN_TS));
        bundle.putInt(TrackingKey.RETURN_TIME, this.mBundle.getInt(TrackingKey.RETURN_TIME));
        bundle.putLong(TrackingKey.SHOW_TS, this.mBundle.getLong(TrackingKey.SHOW_TS));
        bundle.putLong(TrackingKey.SHOW_TIME, this.mBundle.getLong(TrackingKey.SHOW_TIME));
        bundle.putLong(TrackingKey.CLICK_TS, System.currentTimeMillis());
        bundle.putInt(TrackingKey.CLICK_TIME, (int) (System.currentTimeMillis() - this.mImpressionTime));
        bundle.putString(TrackingKey.AD_TITLE, this.mBundle.getString(TrackingKey.AD_TITLE));
        bundle.putString(TrackingKey.AD_URL, this.mBundle.getString(TrackingKey.AD_URL));
        bundle.putInt(TrackingKey.FILLING_SOURCE, this.mBundle.getInt(TrackingKey.FILLING_SOURCE));
        bundle.putString("description", this.mBundle.getString("description"));
        bundle.putString(TrackingKey.IMAGE_URL, this.mBundle.getString(TrackingKey.IMAGE_URL));
        bundle.putString(TrackingKey.ICON_URL, this.mBundle.getString(TrackingKey.ICON_URL));
        bundle.putString(TrackingKey.ENDCARD_URL, this.mBundle.getString("app_name"));
        bundle.putString("app_name", this.mBundle.getString("app_name"));
        bundle.putString(TrackingKey.PACKAGE_NAME, this.mBundle.getString(TrackingKey.PACKAGE_NAME));
        bundle.putString(TrackingKey.DOWNLOAD_URL, this.mBundle.getString(TrackingKey.DOWNLOAD_URL));
        bundle.putInt(TrackingKey.SLOT_HEIGHT, this.mBundle.getInt(TrackingKey.SLOT_HEIGHT));
        bundle.putInt(TrackingKey.SLOT_WIDTH, this.mBundle.getInt(TrackingKey.SLOT_WIDTH));
        bundle.putInt(TrackingKey.IS_PRE_TRIGGER, this.mBundle.getInt(TrackingKey.IS_PRE_TRIGGER));
        bundle.putInt(TrackingKey.REQUEST_TYPE, this.mBundle.getInt(TrackingKey.REQUEST_TYPE));
        bundle.putString("request_id", this.mBundle.getString("request_id"));
        bundle.putInt(TrackingKey.CLICK_X, 0);
        bundle.putInt(TrackingKey.CLICK_Y, 0);
        bundle.putInt(TrackingKey.IS_EXPIRED, isExpired() ? 1 : 0);
        bundle.putInt(TrackingKey.REQUEST_NUM, this.mBundle.getInt(TrackingKey.REQUEST_NUM));
        bundle.putInt(TrackingKey.AD_TRIGGER_STATUS, this.mBundle.getInt(TrackingKey.AD_TRIGGER_STATUS));
        bundle.putInt(TrackingKey.IS_OFFLINE_AD, isOfflineAd() ? 1 : 0);
        bundle.putInt(TrackingKey.FILLING_AD_TYPE, this.mBundle.getInt(TrackingKey.FILLING_AD_TYPE));
        bundle.putString(TrackingKey.TRAFFIC_GROUP_ID, this.mBundle.getString(TrackingKey.TRAFFIC_GROUP_ID));
        bundle.putString(TrackingKey.EXPERIMENT_GROUP_ID, this.mBundle.getString(TrackingKey.EXPERIMENT_GROUP_ID));
        bundle.putInt(TrackingKey.PRIORITY_CODE, this.mBundle.getInt(TrackingKey.PRIORITY_CODE));
        bundle.putDouble(TrackingKey.MAX_PRICE, this.mBundle.getDouble(TrackingKey.MAX_PRICE));
        bundle.putString(TrackingKey.MEDIATOR_SOURCE, tAdNativeInfo == null ? this.mediatorSourceName : tAdNativeInfo.getMediatorSourceName());
        bundle.putString(TrackingKey.MEDIATOR_CODE_SEAT_ID, tAdNativeInfo == null ? this.mediatorSourceUnitId : tAdNativeInfo.getMediatorSourceUnitId());
        Network network = this.mNetwork;
        bundle.putDouble(TrackingKey.PRICE_COEFFICIENT, network != null ? network.getShowPriceCoefficient().doubleValue() : 0.0d);
        if (tAdNativeInfo == null) {
            bundle.putInt(TrackingKey.IS_INTERNAL_AD, isInternalAd() ? 1 : 0);
        } else {
            bundle.putInt(TrackingKey.IS_INTERNAL_AD, tAdNativeInfo.isInternalAd() ? 1 : 0);
        }
        String str = this.mGameName;
        if (str == null) {
            str = "";
        }
        bundle.putString(TrackingKey.GAME_NAME, str);
        String str2 = this.mGameScene;
        if (str2 == null) {
            str2 = "";
        }
        bundle.putString(TrackingKey.GAME_SCENE, str2);
        if (this.mBundle.containsKey(TrackingKey.SCENE_ID)) {
            bundle.putString(TrackingKey.SCENE_ID, this.mBundle.getString(TrackingKey.SCENE_ID));
        }
        TrackingManager.trackingAdClick(bundle);
    }

    public void logClose(TAdNativeInfo tAdNativeInfo) {
        Bundle bundle = new Bundle();
        appendContextParam(bundle);
        bundle.putInt(TrackingKey.REQUEST_TIME, this.mBundle.getInt(TrackingKey.REQUEST_TIME));
        bundle.putLong(TrackingKey.RETURN_TS, this.mBundle.getLong(TrackingKey.RETURN_TS));
        bundle.putInt(TrackingKey.RETURN_TIME, this.mBundle.getInt(TrackingKey.RETURN_TIME));
        bundle.putLong(TrackingKey.SHOW_TS, this.mBundle.getLong(TrackingKey.SHOW_TS));
        bundle.putLong(TrackingKey.SHOW_TIME, this.mBundle.getLong(TrackingKey.SHOW_TIME));
        bundle.putLong(TrackingKey.CLICK_TS, System.currentTimeMillis());
        bundle.putInt(TrackingKey.CLICK_TIME, (int) (System.currentTimeMillis() - this.mImpressionTime));
        bundle.putString(TrackingKey.AD_TITLE, this.mBundle.getString(TrackingKey.AD_TITLE));
        bundle.putString(TrackingKey.AD_URL, this.mBundle.getString(TrackingKey.AD_URL));
        bundle.putInt(TrackingKey.FILLING_SOURCE, this.mBundle.getInt(TrackingKey.FILLING_SOURCE));
        bundle.putString("description", this.mBundle.getString("description"));
        bundle.putString(TrackingKey.IMAGE_URL, this.mBundle.getString(TrackingKey.IMAGE_URL));
        bundle.putString(TrackingKey.ICON_URL, this.mBundle.getString(TrackingKey.ICON_URL));
        bundle.putString(TrackingKey.ENDCARD_URL, this.mBundle.getString(TrackingKey.ENDCARD_URL));
        bundle.putString("app_name", this.mBundle.getString("app_name"));
        bundle.putString(TrackingKey.PACKAGE_NAME, this.mBundle.getString(TrackingKey.PACKAGE_NAME));
        bundle.putString(TrackingKey.DOWNLOAD_URL, this.mBundle.getString(TrackingKey.DOWNLOAD_URL));
        bundle.putString(TrackingKey.TRAFFIC_GROUP_ID, this.mBundle.getString(TrackingKey.TRAFFIC_GROUP_ID));
        bundle.putString(TrackingKey.EXPERIMENT_GROUP_ID, this.mBundle.getString(TrackingKey.EXPERIMENT_GROUP_ID));
        bundle.putInt(TrackingKey.SLOT_HEIGHT, 0);
        bundle.putInt(TrackingKey.SLOT_WIDTH, 0);
        bundle.putInt(TrackingKey.CLICK_X, 0);
        bundle.putInt(TrackingKey.CLICK_Y, 0);
        bundle.putString(TrackingKey.MEDIATOR_SOURCE, tAdNativeInfo == null ? this.mediatorSourceName : tAdNativeInfo.getMediatorSourceName());
        bundle.putString(TrackingKey.MEDIATOR_CODE_SEAT_ID, tAdNativeInfo == null ? this.mediatorSourceUnitId : tAdNativeInfo.getMediatorSourceUnitId());
        Network network = this.mNetwork;
        bundle.putDouble(TrackingKey.PRICE_COEFFICIENT, network != null ? network.getShowPriceCoefficient().doubleValue() : 0.0d);
        if (tAdNativeInfo == null) {
            bundle.putInt(TrackingKey.IS_INTERNAL_AD, isInternalAd() ? 1 : 0);
        } else {
            bundle.putInt(TrackingKey.IS_INTERNAL_AD, tAdNativeInfo.isInternalAd() ? 1 : 0);
        }
        String str = this.mGameName;
        if (str == null) {
            str = "";
        }
        bundle.putString(TrackingKey.GAME_NAME, str);
        String str2 = this.mGameScene;
        bundle.putString(TrackingKey.GAME_SCENE, str2 != null ? str2 : "");
        TrackingManager.trackingAdClose(bundle);
    }

    public void logImpression(TAdNativeInfo tAdNativeInfo, boolean z, TAdErrorCode tAdErrorCode) {
        Bundle bundle = new Bundle();
        appendContextParam(bundle);
        bundle.putLong(TrackingKey.SHOW_TS, System.currentTimeMillis());
        bundle.putLong(TrackingKey.SHOW_TIME, System.currentTimeMillis() - this.mLoadedTime);
        bundle.putString(TrackingKey.AD_TITLE, this.mBundle.getString(TrackingKey.AD_TITLE));
        bundle.putString(TrackingKey.AD_URL, this.mBundle.getString(TrackingKey.AD_URL));
        bundle.putInt(TrackingKey.FILLING_SOURCE, this.mBundle.getInt(TrackingKey.FILLING_SOURCE));
        bundle.putString("description", this.mBundle.getString("description"));
        bundle.putString(TrackingKey.IMAGE_URL, this.mBundle.getString(TrackingKey.IMAGE_URL));
        bundle.putString(TrackingKey.ICON_URL, this.mBundle.getString(TrackingKey.ICON_URL));
        bundle.putString(TrackingKey.ENDCARD_URL, this.mBundle.getString(TrackingKey.ENDCARD_URL));
        bundle.putString("app_name", this.mBundle.getString("app_name"));
        bundle.putString(TrackingKey.PACKAGE_NAME, this.mBundle.getString(TrackingKey.PACKAGE_NAME));
        bundle.putString(TrackingKey.DOWNLOAD_URL, this.mBundle.getString(TrackingKey.DOWNLOAD_URL));
        bundle.putInt(TrackingKey.AD_TRIGGER_STATUS, this.mBundle.getInt(TrackingKey.AD_TRIGGER_STATUS));
        bundle.putInt(TrackingKey.IS_OFFLINE_AD, isOfflineAd() ? 1 : 0);
        bundle.putInt(TrackingKey.FILLING_AD_TYPE, this.mBundle.getInt(TrackingKey.FILLING_AD_TYPE));
        bundle.putInt(TrackingKey.SLOT_HEIGHT, 0);
        bundle.putInt(TrackingKey.SLOT_WIDTH, 0);
        bundle.putInt(TrackingKey.IS_EXPIRED, isExpired() ? 1 : 0);
        if (z) {
            bundle.putInt(TrackingKey.SHOW_STATUS, 1);
            bundle.putInt(TrackingKey.FAIL_REASON, 0);
        } else {
            bundle.putInt(TrackingKey.SHOW_STATUS, 2);
            bundle.putInt(TrackingKey.FAIL_REASON, 2);
        }
        bundle.putInt(TrackingKey.IS_PRE_TRIGGER, this.mBundle.getInt(TrackingKey.IS_PRE_TRIGGER));
        bundle.putInt(TrackingKey.FILLING_SOURCE, this.mBundle.getInt(TrackingKey.FILLING_SOURCE));
        bundle.putString("request_id", this.mBundle.getString("request_id"));
        bundle.putInt(TrackingKey.REQUEST_NUM, this.mBundle.getInt(TrackingKey.REQUEST_NUM));
        bundle.putString(TrackingKey.TRAFFIC_GROUP_ID, this.mBundle.getString(TrackingKey.TRAFFIC_GROUP_ID));
        bundle.putString(TrackingKey.EXPERIMENT_GROUP_ID, this.mBundle.getString(TrackingKey.EXPERIMENT_GROUP_ID));
        bundle.putInt(TrackingKey.OPTIMIZE_STATUS, this.mBundle.getInt(TrackingKey.OPTIMIZE_STATUS));
        bundle.putInt(TrackingKey.PRIORITY_CODE, this.mBundle.getInt(TrackingKey.PRIORITY_CODE));
        try {
            if (bundle.getInt(TrackingKey.AD_TYPE) == 2) {
                if (this.reportScene.get()) {
                    this.reportScene.set(false);
                } else {
                    this.mBundle.remove(TrackingKey.SCENE_ID);
                }
            }
        } catch (Exception unused) {
        }
        if (this.mBundle.containsKey(TrackingKey.SCENE_ID)) {
            bundle.putString(TrackingKey.SCENE_ID, this.mBundle.getString(TrackingKey.SCENE_ID));
        }
        if (this.maxPrice == 0.0d) {
            this.maxPrice = this.mBundle.getDouble(TrackingKey.MAX_PRICE);
        }
        bundle.putDouble(TrackingKey.MAX_PRICE, this.maxPrice);
        bundle.putDouble(TrackingKey.ECPM, tAdNativeInfo == null ? this.price : tAdNativeInfo.getEcpmPrice());
        bundle.putString(TrackingKey.ECPM_PRECISION, isWaterFallExecutor() ? "estimated" : "exact");
        bundle.putString(TrackingKey.SHOW_ID, tAdNativeInfo == null ? this.mShowId : tAdNativeInfo.getShowId());
        bundle.putString("error_code", tAdErrorCode == null ? null : String.valueOf(tAdErrorCode.getErrorCode()));
        bundle.putString(TrackingKey.ERROR_MESSAGE, tAdErrorCode == null ? null : TAdErrorCode.simpleErrorMessage(tAdErrorCode.getErrorMessage()));
        bundle.putInt(TrackingKey.IS_OFFLINE, !NetStateManager.checkNetworkState(false) ? 1 : 0);
        bundle.putInt(TrackingKey.IS_CONTAIN_VULGAR, this.mBundle.getInt(TrackingKey.IS_CONTAIN_VULGAR));
        bundle.putString(TrackingKey.MEDIATOR_SOURCE, tAdNativeInfo == null ? this.mediatorSourceName : tAdNativeInfo.getMediatorSourceName());
        bundle.putString(TrackingKey.MEDIATOR_CODE_SEAT_ID, tAdNativeInfo == null ? this.mediatorSourceUnitId : tAdNativeInfo.getMediatorSourceUnitId());
        Network network = this.mNetwork;
        bundle.putDouble(TrackingKey.PRICE_COEFFICIENT, network != null ? network.getShowPriceCoefficient().doubleValue() : 0.0d);
        if (tAdNativeInfo == null) {
            bundle.putInt(TrackingKey.IS_INTERNAL_AD, isInternalAd() ? 1 : 0);
        } else {
            bundle.putInt(TrackingKey.IS_INTERNAL_AD, tAdNativeInfo.isInternalAd() ? 1 : 0);
        }
        String str = this.mGameName;
        if (str == null) {
            str = "";
        }
        bundle.putString(TrackingKey.GAME_NAME, str);
        String str2 = this.mGameScene;
        if (str2 == null) {
            str2 = "";
        }
        bundle.putString(TrackingKey.GAME_SCENE, str2);
        if (this.adSource == 0) {
            zm6 zm6Var = zm6.a;
            bundle.putInt(TrackingKey.EW_REQUEST_STRATEGY, zm6Var.b());
            bundle.putLong(TrackingKey.EW_STRATEGY_VAR_ID, zm6Var.a());
        }
        TrackingManager.trackingImpression(bundle);
        addToContextParam(TrackingKey.SHOW_TS, Long.valueOf(bundle.getLong(TrackingKey.SHOW_TS)));
        addToContextParam(TrackingKey.SHOW_TIME, Long.valueOf(bundle.getLong(TrackingKey.SHOW_TIME)));
        addToContextParam(TrackingKey.SLOT_HEIGHT, Integer.valueOf(bundle.getInt(TrackingKey.SLOT_HEIGHT)));
        addToContextParam(TrackingKey.SLOT_WIDTH, Integer.valueOf(bundle.getInt(TrackingKey.SLOT_WIDTH)));
        addToContextParam(TrackingKey.SHOW_STATUS, Integer.valueOf(bundle.getInt(TrackingKey.SHOW_STATUS)));
        addToContextParam(TrackingKey.FAIL_REASON, Integer.valueOf(bundle.getInt(TrackingKey.FAIL_REASON)));
        this.mBundle.putDouble(TrackingKey.MAX_PRICE, bundle.getDouble(TrackingKey.MAX_PRICE));
    }

    public void logTrigerShow(String str, String str2) {
        trigerShow(null, str, str2);
    }

    public void onAdShowError(TAdErrorCode tAdErrorCode) {
        onAdShowError(null, tAdErrorCode);
    }

    public void onAdditionalShowed(long j, String str, int i) {
        saveShowedValue(j);
        WrapTAdAllianceListener wrapTAdAllianceListener = this.mListenerList.isEmpty() ? null : this.mListenerList.get(0);
        if (wrapTAdAllianceListener == null) {
            return;
        }
        AdditionalInfo baseAdditionalInfo = getBaseAdditionalInfo();
        baseAdditionalInfo.setAdmobECPM(Double.valueOf(j / 1000000.0d));
        baseAdditionalInfo.setCurrencyCode(str);
        baseAdditionalInfo.setPrecisionType(Integer.valueOf(i));
        Network network = this.mNetwork;
        if (network != null) {
            baseAdditionalInfo.setSource(network.getSource());
            baseAdditionalInfo.setApplicationId(this.mNetwork.getApplicationId());
            baseAdditionalInfo.setApplicationKey(this.mNetwork.getApplicationKey());
            baseAdditionalInfo.setCodeSeatId(this.mNetwork.getCodeSeatId());
            baseAdditionalInfo.setBidding(Boolean.valueOf(AdUtil.isBiddingNetwork(this.mNetwork)));
            baseAdditionalInfo.setMediatorSource(this.mediatorSourceName);
        }
        wrapTAdAllianceListener.onShowed(baseAdditionalInfo);
    }

    public void onReward() {
        WrapTAdAllianceListener wrapTAdAllianceListener = this.mListenerList.isEmpty() ? null : this.mListenerList.get(0);
        if (wrapTAdAllianceListener != null) {
            wrapTAdAllianceListener.onRewarded();
        }
    }

    public void onTimeOut() {
        adFailedToLoad(TAdErrorCode.ERROR_AD_REQUEST_TIME_OUT);
        destroyAd();
    }

    public void post(Handler handler, Runnable runnable) {
        if (handler != null) {
            handler.post(runnable);
        } else {
            runnable.run();
        }
    }

    public void setAdLoadScenes(String str, String str2, Map<String, Object> map) {
        this.mGameName = str;
        this.mGameScene = str2;
        this.mExtInfo = map;
    }

    @Override
    public void setAdSource(int i) {
        this.adSource = i;
    }

    @Override
    public void setAdUnit(String str) {
        this.mAdUnit = str;
    }

    public void setContainVulgarContent(boolean z) {
        this.isContainVulgarContent = z;
    }

    public void setCurrActivityFullscreen(boolean z) {
        this.mCurrActivityFullscreen = z;
    }

    @Override
    public void setEcpmPrice(double d) {
        this.price = d;
    }

    @Override
    public void setExpireReason(int i) {
        this.expireReason = i;
    }

    @Override
    public void setExt(String str) {
    }

    @Override
    public void setLoadStatus(int i) {
        this.mLoadStatus = i;
    }

    @Override
    public void setMaxPrice(double d) {
        AdLogUtil.Log().d("Athena", "setMaxPrice " + d);
        this.maxPrice = d;
    }

    public void setMediatorInfo(String str, String str2) {
        if (this.mNetwork == null) {
            return;
        }
        AdLogUtil.Log().d(ComConstants.AD_FLOW, ">>>>> sourceName: " + str + " | sourceUnitId: " + str2 + " | " + this.mNetwork.getCodeSeatId());
        this.mediatorSourceName = str;
        this.mediatorSourceUnitId = str2;
    }

    @Override
    public void setOfflineAd(boolean z) {
        this.isOfflineAd = z;
    }

    @Override
    public void setPreload(boolean z) {
        this.isPreload = z;
    }

    @Override
    public void setRequestRound(int i) {
        AdLogUtil.Log().d("BaseAd", "setRequestRound " + i + " " + getLogString());
        this.mRequestRound = i;
    }

    @Override
    public void setRequestTime(long j) {
        this.requestTime = j;
    }

    @Override
    public void setRequestType(int i) {
        this.requestType = i;
    }

    @Override
    public void setSecondPrice(double d) {
        AdLogUtil.Log().d(ja1.SECOND_PRICE_TAG, "*----> BaseAd setSecondPrice price" + d + getLogString());
        this.secondPrice = d;
    }

    public void setShowId(String str) {
        this.mShowId = str;
    }

    @Override
    public void setSupportFlag(int i) {
        this.supportHisavanaFlag = i;
    }

    @Override
    public void setTimeOut(boolean z) {
        this.isTimeOut = z;
    }

    @Override
    public void setTrackingBundle(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        this.mBundle.putAll(bundle);
        this.mBundle.putDouble(TrackingKey.BIDDING_PRICE, this.mNetwork.getPrice().doubleValue());
    }

    public void setTtl(int i) {
        this.ttl = i;
    }

    public void startTimer() {
        if (this.runTimer == null) {
            RunTimer runTimer = new RunTimer();
            this.runTimer = runTimer;
            runTimer.setScheduleTime(getTimeOutTime());
            this.runTimer.setTimeOutCallback(this.timeOutCallback);
        }
        this.runTimer.runTimerTask();
        AdLogUtil.Log().d("BaseAd", "启动广告请求超时监听...");
    }

    @Override
    public void stopLoader() {
        if (this.isLoaded) {
            return;
        }
        try {
            if (isSupportStopRequest()) {
                destroyAd();
            } else {
                detachContext();
                setLoadStatus(4);
            }
        } catch (Exception e) {
            AdLogUtil.Log().e("BaseAd", Log.getStackTraceString(e));
        }
    }

    public void stopTimer() {
        RunTimer runTimer = this.runTimer;
        if (runTimer != null) {
            runTimer.cancelTimeTask();
            this.runTimer = null;
        }
    }

    public boolean supportTimer() {
        return true;
    }

    public void trigerShow(TAdNativeInfo tAdNativeInfo, String str, String str2) {
        String str3 = str2;
        Bundle bundle = new Bundle();
        appendContextParam(bundle);
        if (bundle.containsKey(TrackingKey.IS_DEFAULT_AD)) {
            bundle.remove(TrackingKey.IS_DEFAULT_AD);
        }
        bundle.putInt(TrackingKey.IS_TIMEOUT, this.mBundle.getInt(TrackingKey.IS_TIMEOUT));
        bundle.putString("error_code", this.mBundle.getString("error_code"));
        bundle.putString(TrackingKey.ERROR_MESSAGE, TAdErrorCode.simpleErrorMessage(this.mBundle.getString(TrackingKey.ERROR_MESSAGE)));
        if (tAdNativeInfo != null) {
            bundle.putString(TrackingKey.AD_TITLE, tAdNativeInfo.getTitle());
            bundle.putString(TrackingKey.AD_URL, "");
            bundle.putString("description", tAdNativeInfo.getDescription());
            if (tAdNativeInfo.getIcon() != null) {
                bundle.putString(TrackingKey.ICON_URL, tAdNativeInfo.getIcon().getUrl());
            }
            bundle.putString(TrackingKey.ENDCARD_URL, "");
            bundle.putString("app_name", "");
            bundle.putString(TrackingKey.PACKAGE_NAME, "");
            bundle.putString(TrackingKey.DOWNLOAD_URL, "");
            bundle.putString(TrackingKey.SCENE_ID, tAdNativeInfo.getSceneId());
            this.sceneId = tAdNativeInfo.getSceneId() == null ? "" : tAdNativeInfo.getSceneId();
            bundle.putInt(TrackingKey.IS_INTERNAL_AD, tAdNativeInfo.isInternalAd() ? 1 : 0);
        } else {
            bundle.putString(TrackingKey.SCENE_ID, str3);
            if (str3 == null) {
                str3 = "";
            }
            this.sceneId = str3;
            bundle.putInt(TrackingKey.IS_INTERNAL_AD, isInternalAd() ? 1 : 0);
        }
        bundle.putInt(TrackingKey.IS_PRE_TRIGGER, this.mBundle.getInt(TrackingKey.IS_PRE_TRIGGER));
        bundle.putInt(TrackingKey.FILLING_SOURCE, this.mBundle.getInt(TrackingKey.FILLING_SOURCE));
        bundle.putString("request_id", this.mBundle.getString("request_id"));
        bundle.putInt(TrackingKey.AD_TRIGGER_STATUS, this.mBundle.getInt(TrackingKey.AD_TRIGGER_STATUS));
        bundle.putInt(TrackingKey.IS_OFFLINE_AD, isOfflineAd() ? 1 : 0);
        bundle.putInt(TrackingKey.FILLING_AD_TYPE, this.mBundle.getInt(TrackingKey.FILLING_AD_TYPE));
        bundle.putString(TrackingKey.TRAFFIC_GROUP_ID, this.mBundle.getString(TrackingKey.TRAFFIC_GROUP_ID));
        bundle.putString(TrackingKey.EXPERIMENT_GROUP_ID, this.mBundle.getString(TrackingKey.EXPERIMENT_GROUP_ID));
        bundle.putString(TrackingKey.SHOW_ID, tAdNativeInfo == null ? this.mShowId : tAdNativeInfo.getShowId());
        bundle.putInt(TrackingKey.IS_OFFLINE, !NetStateManager.checkNetworkState(false) ? 1 : 0);
        bundle.putInt(TrackingKey.IS_CONTAIN_VULGAR, this.mBundle.getInt(TrackingKey.IS_CONTAIN_VULGAR));
        bundle.putString(TrackingKey.MEDIATOR_SOURCE, tAdNativeInfo == null ? this.mediatorSourceName : tAdNativeInfo.getMediatorSourceName());
        bundle.putString(TrackingKey.MEDIATOR_CODE_SEAT_ID, tAdNativeInfo == null ? this.mediatorSourceUnitId : tAdNativeInfo.getMediatorSourceUnitId());
        Network network = this.mNetwork;
        bundle.putDouble(TrackingKey.PRICE_COEFFICIENT, network != null ? network.getShowPriceCoefficient().doubleValue() : 0.0d);
        TrackingManager.trackingTriggerShow(bundle);
        addToContextParam(TrackingKey.AD_TITLE, bundle.getString(TrackingKey.AD_TITLE));
        addToContextParam(TrackingKey.AD_URL, "");
        addToContextParam("description", bundle.getString("description"));
        addToContextParam(TrackingKey.IMAGE_URL, bundle.getString(TrackingKey.IMAGE_URL));
        addToContextParam(TrackingKey.ICON_URL, bundle.getString(TrackingKey.ICON_URL));
        addToContextParam(TrackingKey.ENDCARD_URL, "");
        addToContextParam("app_name", "");
        addToContextParam(TrackingKey.PACKAGE_NAME, "");
        addToContextParam(TrackingKey.DOWNLOAD_URL, "");
        addToContextParam(TrackingKey.REQUEST_NUM, Integer.valueOf(this.mAdCount));
        try {
            if (TextUtils.isEmpty(this.sceneId)) {
                return;
            }
            addToContextParam(TrackingKey.SCENE_ID, this.sceneId);
        } catch (Exception unused) {
        }
    }

    public void adLoaded(List<TAdNativeInfo> list) {
        adLoadedTemp(list);
    }

    public void logTrigerShow(TAdNativeInfo tAdNativeInfo) {
        trigerShow(tAdNativeInfo, "", "");
    }

    public void onAdShowError(TAdNativeInfo tAdNativeInfo, TAdErrorCode tAdErrorCode) {
        logImpression(tAdNativeInfo, false, tAdErrorCode);
        WrapTAdAllianceListener wrapTAdAllianceListener = this.mListenerList.isEmpty() ? null : this.mListenerList.get(0);
        if (wrapTAdAllianceListener != null) {
            wrapTAdAllianceListener.onShowError(tAdErrorCode);
        }
    }

    private void loadedCallBack(List<WrapTAdAllianceListener> list, List<TAdNativeInfo> list2) {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (WrapTAdAllianceListener wrapTAdAllianceListener : list) {
            if (wrapTAdAllianceListener != null) {
                wrapTAdAllianceListener.onLoad(list2);
            }
        }
    }

    public void adClosed(TAdNativeInfo tAdNativeInfo) {
        logClose(tAdNativeInfo);
        WrapTAdAllianceListener wrapTAdAllianceListener = this.mListenerList.isEmpty() ? null : this.mListenerList.get(0);
        if (wrapTAdAllianceListener != null) {
            wrapTAdAllianceListener.onClosed(tAdNativeInfo);
        }
    }

    private void adLoadedTemp(List<TAdNativeInfo> list) {
        AdLogUtil adLogUtilLog = AdLogUtil.Log();
        StringBuilder sb = new StringBuilder();
        sb.append("Ad request has been destroyed or loaded,isLoaded = ");
        sb.append(this.isLoaded);
        sb.append(",isDestroyed = ");
        sb.append(this.isDestroyed);
        sb.append("( triggerId is ");
        sb.append(this.mTriggerId);
        sb.append(", code seat id is ");
        Network network = this.mNetwork;
        sb.append(network == null ? "" : network.getCodeSeatId());
        sb.append(" )");
        adLogUtilLog.d("BaseAd", sb.toString());
        RequestingAdManager.getInstance().removeRequest(this);
        if (this.isLoaded) {
            return;
        }
        if (this.mNetwork != null) {
            MediaLogUtil.d("BaseAd", "loadSuccess adSource " + this.mNetwork.getSource() + " id " + this.mNetwork.getCodeSeatId() + " " + getLogString());
        }
        ArrayList arrayList = new ArrayList(this.mListenerList.size());
        arrayList.addAll(this.mListenerList);
        addDataToAdCache(list);
        Bundle bundle = new Bundle();
        bundle.putInt("error_code", 0);
        if (list != null && list.size() > 0) {
            TAdNativeInfo tAdNativeInfo = list.get(0);
            if (tAdNativeInfo.getEcpmPrice() > 0.0d) {
                this.price = tAdNativeInfo.getEcpmPrice();
            }
            bundle.putInt(TrackingKey.IS_INTERNAL_AD, tAdNativeInfo.isInternalAd() ? 1 : 0);
        }
        adReturnTracking(bundle);
        this.isLoaded = true;
        this.mLoadedTime = System.currentTimeMillis();
        loadedCallBack(arrayList, list);
        if (supportTimer()) {
            stopTimer();
        }
    }
}
