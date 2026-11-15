package com.cloud.hisavana.sdk;

import android.text.TextUtils;
import android.util.Log;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.listener.CommonResponseListener;
import com.cloud.hisavana.sdk.data.bean.response.ConfigCodeSeatDTO;
import com.cloud.hisavana.sdk.data.bean.response.ConfigResponseBody;
import com.cloud.hisavana.sdk.data.bean.response.ConfigTotalDTO;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.CommonConfigDTO;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.CustomConfigManager;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.CustomConfigsKt;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.cloud.sdk.commonutil.util.MitNetUtil;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.transsion.gslb.DomainManager;
import com.vungle.ads.internal.ConfigManager;
import java.util.Collection;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

public class g1 {

    private AtomicBoolean f21838a;

    private final AtomicBoolean f21839b;

    private volatile String f21840c;

    private volatile long f21841d;

    private volatile long f21842e;

    private volatile String f21843f;

    private volatile String f21844g;

    private volatile boolean f21845h;

    private volatile Boolean f21846i;

    private volatile ConfigTotalDTO.ExtInfo f21847j;

    class a implements com.cloud.hisavana.sdk.common.http.a.b {
        a() {
        }

        @Override
        public String a() {
            return x0.b();
        }
    }

    private static class c {

        private static final g1 f21854a = new g1(null);
    }

    g1(a aVar) {
        this();
    }

    private String c() {
        if (TextUtils.isEmpty(this.f21844g)) {
            this.f21844g = l7.a.e().j(CustomConfigsKt.DCDN_URL);
        }
        if (TextUtils.isEmpty(this.f21844g) || this.f21844g.equals(DomainManager.BLANK_DOMAIN)) {
            this.f21844g = i7.a.f() + i7.a.i();
        }
        return this.f21844g;
    }

    private void e(int i10) {
        if (i10 != 1) {
            return;
        }
        try {
            if (this.f21839b.compareAndSet(false, true)) {
                int iG = l7.a.e().g("ssp_sdk_version_code", 0);
                int iM = k7.c.m();
                l7.a.e().p("ssp_sdk_version_code", iM);
                if (iG != 0 && iG < iM) {
                    String strJ = l7.a.e().j("ssp_cloud_config_raw_response");
                    if (TextUtils.isEmpty(strJ)) {
                        b4.b().d(ConfigManager.TAG, "checkVersionUpgradeAndReparse: no cached raw response, skip");
                        return;
                    }
                    ConfigResponseBody configResponseBody = (ConfigResponseBody) GsonUtil.a(strJ, ConfigResponseBody.class);
                    if (configResponseBody == null || configResponseBody.getCode().intValue() != 0 || configResponseBody.getData() == null) {
                        return;
                    }
                    b4.b().d(ConfigManager.TAG, "checkVersionUpgradeAndReparse: re-parsing for version upgrade " + iG + " -> " + iM);
                    ConfigTotalDTO data = configResponseBody.getData();
                    if (data != null) {
                        i(data, i10, false);
                    }
                }
            }
        } catch (Throwable th2) {
            b4.b().w(ConfigManager.TAG, "checkVersionUpgradeAndReparse failed: " + th2.getMessage());
        }
    }

    public void f(int i10, String str) {
        e(i10);
        Map mapD = O.g().d();
        if (mapD != null && !mapD.isEmpty()) {
            for (ConfigCodeSeatDTO configCodeSeatDTO : mapD.values()) {
                O.g().i(configCodeSeatDTO);
                O.g().b(configCodeSeatDTO);
            }
        }
        boolean zC = MitNetUtil.c(com.cloud.sdk.commonutil.util.e.a());
        NetStateManager.setIsNetAvailable(zC);
        if (!zC || this.f21838a.get()) {
            if (i10 != 3) {
                AthenaTracker.j0(null, i10);
                AthenaTracker.Y(null, i10, 2);
            }
            b4.b().e(ConfigManager.TAG, "requestCloudControl net is not available,or is requesting");
            return;
        }
        if (this.f21840c == null) {
            this.f21840c = l7.a.e().k("hisavanaCurrentCloudControlVersion", null);
        }
        if (this.f21840c == null) {
            g(i10, str, true);
            return;
        }
        if (!TextUtils.equals(l7.a.e().j("new_hisavana_ver"), this.f21840c)) {
            g(i10, str, true);
            return;
        }
        if (this.f21841d == 0) {
            this.f21841d = l7.a.e().i("requestConfigTime", 0L);
        }
        if (this.f21842e == 0) {
            this.f21842e = l7.a.e().i("requestConfigInterval", TmcConstants.MINIAPP_TIME_DIFF);
        }
        if (System.currentTimeMillis() - this.f21841d > this.f21842e) {
            g(i10, str, false);
            return;
        }
        b4.b().e(ConfigManager.TAG, "time is not ready");
        if (mapD != null) {
            k(mapD.values(), i10);
        } else {
            b4.b().e(ConfigManager.TAG, "requestCloudControl download material fail,config list is null");
        }
    }

    private void g(int i10, String str, boolean z10) {
        if (this.f21838a.get()) {
            b4.b().d(ConfigManager.TAG, "config is requesting");
            return;
        }
        b4.b().d(ConfigManager.TAG, "request type " + i10);
        this.f21838a.set(true);
        AthenaTracker.I(i10, str);
        com.cloud.hisavana.sdk.common.http.a aVarQ = new com.cloud.hisavana.sdk.common.http.a().m(new b(System.currentTimeMillis(), i10, str, z10)).o(new a()).k(c7.b.l()).q(i7.a.e() + i7.a.d());
        if (aVarQ != null) {
            aVarQ.b();
        }
    }

    public void i(ConfigTotalDTO configTotalDTO, int i10, boolean z10) {
        Boolean antifraudPowerEnable;
        String antifraudSubfunctionControl;
        int iIntValue = configTotalDTO.getCloudControlCacheInterval().intValue();
        if (iIntValue > 0) {
            this.f21842e = ((long) iIntValue) * 3600000;
            l7.a.e().q("requestConfigInterval", this.f21842e);
        }
        this.f21845h = configTotalDTO.isShowRuStyle();
        l7.a.e().o("show_ru_style", this.f21845h);
        if (!this.f21846i.booleanValue() && configTotalDTO.isOmIdEnabled()) {
            g0.c(com.cloud.sdk.commonutil.util.e.a(), true);
        }
        this.f21846i = Boolean.valueOf(configTotalDTO.isOmIdEnabled());
        l7.a.e().o("is_om_id_enabled", this.f21846i.booleanValue());
        if (configTotalDTO.getAdInternalBlackBrands() == null || configTotalDTO.getAdInternalBlackBrands().isEmpty()) {
            l7.a.e().s("ad_internal_black_brands");
        } else {
            b4.b().d(ConfigManager.TAG, " ad internal black brands：" + configTotalDTO.getAdInternalBlackBrands().toString());
            l7.a.e().r("ad_internal_black_brands", TextUtils.join(",", configTotalDTO.getAdInternalBlackBrands()));
        }
        l7.a.e().o("polygamma_init_enable", configTotalDTO.isInitPolyGammaEnable());
        l7.a.e().o("default_is_open", configTotalDTO.getAdInternalRequestEnable());
        Y.f20925a.s(configTotalDTO.getAdInternalRequestEnable());
        o5.b(configTotalDTO.getShowDataSyncTimeInterval(), configTotalDTO.getClickDataSyncTimeInterval());
        String extInfo = configTotalDTO.getExtInfo();
        l7.a.e().r("cloudConfigExtInfo", extInfo);
        j(extInfo);
        CustomConfigManager.saveCustomConfigs(configTotalDTO.getCustomConfigs());
        if (configTotalDTO.getCodeSeats() == null || configTotalDTO.getCodeSeats().isEmpty()) {
            return;
        }
        if (configTotalDTO.getCdnVersionAddressRequestTimeInterval().intValue() > 0) {
            l7.a.e().q("default_interval", configTotalDTO.getCdnVersionAddressRequestTimeInterval().intValue() * 60000);
        }
        if (O.g().f(configTotalDTO.getCodeSeats())) {
            this.f21840c = configTotalDTO.getCloudControlVersion();
            this.f21843f = configTotalDTO.getSspUrl();
            l7.a.e().r("hisavanaCurrentCloudControlVersion", this.f21840c);
            l7.a.e().r("new_hisavana_ver", this.f21840c);
            l7.a.e().r("hisavanaRequestUrl", this.f21843f);
            Boolean preConnectEnable = configTotalDTO.getPreConnectEnable();
            if (preConnectEnable != null) {
                l7.a.e().o("preLoadNet", preConnectEnable.booleanValue());
            }
            CommonConfigDTO commonConfigData = CustomConfigManager.getCommonConfigData();
            if (commonConfigData != null) {
                antifraudPowerEnable = commonConfigData.getAntifraudPowerEnable();
                antifraudSubfunctionControl = commonConfigData.getAntifraudSubfunctionControl();
            } else {
                antifraudPowerEnable = null;
                antifraudSubfunctionControl = null;
            }
            if (antifraudPowerEnable != null) {
                k7.a.u0(antifraudPowerEnable.booleanValue());
            }
            if (!TextUtils.isEmpty(antifraudSubfunctionControl)) {
                try {
                    Integer.parseInt(antifraudSubfunctionControl, 2);
                    String strSubstring = antifraudSubfunctionControl.substring(antifraudSubfunctionControl.indexOf("1"));
                    if (!TextUtils.isEmpty(strSubstring)) {
                        k7.a.t0(strSubstring);
                    }
                } catch (Exception e10) {
                    b4.b().w(com.cloud.sdk.commonutil.util.c.LOAD_TAG, "parsing AntifraudSubfunctionControl failed:" + Log.getStackTraceString(e10));
                }
            }
            if (z10) {
                k(configTotalDTO.getCodeSeats(), i10);
            }
        }
    }

    private void j(String str) {
        if (TextUtils.isEmpty(str)) {
            this.f21847j = null;
        } else {
            try {
                this.f21847j = (ConfigTotalDTO.ExtInfo) GsonUtil.a(str, ConfigTotalDTO.ExtInfo.class);
            } catch (Exception unused) {
            }
        }
    }

    private void k(Collection collection, int i10) {
        p.F().z(collection, i10);
    }

    public static g1 o() {
        return c.f21854a;
    }

    public ConfigTotalDTO.ExtInfo m() {
        return this.f21847j;
    }

    public void n(final int i10) {
        b4.b().d(ConfigManager.TAG, "requestCloudControl type:" + i10);
        final String strO = DeviceUtil.o();
        HSScopeHelper.f22503a.i(new Runnable() {
            @Override
            public final void run() {
                this.f21831a.f(i10, strO);
            }
        });
    }

    public String q() {
        if (s1.f22253a.b() == 1) {
            return c();
        }
        if (TextUtils.isEmpty(this.f21843f)) {
            this.f21843f = l7.a.e().j("hisavanaRequestUrl");
        }
        if (TextUtils.isEmpty(this.f21843f)) {
            this.f21843f = i7.a.j() + i7.a.i();
        }
        return this.f21843f;
    }

    public boolean r() {
        return this.f21846i.booleanValue();
    }

    public boolean s() {
        return this.f21845h;
    }

    private g1() {
        this.f21838a = new AtomicBoolean(false);
        this.f21839b = new AtomicBoolean(false);
        this.f21845h = false;
        this.f21846i = Boolean.FALSE;
        this.f21843f = l7.a.e().j("hisavanaRequestUrl");
        this.f21845h = l7.a.e().c("show_ru_style");
        this.f21846i = Boolean.valueOf(l7.a.e().d("is_om_id_enabled", false));
        j(l7.a.e().j("cloudConfigExtInfo"));
        CustomConfigManager.parseCustomTabData();
        CustomConfigManager.parseABTestData();
        CustomConfigManager.parseCommonConfigData();
    }

    class b extends CommonResponseListener<ConfigResponseBody> {

        final long f21849b;

        final int f21850c;

        final String f21851d;

        final boolean f21852e;

        b(long j10, int i10, String str, boolean z10) {
            this.f21849b = j10;
            this.f21850c = i10;
            this.f21851d = str;
            this.f21852e = z10;
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            AthenaTracker.J(this.f21850c, this.f21851d, (int) (System.currentTimeMillis() - this.f21849b), 1, taErrorCode == null ? "request error" : taErrorCode.getErrorMessage(), "");
            g1.this.f21838a.set(false);
        }

        @Override
        public void h(int i10, ConfigResponseBody configResponseBody, String str) {
            long jCurrentTimeMillis = System.currentTimeMillis() - this.f21849b;
            g1.this.f21838a.set(false);
            b4.b().d(ConfigManager.TAG, "onRequestSuccess statusCode " + i10);
            g1.this.f21841d = System.currentTimeMillis();
            l7.a.e().q("requestConfigTime", g1.this.f21841d);
            if (configResponseBody == null || configResponseBody.getCode().intValue() != 0) {
                AthenaTracker.J(this.f21850c, this.f21851d, (int) jCurrentTimeMillis, 1, "response is null or responseCode is wrong", "");
                return;
            }
            ConfigTotalDTO data = configResponseBody.getData();
            AthenaTracker.J(this.f21850c, this.f21851d, (int) jCurrentTimeMillis, 0, "", g1.this.f21840c);
            if (data != null) {
                g1.this.i(data, this.f21850c, true);
                if (TextUtils.isEmpty(str) || !this.f21852e) {
                    return;
                }
                l7.a.e().r("ssp_cloud_config_raw_response", str);
            }
        }

        @Override
        public void g(int i10, ConfigResponseBody configResponseBody) {
        }
    }
}
