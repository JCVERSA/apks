package com.hunantv.imgo.net;

import android.text.TextUtils;
import com.hunantv.imgo.util.PreferencesUtil;
import com.mgtv.ssp.bean.config.SspSdkConfig;

public class a {
    public static String a = "ounion.api.mgtv.com";
    public static String b = "ounion.bz.mgtv.com";
    public static String c = "cp.bz.mgtv.com";
    public static String d = "odsun.log.mgtv.com";
    public static SspSdkConfig.DomainConfig e;

    public static String a() {
        SspSdkConfig.DomainConfig domainConfig = e;
        if (domainConfig != null && !TextUtils.isEmpty(domainConfig.apiDomain)) {
            return "https://" + e.apiDomain;
        }
        if (!com.hunantv.imgo.util.b.f()) {
            return "https://union.api.mgtv.com";
        }
        return "https://" + a;
    }

    public static String b() {
        SspSdkConfig.DomainConfig domainConfig = e;
        if (domainConfig != null && !TextUtils.isEmpty(domainConfig.cpDomain)) {
            return "https://" + e.cpDomain;
        }
        if (!com.hunantv.imgo.util.b.f()) {
            return "https://cp.bz.mgtv.com";
        }
        return "https://" + c;
    }

    public static String c() {
        SspSdkConfig.DomainConfig domainConfig = e;
        if (domainConfig != null && !TextUtils.isEmpty(domainConfig.dsunDomain)) {
            return "https://" + e.dsunDomain;
        }
        if (!com.hunantv.imgo.util.b.f()) {
            return "https://dsun.log.mgtv.com";
        }
        return "https://" + d;
    }

    public static String d() {
        SspSdkConfig.DomainConfig domainConfig = e;
        if (domainConfig == null || TextUtils.isEmpty(domainConfig.dataDomain)) {
            return com.hunantv.imgo.util.b.f() ? "https://hd-ext-v1.log.mgtv.com" : "https://aphone.v1.mgtv.com";
        }
        return "https://" + e.dataDomain;
    }

    public static String e() {
        SspSdkConfig.DomainConfig domainConfig = e;
        if (domainConfig == null || TextUtils.isEmpty(domainConfig.v2LogDomain)) {
            return com.hunantv.imgo.util.b.f() ? "https://hd-ext-v2.log.mgtv.com" : "https://v2.log.mgtv.com";
        }
        return "https://" + e.v2LogDomain;
    }

    public static String f() {
        SspSdkConfig.DomainConfig domainConfig = e;
        if (domainConfig == null || TextUtils.isEmpty(domainConfig.playLogDomain)) {
            return com.hunantv.imgo.util.b.f() ? "https://hd-ext-play.log.mgtv.com" : "https://v1-play.log.mgtv.com";
        }
        return "https://" + e.playLogDomain;
    }

    public static String g() {
        SspSdkConfig.DomainConfig domainConfig = e;
        if (domainConfig == null || TextUtils.isEmpty(domainConfig.supportDomain)) {
            return com.hunantv.imgo.util.b.f() ? "https://support.api.mgtv.com" : "http://support.api.hunantv.com";
        }
        return "https://" + e.supportDomain;
    }

    public static String h() {
        SspSdkConfig.DomainConfig domainConfig = e;
        if (domainConfig == null || TextUtils.isEmpty(domainConfig.apperrLogDomain)) {
            com.hunantv.imgo.util.b.f();
            return "https://apperr.log.mgtv.com";
        }
        return "https://" + e.apperrLogDomain;
    }

    public static String i() {
        SspSdkConfig.DomainConfig domainConfig = e;
        if (domainConfig == null || TextUtils.isEmpty(domainConfig.guidDomain)) {
            com.hunantv.imgo.util.b.f();
            return "https://guids.api.mgtv.com";
        }
        return "https://" + e.guidDomain;
    }

    public static String j() {
        SspSdkConfig.DomainConfig domainConfig = e;
        if (domainConfig == null || TextUtils.isEmpty(domainConfig.retryDomain)) {
            com.hunantv.imgo.util.b.f();
            return "https://cp2.bz.mgtv.com";
        }
        return "https://" + e.retryDomain;
    }

    public static String k() {
        SspSdkConfig.DomainConfig domainConfig = e;
        if (domainConfig == null || TextUtils.isEmpty(domainConfig.getTokenDomain)) {
            com.hunantv.imgo.util.b.f();
            return "https://nuc.api.mgtv.com";
        }
        return "https://" + e.getTokenDomain;
    }

    public static String l() {
        String strC = PreferencesUtil.c("SDKCONFIG_RETRY_DOMAIN", "");
        if (TextUtils.isEmpty(strC)) {
            return "https://union2.api.mgtv.com";
        }
        return "https://" + strC;
    }
}
