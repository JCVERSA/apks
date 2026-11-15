package com.transsion.playercommon.vishaapis.gslb;

import android.content.Context;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.Utils;
import com.transsion.gslb.GslbSdk;
import com.transsion.playercommon.utils.CountryInfoUtil;
import defpackage.ge;
import defpackage.pp3;
import defpackage.r0a;
import defpackage.w6c;
import java.util.Map;

public class GslbService {
    private static final String CLOUD_HOST = "https://oscloud.palm.tech";
    private static final String CLOUD_HOST_TEST = "https://test-oscloud.transsion-os.com";
    private static final String TAG = "GslbService";
    private static final String VISHA_DEFAULT_HOST_DOMAIN = "https://api.vishavideo.com";
    private static final String VISHA_DEFAULT_HOST_DOMAIN_TEST = "https://test-visha.transsion-os.com";
    private static final int VISHA_EE1_COUNTRY_CODE = 178;
    private static final String VISHA_EE1_HOST_DOMAIN = "https://rus-api.vishavideo.com";
    private final String[] GSLB_VISHA_DOMAINS;
    private boolean mIsInit;

    public static final class InstanceHolder {
        private static final GslbService INSTANCE = new GslbService();

        private InstanceHolder() {
        }
    }

    private String getDefaultHost() {
        return (!ge.e() || w6c.d(Utils.a(), "environment_mode", 0) == 1) ? "https://api.vishavideo.com" : "https://test-visha.transsion-os.com";
    }

    public static GslbService getInstance() {
        return InstanceHolder.INSTANCE;
    }

    private boolean isTestModeClose() {
        return ge.e() && w6c.d(Utils.a(), "gslb_mode", 0) == 0;
    }

    public boolean IsSupportGslb() {
        return (pp3.b || isTestModeClose()) ? false : true;
    }

    public String getDomainByApi(String str) {
        if (!this.mIsInit || r0a.g(str)) {
            LogUtils.w(TAG, "Gslb not init yet,return main host(apiName:" + str + ")");
            return getDefaultHost();
        }
        String domain = GslbSdk.getDomain(getDefaultHost(), true);
        LogUtils.w(TAG, "Gslb init success,get real domain(apiName:" + str + ") :" + domain);
        return domain;
    }

    public String getEE1Host() {
        return "https://rus-api.vishavideo.com";
    }

    public void init(Context context, final GslbSdk.GslbInitListener gslbInitListener) {
        if (context != null) {
            GslbSdk.init(context, this.GSLB_VISHA_DOMAINS, new GslbSdk.GslbInitListener() {
                @Override
                public void onInitFail(String str) {
                    GslbService.this.mIsInit = false;
                    LogUtils.m(GslbService.TAG, "Gslb init fail:" + str);
                    GslbSdk.GslbInitListener gslbInitListener2 = gslbInitListener;
                    if (gslbInitListener2 != null) {
                        gslbInitListener2.onInitFail(str);
                    }
                }

                @Override
                public void onInitSuccess(Map<String, String> map) {
                    GslbService.this.mIsInit = true;
                    LogUtils.w(GslbService.TAG, "Gslb init success,country:" + GslbSdk.getCountry());
                    if (map != null && !map.isEmpty()) {
                        for (Map.Entry<String, String> entry : map.entrySet()) {
                            LogUtils.N(GslbService.TAG, "Gslb host:" + entry.getKey() + "=" + entry.getValue());
                        }
                    }
                    GslbSdk.GslbInitListener gslbInitListener2 = gslbInitListener;
                    if (gslbInitListener2 != null) {
                        gslbInitListener2.onInitSuccess(map);
                    }
                }
            });
        }
    }

    public boolean isEE1Country() {
        return CountryInfoUtil.m() == 178;
    }

    public boolean isInit() {
        return this.mIsInit;
    }

    public boolean isTestDevHostMode() {
        return ge.e() && w6c.d(Utils.a(), "environment_mode", 0) == 1;
    }

    private GslbService() {
        this.GSLB_VISHA_DOMAINS = new String[]{"https://api.vishavideo.com", "https://rus-api.vishavideo.com", "https://test-visha.transsion-os.com", CLOUD_HOST, CLOUD_HOST_TEST};
        this.mIsInit = false;
    }
}
