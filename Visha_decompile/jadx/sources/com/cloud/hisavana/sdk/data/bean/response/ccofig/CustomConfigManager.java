package com.cloud.hisavana.sdk.data.bean.response.ccofig;

import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import defpackage.ikd;
import defpackage.o9;
import java.util.concurrent.ConcurrentHashMap;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\t\u0010\u0003J\u001b\u0010\r\u001a\u0004\u0018\u00010\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0007¢\u0006\u0004\b\r\u0010\u000eJ#\u0010\u0011\u001a\u00020\u00062\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u001b\u0010\u0013\u001a\u0004\u0018\u00010\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002¢\u0006\u0004\b\u0013\u0010\u000eJ\u000f\u0010\u0014\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u0014\u0010\u0003J\u0011\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0007¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u0018\u0010\u0003J\u0011\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0007¢\u0006\u0004\b\u001a\u0010\u001bR#\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000f0\u001c8\u0006¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 ¨\u0006!"}, d2 = {"Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;", "", MethodDecl.initName, "()V", "Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigs;", "customConfigs", "Lzfb;", "saveCustomConfigs", "(Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigs;)V", "parseABTestData", "", "abName", "Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;", "getABTestData", "(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/ABTest;", "", "defaultValue", "setUseABTestDefaultData", "(Ljava/lang/String;Ljava/lang/Boolean;)V", "getDefaultAbTestData", "parseCustomTabData", "Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;", "getCustomTabData", "()Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomTabConfigDTO;", "parseCommonConfigData", "Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CommonConfigDTO;", "getCommonConfigData", "()Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CommonConfigDTO;", "Ljava/util/concurrent/ConcurrentHashMap;", "enableUseDefaultABDataMap", "Ljava/util/concurrent/ConcurrentHashMap;", "getEnableUseDefaultABDataMap", "()Ljava/util/concurrent/ConcurrentHashMap;", "api_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CustomConfigManager {
    public static final CustomConfigManager INSTANCE = new CustomConfigManager();
    private static final ConcurrentHashMap<String, Boolean> enableUseDefaultABDataMap = new ConcurrentHashMap<>();

    private CustomConfigManager() {
    }

    public static final ABTest getABTestData(String abName) {
        try {
            ABTest currentABTest = ClientABTestUtil.getCurrentABTest(abName);
            return currentABTest != null ? currentABTest : INSTANCE.getDefaultAbTestData(abName);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static final CommonConfigDTO getCommonConfigData() {
        return CustomTabUtil.getCommonConfig();
    }

    public static final CustomTabConfigDTO getCustomTabData() {
        return CustomTabUtil.getCCTConfig();
    }

    private final ABTest getDefaultAbTestData(String abName) {
        try {
            Boolean bool = enableUseDefaultABDataMap.get(abName);
            if (!(bool != null ? bool.booleanValue() : true)) {
                ikd.b().d("AbTestData", "getDefaultAbTestData disableDefaultABDataMap");
                return null;
            }
        } catch (Throwable unused) {
        }
        if (abName == null) {
            return null;
        }
        int iHashCode = abName.hashCode();
        if (iHashCode == -1581360697) {
            if (!abName.equals(ClientABTestDTOKt.AB_CUSTOM_TAB)) {
                return null;
            }
            try {
                ikd.b().d("AbTestData", "getDefaultAbTestData AB_CUSTOM_TAB");
                return (ABTest) GsonUtil.a("{\"ab_name\":\"custom_tab\",\"layer_id\":503,\"req_interval\":259200,\"switch\":\"OPEN\",\"trackEvent\":[\"ssp_landing_page_tracking\",\"ssp_chrome_landing_page\",\"ssp_chrome_stay_landing_page\",\"ssp_cliclk_link_tracking\"]}", ABTest.class);
            } catch (Throwable unused2) {
                return null;
            }
        }
        if (iHashCode == -656735996) {
            if (!abName.equals(ClientABTestDTOKt.AB_NETWORK)) {
                return null;
            }
            try {
                ikd.b().d("AbTestData", "getDefaultAbTestData AB_NETWORK");
                return (ABTest) GsonUtil.a("{\"ab_name\":\"client_ab_network\",\"layer_id\":523,\"req_interval\":259200,\"switch\":\"OPEN\",\"trackEvent\":[\"ad_ssp_request\",\"ad_ssp_return\"]}", ABTest.class);
            } catch (Throwable unused3) {
                return null;
            }
        }
        if (iHashCode != 1518914457 || !abName.equals(ClientABTestDTOKt.MEDIATION_EW_STRATEGY)) {
            return null;
        }
        try {
            ikd.b().d("AbTestData", "getDefaultAbTestData MEDIATION_EW_STRATEGY");
            return (ABTest) GsonUtil.a("{\"ab_name\":\"mediation_ew_strategy\",\"layer_id\":539,\"req_interval\":259200,\"switch\":\"OPEN\",\"trackEvent\":[\"ad_request\",\"ad_return\"]}", ABTest.class);
        } catch (Throwable unused4) {
            return null;
        }
    }

    public static final void parseABTestData() {
        ClientABTestUtil.convertABJsonToMap(o9.e().j(CustomConfigsKt.AB_TEST));
    }

    public static final void parseCommonConfigData() {
        CustomTabUtil.formatCommonConfig(o9.e().j(CustomConfigsKt.COMMON_CONFIG));
    }

    public static final void parseCustomTabData() {
        CustomTabUtil.formatCCTConfig(o9.e().j(CustomConfigsKt.CUSTOM_TAB));
    }

    public static final void saveCustomConfigs(CustomConfigs customConfigs) {
        if (customConfigs != null) {
            String abTest = customConfigs.getAbTest();
            String customTab = customConfigs.getCustomTab();
            String commonConfig = customConfigs.getCommonConfig();
            String dcdnUrl = customConfigs.getDcdnUrl();
            ClientABTestUtil.convertABJsonToMap(abTest);
            CustomTabUtil.formatCCTConfig(customTab);
            CustomTabUtil.formatCommonConfig(commonConfig);
            o9.e().r(CustomConfigsKt.AB_TEST, abTest);
            o9.e().r(CustomConfigsKt.CUSTOM_TAB, customTab);
            o9.e().r(CustomConfigsKt.COMMON_CONFIG, commonConfig);
            o9.e().r(CustomConfigsKt.DCDN_URL, dcdnUrl);
        }
    }

    public static final void setUseABTestDefaultData(String abName, Boolean defaultValue) {
        if (abName != null) {
            try {
                if (abName.length() == 0 || defaultValue == null) {
                    return;
                }
                enableUseDefaultABDataMap.put(abName, defaultValue);
            } catch (Throwable unused) {
            }
        }
    }

    public final ConcurrentHashMap<String, Boolean> getEnableUseDefaultABDataMap() {
        return enableUseDefaultABDataMap;
    }
}
