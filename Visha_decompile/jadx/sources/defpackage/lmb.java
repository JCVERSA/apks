package defpackage;

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

public abstract class lmb {
    public static AdxRequestBody a;
    public static AdxRequestBody b;

    public static AdxRequestBody a(boolean z) {
        AdxRequestBody adxRequestBody = new AdxRequestBody();
        ApplicationDTO applicationDTO = new ApplicationDTO();
        applicationDTO.setPackageName(ul4.d());
        applicationDTO.setInstallTime(sf.a());
        applicationDTO.setVersionInt(md8.p());
        applicationDTO.setVersion(md8.q());
        applicationDTO.setSdkVersion(md8.l());
        applicationDTO.setSdkVersionCode(366100);
        applicationDTO.setUserAgent(mjb.c());
        PackageInfo packageInfoC = cy9.c(ul4.a());
        applicationDTO.setPsVersion(packageInfoC == null ? 0L : packageInfoC.versionCode);
        applicationDTO.setPsChannel("Online");
        applicationDTO.setPsApiVersion("1.0.7");
        adxRequestBody.application = applicationDTO;
        DeviceDTO deviceDTO = new DeviceDTO();
        deviceDTO.setType(md8.o());
        deviceDTO.setBrand(md8.a());
        deviceDTO.setModel(md8.f());
        deviceDTO.setMaker(md8.c());
        deviceDTO.setGaid(DeviceUtil.f());
        deviceDTO.setOsType(1);
        deviceDTO.setOsVersion(md8.h());
        deviceDTO.setScreenWidth(md8.k());
        deviceDTO.setScreenHeight(md8.j());
        deviceDTO.setScreenDensity(md8.i());
        deviceDTO.setTurnOffPerAds(DeviceUtil.g());
        deviceDTO.setCpu(DeviceUtil.d());
        deviceDTO.setOsApiLevel("" + md8.g());
        if (!z && rd.h0()) {
            String strM = rd.m();
            if (!TextUtils.isEmpty(strM)) {
                deviceDTO.setAntifraud(strM);
            }
        }
        deviceDTO.setTotalRam(Long.valueOf(DeviceUtil.o()));
        adxRequestBody.device = deviceDTO;
        return adxRequestBody;
    }

    public static String b() {
        DeviceDTO deviceDTO;
        try {
            boolean zF = f();
            ConfigRequestBody configRequestBody = new ConfigRequestBody();
            AdxRequestBody adxRequestBody = b;
            configRequestBody.application = adxRequestBody.application;
            configRequestBody.device = adxRequestBody.device;
            configRequestBody.user = new UserDTO();
            configRequestBody.applicationId = r6.b;
            configRequestBody.testRequest = r6.q();
            if (!zF && (deviceDTO = configRequestBody.device) != null && TextUtils.isEmpty(deviceDTO.getGaid())) {
                configRequestBody.device.setGaid(DeviceUtil.f());
            }
            configRequestBody.user.setBaseStation(DeviceUtil.h());
            configRequestBody.user.setLatitude(za4.d());
            configRequestBody.user.setLongitude(za4.f());
            configRequestBody.user.setCoordTime(za4.c());
            configRequestBody.ascribeEnable = cy9.g(ul4.a());
            configRequestBody.customKeys = CustomCloudControlKey.getCustomRequestKeys();
            return GsonUtil.d(configRequestBody);
        } catch (Throwable th) {
            ikd.b().e(Log.getStackTraceString(th));
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
            AdxRequestBody adxRequestBodyCopy = AdxRequestBody.copy(a);
            adxRequestBodyCopy.requestId = !TextUtils.isEmpty(adxImpBean.requestId) ? adxImpBean.requestId : DeviceUtil.p();
            adxRequestBodyCopy.testRequest = Boolean.valueOf(r6.q());
            adxRequestBodyCopy.applicationId = r6.b;
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
            if (cgc.n().r()) {
                OmSdk omSdk = new OmSdk();
                omSdk.api = new Integer[]{7};
                omSdk.omidpn = "hisavana";
                omSdk.omidpv = ke7.b();
                adxRequestBodyCopy.codeSeat.setOmSdk(omSdk);
            }
            DeviceDTO deviceDTO = adxRequestBodyCopy.device;
            if (zE && deviceDTO != null) {
                deviceDTO.setIpAddress(DeviceUtil.i());
                deviceDTO.setOneid(DeviceUtil.k());
            }
            if (deviceDTO != null) {
                deviceDTO.setImsi(md8.d());
                deviceDTO.setLanguage(Locale.getDefault().getLanguage());
                deviceDTO.setOperatorType(md8.e() + md8.d());
                deviceDTO.setGaid(DeviceUtil.f());
                deviceDTO.setNetworkConnectionType(String.valueOf(MitNetUtil.a(ul4.a()).ordinal()));
                deviceDTO.setPsCountryCode(DeviceUtil.e());
            }
            adxRequestBodyCopy.user.setBaseStation(DeviceUtil.h());
            adxRequestBodyCopy.user.setLatitude(za4.d());
            adxRequestBodyCopy.user.setLongitude(za4.f());
            adxRequestBodyCopy.user.setCoordTime(za4.c());
            return GsonUtil.d(adxRequestBodyCopy);
        } catch (Throwable th) {
            ikd.b().e(Log.getStackTraceString(th));
            return "";
        }
    }

    public static synchronized boolean e() {
        AdxRequestBody adxRequestBody = a;
        if (adxRequestBody == null) {
            a = a(false);
            return true;
        }
        DeviceDTO deviceDTO = adxRequestBody.device;
        if (deviceDTO != null && TextUtils.isEmpty(deviceDTO.getAntifraud()) && rd.h0()) {
            String strM = rd.m();
            if (!TextUtils.isEmpty(strM)) {
                a.device.setAntifraud(strM);
            }
        }
        return false;
    }

    public static synchronized boolean f() {
        if (b != null) {
            return false;
        }
        b = a(true);
        return true;
    }
}
