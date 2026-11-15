package defpackage;

import android.text.TextUtils;
import android.util.Log;
import com.cloud.hisavana.sdk.C0520g0;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.listener.CommonResponseListener;
import com.cloud.hisavana.sdk.data.bean.response.ConfigCodeSeatDTO;
import com.cloud.hisavana.sdk.data.bean.response.ConfigResponseBody;
import com.cloud.hisavana.sdk.data.bean.response.ConfigTotalDTO;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.CommonConfigDTO;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.CustomConfigManager;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.CustomConfigsKt;
import com.cloud.hisavana.sdk.i;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import com.cloud.hisavana.sdk.n;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.cloud.sdk.commonutil.util.MitNetUtil;
import com.hisavana.common.constant.ComConstants;
import com.transsion.gslb.DomainManager;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Collection;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.apache.commons.lang3.time.DateUtils;

public class cgc {
    public AtomicBoolean a;
    public final AtomicBoolean b;
    public volatile String c;
    public volatile long d;
    public volatile long e;
    public volatile String f;
    public volatile String g;
    public volatile boolean h;
    public volatile Boolean i;
    public volatile ConfigTotalDTO.ExtInfo j;

    public class a implements r7.b {
        public a() {
        }

        @Override
        public String a() {
            return lmb.b();
        }
    }

    public class b extends CommonResponseListener<ConfigResponseBody> {
        public final long b;
        public final int c;
        public final String d;
        public final boolean e;

        public b(long j, int i, String str, boolean z) {
            this.b = j;
            this.c = i;
            this.d = str;
            this.e = z;
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            AthenaTracker.M(this.c, this.d, (int) (System.currentTimeMillis() - this.b), taErrorCode == null ? 1 : taErrorCode.getErrorCode(), taErrorCode == null ? "request error" : taErrorCode.getErrorMessage(), "");
            cgc.this.a.set(false);
        }

        @Override
        public void g(int i, ConfigResponseBody configResponseBody) {
        }

        @Override
        public void h(int i, ConfigResponseBody configResponseBody, String str) {
            long jCurrentTimeMillis = System.currentTimeMillis() - this.b;
            cgc.this.a.set(false);
            ikd.b().d("ConfigManager", "onRequestSuccess statusCode " + i);
            cgc.this.d = System.currentTimeMillis();
            o9.e().q("requestConfigTime", cgc.this.d);
            if (configResponseBody == null || configResponseBody.getCode().intValue() != 0) {
                AthenaTracker.M(this.c, this.d, (int) jCurrentTimeMillis, 1, "response is null or responseCode is wrong", "");
                return;
            }
            ConfigTotalDTO data = configResponseBody.getData();
            AthenaTracker.M(this.c, this.d, (int) jCurrentTimeMillis, 0, "", cgc.this.c);
            if (data != null) {
                cgc.this.h(data, this.c, true);
                if (TextUtils.isEmpty(str) || !this.e) {
                    return;
                }
                o9.e().r("ssp_cloud_config_raw_response", str);
            }
        }
    }

    public static class c {
        public static final cgc a = new cgc(null);
    }

    public cgc(a aVar) {
        this();
    }

    public static cgc n() {
        return c.a;
    }

    public final String c() {
        if (TextUtils.isEmpty(this.g)) {
            this.g = o9.e().j(CustomConfigsKt.DCDN_URL);
        }
        if (TextUtils.isEmpty(this.g) || this.g.equals(DomainManager.BLANK_DOMAIN)) {
            this.g = p9.f() + p9.i();
        }
        return this.g;
    }

    public final void e(int i) {
        if (i != 1) {
            return;
        }
        try {
            if (this.b.compareAndSet(false, true)) {
                int iG = o9.e().g("ssp_sdk_version_code", 0);
                int iM = md8.m();
                o9.e().p("ssp_sdk_version_code", iM);
                if (iG != 0 && iG < iM) {
                    String strJ = o9.e().j("ssp_cloud_config_raw_response");
                    if (TextUtils.isEmpty(strJ)) {
                        ikd.b().d("ConfigManager", "checkVersionUpgradeAndReparse: no cached raw response, skip");
                        return;
                    }
                    ConfigResponseBody configResponseBody = (ConfigResponseBody) GsonUtil.a(strJ, ConfigResponseBody.class);
                    if (configResponseBody == null || configResponseBody.getCode().intValue() != 0 || configResponseBody.getData() == null) {
                        return;
                    }
                    ikd.b().d("ConfigManager", "checkVersionUpgradeAndReparse: re-parsing for version upgrade " + iG + " -> " + iM);
                    ConfigTotalDTO data = configResponseBody.getData();
                    if (data != null) {
                        h(data, i, false);
                    }
                }
            }
        } catch (Throwable th) {
            ikd.b().w("ConfigManager", "checkVersionUpgradeAndReparse failed: " + th.getMessage());
        }
    }

    public final void f(int i, String str, boolean z) {
        if (this.a.get()) {
            ikd.b().d("ConfigManager", "config is requesting");
            return;
        }
        ikd.b().d("ConfigManager", "request type " + i);
        this.a.set(true);
        AthenaTracker.L(i, str);
        r7 r7VarQ = new r7().m(new b(System.currentTimeMillis(), i, str, z)).o(new a()).k(r6.p()).q(p9.e() + p9.d());
        if (r7VarQ != null) {
            r7VarQ.b();
        }
    }

    public final void h(ConfigTotalDTO configTotalDTO, int i, boolean z) {
        Boolean antifraudPowerEnable;
        String antifraudSubfunctionControl;
        int iIntValue = configTotalDTO.getCloudControlCacheInterval().intValue();
        if (iIntValue > 0) {
            this.e = ((long) iIntValue) * DateUtils.MILLIS_PER_HOUR;
            o9.e().q("requestConfigInterval", this.e);
        }
        this.h = configTotalDTO.isShowRuStyle();
        o9.e().o("show_ru_style", this.h);
        if (!this.i.booleanValue() && configTotalDTO.isOmIdEnabled()) {
            n.c(ul4.a(), true);
        }
        this.i = Boolean.valueOf(configTotalDTO.isOmIdEnabled());
        o9.e().o("is_om_id_enabled", this.i.booleanValue());
        if (configTotalDTO.getAdInternalBlackBrands() == null || configTotalDTO.getAdInternalBlackBrands().isEmpty()) {
            o9.e().s("ad_internal_black_brands");
        } else {
            ikd.b().d("ConfigManager", " ad internal black brands：" + configTotalDTO.getAdInternalBlackBrands().toString());
            o9.e().r("ad_internal_black_brands", TextUtils.join(StringUtils.COMMA, configTotalDTO.getAdInternalBlackBrands()));
        }
        o9.e().o("polygamma_init_enable", configTotalDTO.isInitPolyGammaEnable());
        o9.e().o("default_is_open", configTotalDTO.getAdInternalRequestEnable());
        C0520g0.a.q(configTotalDTO.getAdInternalRequestEnable());
        lxd.c(configTotalDTO.getShowDataSyncTimeInterval(), configTotalDTO.getClickDataSyncTimeInterval());
        String extInfo = configTotalDTO.getExtInfo();
        o9.e().r("cloudConfigExtInfo", extInfo);
        i(extInfo);
        CustomConfigManager.saveCustomConfigs(configTotalDTO.getCustomConfigs());
        if (configTotalDTO.getCodeSeats() == null || configTotalDTO.getCodeSeats().isEmpty()) {
            return;
        }
        if (configTotalDTO.getCdnVersionAddressRequestTimeInterval().intValue() > 0) {
            o9.e().q("default_interval", configTotalDTO.getCdnVersionAddressRequestTimeInterval().intValue() * ComConstants.defScheduleTime);
        }
        if (spc.f().e(configTotalDTO.getCodeSeats())) {
            this.c = configTotalDTO.getCloudControlVersion();
            this.f = configTotalDTO.getSspUrl();
            o9.e().r("hisavanaCurrentCloudControlVersion", this.c);
            o9.e().r("new_hisavana_ver", this.c);
            o9.e().r("hisavanaRequestUrl", this.f);
            Boolean preConnectEnable = configTotalDTO.getPreConnectEnable();
            if (preConnectEnable != null) {
                o9.e().o("preLoadNet", preConnectEnable.booleanValue());
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
                rd.u0(antifraudPowerEnable.booleanValue());
            }
            if (!TextUtils.isEmpty(antifraudSubfunctionControl)) {
                try {
                    Integer.parseInt(antifraudSubfunctionControl, 2);
                    String strSubstring = antifraudSubfunctionControl.substring(antifraudSubfunctionControl.indexOf("1"));
                    if (!TextUtils.isEmpty(strSubstring)) {
                        rd.t0(strSubstring);
                    }
                } catch (Exception e) {
                    ikd.b().w(ja1.LOAD_TAG, "parsing AntifraudSubfunctionControl failed:" + Log.getStackTraceString(e));
                }
            }
            if (z) {
                j(configTotalDTO.getCodeSeats(), i);
            }
        }
    }

    public final void i(String str) {
        if (TextUtils.isEmpty(str)) {
            this.j = null;
        } else {
            try {
                this.j = (ConfigTotalDTO.ExtInfo) GsonUtil.a(str, ConfigTotalDTO.ExtInfo.class);
            } catch (Exception unused) {
            }
        }
    }

    public final void j(Collection collection, int i) {
        i.M().B(collection, i);
    }

    public ConfigTotalDTO.ExtInfo l() {
        return this.j;
    }

    public final void m(int i) {
        String strP = DeviceUtil.p();
        e(i);
        Map mapC = spc.f().c();
        if (mapC != null && !mapC.isEmpty()) {
            for (ConfigCodeSeatDTO configCodeSeatDTO : mapC.values()) {
                spc.f().h(configCodeSeatDTO);
                spc.f().a(configCodeSeatDTO);
            }
        }
        boolean zC = MitNetUtil.c(ul4.a());
        NetStateManager.setIsNetAvailable(zC);
        if (!zC || this.a.get()) {
            if (i != 3) {
                AthenaTracker.p0(null, i);
                AthenaTracker.d0(null, i, 2);
            }
            ikd.b().e("ConfigManager", "requestCloudControl net is not available,or is requesting");
            return;
        }
        if (this.c == null) {
            this.c = o9.e().k("hisavanaCurrentCloudControlVersion", null);
        }
        if (this.c == null) {
            f(i, strP, true);
            return;
        }
        if (!TextUtils.equals(o9.e().j("new_hisavana_ver"), this.c)) {
            f(i, strP, true);
            return;
        }
        if (this.d == 0) {
            this.d = o9.e().i("requestConfigTime", 0L);
        }
        if (this.e == 0) {
            this.e = o9.e().i("requestConfigInterval", 259200000L);
        }
        if (System.currentTimeMillis() - this.d > this.e) {
            f(i, strP, false);
            return;
        }
        ikd.b().e("ConfigManager", "time is not ready");
        if (mapC != null) {
            j(mapC.values(), i);
        } else {
            ikd.b().e("ConfigManager", "requestCloudControl download material fail,config list is null");
        }
    }

    public void p(final int i) {
        ikd.b().d("ConfigManager", "requestCloudControl type:" + i);
        HSScopeHelper.a.r(new Runnable() {
            @Override
            public final void run() {
                this.b.m(i);
            }
        });
    }

    public String q() {
        if (q1d.a.b() == 1) {
            return c();
        }
        if (TextUtils.isEmpty(this.f)) {
            this.f = o9.e().j("hisavanaRequestUrl");
        }
        if (TextUtils.isEmpty(this.f)) {
            this.f = p9.j() + p9.i();
        }
        return this.f;
    }

    public boolean r() {
        return this.i.booleanValue();
    }

    public boolean s() {
        return this.h;
    }

    public cgc() {
        this.a = new AtomicBoolean(false);
        this.b = new AtomicBoolean(false);
        this.h = false;
        this.i = Boolean.FALSE;
        this.f = o9.e().j("hisavanaRequestUrl");
        this.h = o9.e().c("show_ru_style");
        this.i = Boolean.valueOf(o9.e().d("is_om_id_enabled", false));
        i(o9.e().j("cloudConfigExtInfo"));
        CustomConfigManager.parseCustomTabData();
        CustomConfigManager.parseABTestData();
        CustomConfigManager.parseCommonConfigData();
    }
}
