package com.cloud.hisavana.sdk;

import android.content.pm.PackageInfo;
import android.text.TextUtils;
import android.util.Log;
import com.cloud.hisavana.sdk.common.bean.SSPWebPageReqInfo;
import com.cloud.hisavana.sdk.data.bean.request.AdxImpBean;
import com.cloud.hisavana.sdk.data.bean.request.AdxRequestBody;
import com.cloud.hisavana.sdk.data.bean.request.ApplicationDTO;
import com.cloud.hisavana.sdk.data.bean.request.ConfigRequestBody;
import com.cloud.hisavana.sdk.data.bean.request.DeviceDTO;
import com.cloud.hisavana.sdk.data.bean.request.OmSdk;
import com.cloud.hisavana.sdk.data.bean.request.UserDTO;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.CustomCloudControlKey;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.cloud.sdk.commonutil.util.MitNetUtil;
import java.util.Locale;

public abstract class x0 {

    private static AdxRequestBody f22430a;

    private static AdxRequestBody f22431b;

    private static AdxRequestBody a(boolean z10) {
        AdxRequestBody adxRequestBody = new AdxRequestBody();
        ApplicationDTO applicationDTO = new ApplicationDTO();
        applicationDTO.setPackageName(com.cloud.sdk.commonutil.util.e.d());
        applicationDTO.setInstallTime(com.cloud.sdk.commonutil.util.b.a());
        applicationDTO.setVersionInt(k7.c.p());
        applicationDTO.setVersion(k7.c.q());
        applicationDTO.setSdkVersion(k7.c.l());
        applicationDTO.setSdkVersionCode(359100);
        applicationDTO.setUserAgent(com.cloud.sdk.commonutil.util.r.c());
        PackageInfo packageInfoC = com.cloud.hisavana.sdk.common.util.h0.c(com.cloud.sdk.commonutil.util.e.a());
        applicationDTO.setPsVersion(packageInfoC == null ? 0L : packageInfoC.versionCode);
        applicationDTO.setPsChannel("Online");
        applicationDTO.setPsApiVersion("1.0.7");
        adxRequestBody.application = applicationDTO;
        DeviceDTO deviceDTO = new DeviceDTO();
        deviceDTO.setType(k7.c.o());
        deviceDTO.setBrand(k7.c.a());
        deviceDTO.setModel(k7.c.f());
        deviceDTO.setMaker(k7.c.c());
        deviceDTO.setGaid(DeviceUtil.e());
        deviceDTO.setOsType(1);
        deviceDTO.setOsVersion(k7.c.h());
        deviceDTO.setScreenWidth(k7.c.k());
        deviceDTO.setScreenHeight(k7.c.j());
        deviceDTO.setScreenDensity(k7.c.i());
        deviceDTO.setTurnOffPerAds(DeviceUtil.f());
        deviceDTO.setCpu(DeviceUtil.c());
        deviceDTO.setOsApiLevel("" + k7.c.g());
        if (!z10 && k7.a.h0()) {
            String strM = k7.a.m();
            if (!TextUtils.isEmpty(strM)) {
                deviceDTO.setAntifraud(strM);
            }
        }
        deviceDTO.setTotalRam(Long.valueOf(DeviceUtil.n()));
        adxRequestBody.device = deviceDTO;
        return adxRequestBody;
    }

    public static String b() {
        DeviceDTO deviceDTO;
        try {
            boolean zF = f();
            ConfigRequestBody configRequestBody = new ConfigRequestBody();
            AdxRequestBody adxRequestBody = f22431b;
            configRequestBody.application = adxRequestBody.application;
            configRequestBody.device = adxRequestBody.device;
            configRequestBody.user = new UserDTO();
            configRequestBody.applicationId = c7.b.f16688b;
            configRequestBody.testRequest = c7.b.m();
            if (!zF && (deviceDTO = configRequestBody.device) != null && TextUtils.isEmpty(deviceDTO.getGaid())) {
                configRequestBody.device.setGaid(DeviceUtil.e());
            }
            configRequestBody.user.setBaseStation(DeviceUtil.g());
            configRequestBody.user.setLatitude(com.cloud.sdk.commonutil.util.d.d());
            configRequestBody.user.setLongitude(com.cloud.sdk.commonutil.util.d.f());
            configRequestBody.user.setCoordTime(com.cloud.sdk.commonutil.util.d.c());
            configRequestBody.ascribeEnable = com.cloud.hisavana.sdk.common.util.h0.f(com.cloud.sdk.commonutil.util.e.a());
            configRequestBody.customKeys = CustomCloudControlKey.getCustomRequestKeys();
            return GsonUtil.d(configRequestBody);
        } catch (Throwable th2) {
            b4.b().e(Log.getStackTraceString(th2));
            return "";
        }
    }

    public static String c(AdxImpBean adxImpBean) {
        return d(adxImpBean, null);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static String d(AdxImpBean adxImpBean, SSPWebPageReqInfo sSPWebPageReqInfo) {
        try {
            boolean zE = e();
            AdxRequestBody adxRequestBodyCopy = AdxRequestBody.copy(f22430a);
            adxRequestBodyCopy.requestId = !TextUtils.isEmpty(adxImpBean.requestId) ? adxImpBean.requestId : DeviceUtil.o();
            adxRequestBodyCopy.testRequest = Boolean.valueOf(c7.b.m());
            adxRequestBodyCopy.applicationId = c7.b.f16688b;
            adxRequestBodyCopy.apiType = 1;
            adxRequestBodyCopy.defaultAd = false;
            adxRequestBodyCopy.offlineAd = adxImpBean.offlineAd;
            adxRequestBodyCopy.cachedAdCount = adxImpBean.cacheAdCount;
            adxRequestBodyCopy.codeSeat.setId(adxImpBean.pmid);
            adxRequestBodyCopy.codeSeat.setType(adxImpBean.adt);
            adxRequestBodyCopy.codeSeat.setAdCount(adxImpBean.mAdCount);
            adxRequestBodyCopy.codeSeat.setWidth(0);
            adxRequestBodyCopy.codeSeat.setHeight(0);
            adxRequestBodyCopy.codeSeat.setGameName(adxImpBean.gameName);
            adxRequestBodyCopy.codeSeat.setGameScene(adxImpBean.gameScene);
            adxRequestBodyCopy.codeSeat.setExtInfo(adxImpBean.extInfo);
            adxRequestBodyCopy.codeSeat.setAdPriority(adxImpBean.supportEw ? 1 : 0);
            adxRequestBodyCopy.codeSeat.setOfflineAdEnable(adxImpBean.offlineAdEnable);
            if (sSPWebPageReqInfo != null) {
                try {
                    adxRequestBodyCopy.codeSeat.setWebPageInfo(sSPWebPageReqInfo);
                } catch (Throwable unused) {
                }
            }
            if (g1.o().r()) {
                OmSdk omSdk = new OmSdk();
                omSdk.api = new Integer[]{7};
                omSdk.omidpn = "hisavana";
                omSdk.omidpv = ie.a.b();
                adxRequestBodyCopy.codeSeat.setOmSdk(omSdk);
            }
            DeviceDTO deviceDTO = adxRequestBodyCopy.device;
            if (zE && deviceDTO != null) {
                deviceDTO.setIpAddress(DeviceUtil.h());
                deviceDTO.setOneid(DeviceUtil.j());
            }
            if (deviceDTO != null) {
                deviceDTO.setImsi(k7.c.d());
                deviceDTO.setLanguage(Locale.getDefault().getLanguage());
                deviceDTO.setOperatorType(k7.c.e() + k7.c.d());
                deviceDTO.setGaid(DeviceUtil.e());
                deviceDTO.setNetworkConnectionType(String.valueOf(MitNetUtil.a(com.cloud.sdk.commonutil.util.e.a()).ordinal()));
                deviceDTO.setPsCountryCode(DeviceUtil.d());
            }
            adxRequestBodyCopy.user.setBaseStation(DeviceUtil.g());
            adxRequestBodyCopy.user.setLatitude(com.cloud.sdk.commonutil.util.d.d());
            adxRequestBodyCopy.user.setLongitude(com.cloud.sdk.commonutil.util.d.f());
            adxRequestBodyCopy.user.setCoordTime(com.cloud.sdk.commonutil.util.d.c());
            return GsonUtil.d(adxRequestBodyCopy);
        } catch (Throwable th2) {
            b4.b().e(Log.getStackTraceString(th2));
            return "";
        }
    }

    private static synchronized boolean e() {
        AdxRequestBody adxRequestBody = f22430a;
        if (adxRequestBody == null) {
            f22430a = a(false);
            return true;
        }
        DeviceDTO deviceDTO = adxRequestBody.device;
        if (deviceDTO != null && TextUtils.isEmpty(deviceDTO.getAntifraud()) && k7.a.h0()) {
            String strM = k7.a.m();
            if (!TextUtils.isEmpty(strM)) {
                f22430a.device.setAntifraud(strM);
            }
        }
        return false;
    }

    private static synchronized boolean f() {
        if (f22431b != null) {
            return false;
        }
        f22431b = a(true);
        return true;
    }
}
