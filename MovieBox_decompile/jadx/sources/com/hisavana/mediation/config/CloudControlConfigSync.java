package com.hisavana.mediation.config;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.listener.CommonResponseListener;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.cloud.sdk.commonutil.util.Preconditions;
import com.cloud.sdk.commonutil.util.o;
import com.hisavana.common.base.LogSwitch;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.constant.ComConstants;
import com.hisavana.common.mock.RecordTestInfo;
import com.hisavana.common.param.CloudConfigParam;
import com.hisavana.common.tracking.TrackingKey;
import com.hisavana.common.tracking.TrackingManager;
import com.hisavana.common.tracking.TrackingUtil;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.common.utils.AdUtil;
import com.hisavana.common.utils.NetUtil;
import com.hisavana.mediation.bean.CloudControlConfig;
import com.mbridge.msdk.interstitial.view.MBInterstitialActivity;
import ee.l;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import k7.c;

public abstract class CloudControlConfigSync {

    public static Handler f32397c;

    public static final AtomicBoolean f32395a = new AtomicBoolean();

    public static int f32396b = 0;

    public static final Runnable f32398d = new Runnable() {
        @Override
        public void run() {
            CloudControlConfigSync.m(TAdErrorCode.CODE_REQUEST_CLOUD_TIME_OUT, "The cloud control reaches 15s timeout");
        }
    };

    public class a implements com.cloud.hisavana.sdk.common.http.a.b {
        @Override
        public String a() {
            return CloudConfigParam.getPostBody(TAdManager.getAppId(), TAdManager.isTestDevice(), TAdManager.getAhaChannel(), TAdManager.getCodeSeatIds());
        }
    }

    public class b implements Preconditions.a {

        public final int f32402a;

        public final String f32403b;

        public b(int i10, String str) {
            this.f32402a = i10;
            this.f32403b = str;
        }

        @Override
        public void onRun() {
            TAdManager.OnCloudCompleteListener cloudCompleteListener = TAdManager.getCloudCompleteListener();
            if (cloudCompleteListener != null) {
                cloudCompleteListener.onCloudComplete(this.f32402a, this.f32403b);
                TAdManager.releaseCloudListener();
            }
        }
    }

    public static void b(int i10) {
        String triggerId = TrackingUtil.getTriggerId();
        f32396b = 0;
        String strK = l7.a.e().k("cloudControlVersion", null);
        if (TextUtils.isEmpty(strK)) {
            o(i10, triggerId);
            return;
        }
        if (TextUtils.equals(TAdManager.getAhaChannel(), ComConstants.AHA_CHANNEL)) {
            if (i10 == 1 || i10 == 5) {
                AdLogUtil.Log().d(ComConstants.SDK_INIT, "aha渠道请求云控 triggerType " + i10 + " ids= " + TAdManager.getCodeSeatIds());
                if (TAdManager.getCodeSeatIds() == null || TAdManager.getCodeSeatIds().size() <= 0) {
                    return;
                }
                o(i10, triggerId);
                return;
            }
            return;
        }
        String strJ = l7.a.e().j("new_config_ver");
        RecordTestInfo.record("CloudControlConfigSync - newVersion = " + strJ + ",current version=" + strK);
        if (!TextUtils.isEmpty(strJ) && !TextUtils.equals(strK, strJ)) {
            o(i10, triggerId);
            return;
        }
        if (System.currentTimeMillis() - l7.a.e().i("last_req_config_time", 0L) <= l7.a.e().i(ComConstants.Pref.REQ_CONFIG_INTERVAL, 86400000L)) {
            AdLogUtil.Log().d(ComConstants.SDK_INIT, "*----> new cloud config version is empty or is the same as current,don't send config request");
        } else if (NetUtil.checkNetworkState()) {
            AdLogUtil.Log().d(ComConstants.SDK_INIT, "request cloud config because of out of time");
            o(i10, triggerId);
        }
    }

    public static void d(long j10, String str, int i10) {
        Bundle bundle = new Bundle();
        bundle.putString(TrackingKey.CLD_APP_ID, TAdManager.getAppId());
        bundle.putInt(TrackingKey.TRIGGER_TYPE, i10);
        bundle.putString(TrackingKey.CLD_REQUEST_ID, str);
        bundle.putLong(TrackingKey.CLD_REQUEST_TS, j10);
        TrackingManager.trackingADCldRequest(bundle);
    }

    public static boolean g(String str, String str2) {
        AdLogUtil.Log().w("CloudControlConfigSync", "isNeedToUpdateLocalConfig newVersion=" + str + ",curVersion=" + str2);
        if (TextUtils.isEmpty(str2)) {
            return true;
        }
        if (!TextUtils.isEmpty(str) && !TextUtils.equals(str, str2)) {
            try {
                if (str2.length() > 13) {
                    str2 = str2.substring(0, str2.length() - 13);
                }
                if (str.length() > 13) {
                    str = str.substring(0, str.length() - 13);
                }
                return Long.parseLong(str) > Long.parseLong(str2);
            } catch (Exception unused) {
                AdLogUtil.Log().w("CloudControlConfigSync", "not need update local config");
            }
        }
        return false;
    }

    public static void j(CloudControlConfig cloudControlConfig, boolean z10) {
        if (cloudControlConfig == null) {
            return;
        }
        if (cloudControlConfig.getData() == null || cloudControlConfig.getData().getCodeSeats() == null) {
            AdLogUtil.Log().d(ComConstants.SDK_INIT, "CloudControlConfigSync --> extracted --> 数据为空 无法保存");
            t();
            m(cloudControlConfig.getCode(), cloudControlConfig.getMessage());
            return;
        }
        ConfigContentHelper.g().b();
        boolean zI = ConfigContentHelper.g().i(cloudControlConfig.getData().getCodeSeats());
        if (ConfigContentHelper.g().f() > 0) {
            t();
            m(0, "get cloud data success");
        }
        if (!zI) {
            AdLogUtil.Log().d(ComConstants.SDK_INIT, "*----> CloudControlConfigSync --> save data 2 sqlite failed!!!");
            return;
        }
        l7.a.e().r("cloudControlVersion", cloudControlConfig.getData().getCloudControlVersion());
        if (z10) {
            l7.a.e().r("new_config_ver", cloudControlConfig.getData().getCloudControlVersion());
        }
        AdLogUtil.Log().i(ComConstants.SDK_INIT, "*----> CloudControlConfigSync --> save data 2 sqlite --> 持久化当前云控版本：" + cloudControlConfig.getData().getCloudControlVersion());
    }

    public static void k(boolean z10, String str, String str2, long j10, String str3, int i10) {
        Bundle bundle = new Bundle();
        bundle.putInt(TrackingKey.TRIGGER_TYPE, i10);
        bundle.putString(TrackingKey.CLD_REQUEST_ID, str3);
        bundle.putLong(TrackingKey.CLD_RETURN_TS, System.currentTimeMillis());
        try {
            bundle.putInt(TrackingKey.CLD_RETURN_TIME_INTERVAL, (int) (System.currentTimeMillis() - j10));
        } catch (Exception unused) {
        }
        if (z10) {
            bundle.putInt("code", 0);
        } else {
            bundle.putInt("code", 1);
        }
        if (TextUtils.isEmpty(str)) {
            bundle.putString("message", "");
        } else {
            bundle.putString("message", str);
        }
        bundle.putString("data", str2);
        TrackingManager.trackingCldReturn(bundle);
    }

    public static void m(int i10, String str) {
        Preconditions.d(new b(i10, str));
    }

    public static int n() {
        int i10 = f32396b;
        f32396b = i10 + 1;
        return i10;
    }

    public static void o(final int i10, final String str) {
        if (NetUtil.checkNetworkState()) {
            AtomicBoolean atomicBoolean = f32395a;
            if (!atomicBoolean.get()) {
                if (TextUtils.equals(TAdManager.getAhaChannel(), ComConstants.AHA_CHANNEL) && (TAdManager.getCodeSeatIds() == null || TAdManager.getCodeSeatIds().isEmpty())) {
                    AdLogUtil.Log().d(ComConstants.SDK_INIT, "requestCloudControl channel is aha,but codeSeatIds is empty,stop requestCloudControl");
                    return;
                }
                atomicBoolean.set(true);
                final long jCurrentTimeMillis = System.currentTimeMillis();
                d(jCurrentTimeMillis, str, i10);
                RecordTestInfo.record("CloudControlConfigSync - send cloud control request");
                com.cloud.hisavana.sdk.common.http.a aVarP = new com.cloud.hisavana.sdk.common.http.a().m(new CommonResponseListener<CloudControlConfig>() {
                    @Override
                    public void a(TaErrorCode taErrorCode) {
                        String str2;
                        CloudControlConfigSync.f32395a.set(false);
                        AdLogUtil adLogUtilLog = AdLogUtil.Log();
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("CloudControlConfigSync --> error msg ");
                        if (taErrorCode != null) {
                            str2 = taErrorCode.getErrorMessage() + "，" + taErrorCode.getErrorCode();
                        } else {
                            str2 = "";
                        }
                        sb2.append(str2);
                        adLogUtilLog.w(ComConstants.SDK_INIT, sb2.toString());
                        String strJ = l7.a.e().j("cloudControlVersion");
                        l7.a.e().p(ComConstants.Pref.CLOUD_CONFIG_ERROR_CODE, taErrorCode != null ? taErrorCode.getErrorCode() : -1);
                        if (taErrorCode != null) {
                            CloudControlConfigSync.k(false, taErrorCode.getErrorMessage(), strJ, jCurrentTimeMillis, str, i10);
                        } else {
                            CloudControlConfigSync.k(false, "no message", strJ, jCurrentTimeMillis, str, i10);
                        }
                        if (CloudControlConfigSync.f32396b >= 1 && taErrorCode != null) {
                            CloudControlConfigSync.t();
                            if (taErrorCode.getErrorCode() == 481) {
                                CloudControlConfigSync.m(481, "request cloud network time out");
                            } else if (taErrorCode.getErrorCode() == 484) {
                                CloudControlConfigSync.m(484, "request cloud is host fail ");
                            }
                        }
                        if (taErrorCode != null) {
                            AdLogUtil.Log().i(ComConstants.SDK_INIT, "currentCloudRetryCount = " + CloudControlConfigSync.f32396b + " , errorCode = " + taErrorCode.getErrorCode());
                            if (CloudControlConfigSync.f32396b == 0) {
                                if (taErrorCode.getErrorCode() == 481 || taErrorCode.getErrorCode() == 484) {
                                    CloudControlConfigSync.n();
                                    CloudControlConfigSync.o(i10, str);
                                }
                            }
                        }
                    }

                    @Override
                    public void g(int i11, final CloudControlConfig cloudControlConfig) {
                        List<Network> networks;
                        l7.a.e().p(ComConstants.Pref.CLOUD_CONFIG_ERROR_CODE, 0);
                        if (cloudControlConfig == null) {
                            CloudControlConfigSync.f32395a.set(false);
                            CloudControlConfigSync.t();
                            CloudControlConfigSync.m(484, "request cloud is host fail ");
                            return;
                        }
                        if (LogSwitch.isDebug) {
                            AdLogUtil.Log().d(ComConstants.SDK_INIT, "CloudControlConfigSync --> CloudControl is: " + GsonUtil.d(cloudControlConfig));
                        }
                        l7.a.e().q("last_req_config_time", System.currentTimeMillis());
                        CloudControlConfig.ConfigData data = cloudControlConfig.getData();
                        if (data != null) {
                            int iIntValue = data.getCloudControlCacheInterval().intValue();
                            if (iIntValue > 0) {
                                l7.a.e().q(ComConstants.Pref.REQ_CONFIG_INTERVAL, ((long) iIntValue) * 3600000);
                            }
                            ArrayList<CloudControlConfig.CodeSeat> codeSeats = data.getCodeSeats();
                            if (codeSeats != null && !codeSeats.isEmpty()) {
                                int size = codeSeats.size();
                                for (int i12 = 0; i12 < size; i12++) {
                                    CloudControlConfig.CodeSeat codeSeat = codeSeats.get(i12);
                                    if (codeSeat != null && (networks = codeSeat.getNetworks()) != null && !networks.isEmpty()) {
                                        for (Network network : networks) {
                                            if (network != null) {
                                                network.setTempPrice(network.getPrice().doubleValue());
                                                AdUtil.overwriteAdmobNetworkPrice(network);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        HSScopeHelper.f22503a.g(new Runnable() {
                            @Override
                            public void run() {
                                try {
                                    try {
                                        CloudControlConfigSync.j(cloudControlConfig, true);
                                    } catch (Exception e10) {
                                        AdLogUtil.Log().e(ComConstants.SDK_INIT, "CloudControlConfigSync --> 保存本地数据失败 " + Log.getStackTraceString(e10));
                                    }
                                } finally {
                                    CloudControlConfigSync.f32395a.set(false);
                                }
                            }
                        });
                        if (cloudControlConfig.getData() != null) {
                            CloudControlConfigSync.k(true, cloudControlConfig.getMessage(), cloudControlConfig.getData().getCloudControlVersion(), jCurrentTimeMillis, str, i10);
                        }
                    }
                }).o(new a()).q(l.a()).p("2");
                if (aVarP != null) {
                    aVarP.b();
                    return;
                }
                return;
            }
        }
        AdLogUtil.Log().w(ComConstants.SDK_INIT, "CloudControlConfigSync --> network error or requesting");
    }

    public static void q() {
        AdLogUtil adLogUtilLog = AdLogUtil.Log();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Current mode,testDevice: ");
        sb2.append(TAdManager.isTestDevice());
        sb2.append(",debug: ");
        sb2.append(TAdManager.isDebug());
        sb2.append(",server: ");
        sb2.append(i7.a.c() == 1 ? "Test" : "Release");
        adLogUtilLog.d(ComConstants.SDK_INIT, sb2.toString());
        f32397c = new Handler(Looper.getMainLooper());
        r();
        s();
        HSScopeHelper.f22503a.j(new Runnable() {
            @Override
            public void run() {
                CloudControlConfigSync.u();
                CloudControlConfigSync.b(1);
            }
        }, 500L);
    }

    public static boolean r() {
        if (ConfigContentHelper.g().f() <= 0) {
            AdLogUtil.Log().i("CloudControlConfigSync", "no cloud data in db");
            return false;
        }
        t();
        ConfigContentHelper.g().h();
        m(0, "get cloud data success");
        return true;
    }

    public static void s() {
        try {
            String strK = l7.a.e().k(ComConstants.HOST_VERSION, null);
            AdLogUtil.Log().d("CloudControlConfigSync", "cache host version: " + strK + ", current host version: " + c.p());
            if (strK == null || !TextUtils.equals(strK, c.p())) {
                String strK2 = l7.a.e().k("cloudControlVersion", null);
                try {
                    String strJ = o.j("mediation.json");
                    if (TextUtils.isEmpty(strJ)) {
                        AdLogUtil.Log().e("CloudControlConfigSync", "get nothing from mediation.json");
                        return;
                    }
                    CloudControlConfig cloudControlConfig = (CloudControlConfig) GsonUtil.a(strJ, CloudControlConfig.class);
                    if (cloudControlConfig != null && cloudControlConfig.getData() != null) {
                        if (g(cloudControlConfig.getData().getCloudControlVersion(), strK2)) {
                            j(cloudControlConfig, false);
                            l7.a.e().r(ComConstants.HOST_VERSION, c.p());
                        }
                        r();
                    }
                } catch (FileNotFoundException unused) {
                    AdLogUtil.Log().w("CloudControlConfigSync", "There is no default mediation.json available locally.");
                    l7.a.e().r(ComConstants.HOST_VERSION, c.p());
                } catch (IOException unused2) {
                    AdLogUtil.Log().w("CloudControlConfigSync", "Failed to read default mediation.json from assets.");
                }
            }
        } catch (Throwable th2) {
            AdLogUtil.Log().e("CloudControlConfigSync", Log.getStackTraceString(th2));
        }
    }

    public static void t() {
        Handler handler = f32397c;
        if (handler != null) {
            handler.removeCallbacks(f32398d);
        }
    }

    public static void u() {
        Handler handler = f32397c;
        if (handler != null) {
            handler.postDelayed(f32398d, MBInterstitialActivity.WEB_LOAD_TIME);
        }
    }
}
