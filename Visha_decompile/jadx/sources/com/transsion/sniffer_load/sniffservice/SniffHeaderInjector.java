package com.transsion.sniffer_load.sniffservice;

import android.net.Uri;
import android.text.TextUtils;
import com.just.agentweb.AgentWebConfig;
import com.lzy.okgo.model.HttpHeaders;
import com.lzy.okgo.model.Progress;
import defpackage.fr9;
import defpackage.pp3;
import defpackage.r0a;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public final class SniffHeaderInjector {
    private static final String DEFAULT_ACCEPT = "*/*";
    private static final String INSTAGRAM_WWW_ORIGIN = "https://www.instagram.com";
    private static final String SNAPCHAT_WWW_ORIGIN = "https://www.snapchat.com";
    private static final String YOUTUBE_WWW_ORIGIN = "https://www.youtube.com";

    private SniffHeaderInjector() {
    }

    private static String appendTrailingSlash(String str) {
        if (TextUtils.isEmpty(str) || str.endsWith("/")) {
            return str;
        }
        return str + "/";
    }

    private static String buildDefaultAcceptLanguage() {
        Locale locale = Locale.getDefault();
        String language = locale.getLanguage();
        String country = locale.getCountry();
        if (TextUtils.isEmpty(country)) {
            return language;
        }
        return language + "-" + country + StringUtils.COMMA + language + ";q=0.9";
    }

    public static Map<String, String> buildHeadersFromProgress(Progress progress) {
        injectProgress(progress);
        HashMap map = new HashMap();
        if (progress == null) {
            return map;
        }
        putIfNotEmpty(map, "User-Agent", progress.uaAgent);
        putIfNotEmpty(map, HttpHeaders.HEAD_KEY_COOKIE, progress.cookie);
        putIfNotEmpty(map, "Referer", progress.referer);
        putIfNotEmpty(map, "Origin", progress.origin);
        putIfNotEmpty(map, "Accept", progress.acceptType);
        putIfNotEmpty(map, HttpHeaders.HEAD_KEY_ACCEPT_LANGUAGE, progress.acceptLanguage);
        return map;
    }

    private static void fillHeaders(com.transsion.sniffer_load.okdownload.a aVar, String str, String str2) {
        if (TextUtils.isEmpty(aVar.n) && !TextUtils.isEmpty(fr9.d)) {
            aVar.n = fr9.d;
        }
        if (TextUtils.isEmpty(aVar.s)) {
            aVar.s = str;
        }
        if (TextUtils.isEmpty(aVar.r)) {
            aVar.r = parseOrigin(str);
        }
        if (TextUtils.isEmpty(aVar.o)) {
            aVar.o = resolveCookie(str2, str);
        }
        if (TextUtils.isEmpty(aVar.q)) {
            aVar.q = "*/*";
        }
        if (TextUtils.isEmpty(aVar.p)) {
            aVar.p = buildDefaultAcceptLanguage();
        }
        if (isUniversalDownloaderPage(str)) {
            String strResolveUniversalDownloaderOrigin = resolveUniversalDownloaderOrigin(str, str2);
            if (TextUtils.isEmpty(strResolveUniversalDownloaderOrigin)) {
                return;
            }
            aVar.r = strResolveUniversalDownloaderOrigin;
            aVar.s = appendTrailingSlash(strResolveUniversalDownloaderOrigin);
        }
    }

    private static void fillTiktokProgress(Progress progress) {
        progress.uaAgent = SniffTiktokUtil.TIKTOK_DOWNLOAD_HTTP_HEADER_AGENT_VALUE;
        progress.acceptLanguage = SniffTiktokUtil.TIKTOK_DOWNLOAD_HTTP_HEADER_ACCEPT_LANGUAGE_VALUE;
        progress.acceptType = "*/*";
        progress.origin = SniffTiktokUtil.TIKTOK_DOWNLOAD_HTTP_HEADER_KEY_ORIGIN_VALUE;
        progress.referer = SniffTiktokUtil.TIKTOK_DOWNLOAD_HTTP_HEADER_KEY_REFERER_VALUE;
    }

    public static void inject(com.transsion.sniffer_load.okdownload.a aVar, String str, String str2) {
        if (!pp3.q() || aVar == null) {
            return;
        }
        String strResolvePageUrl = resolvePageUrl(str, aVar.k);
        String strResolveVideoUrl = resolveVideoUrl(str2, aVar);
        if (SniffTiktokUtil.isTiktokSite(strResolveVideoUrl)) {
            SniffTiktokUtil.fillDownloadingItem(aVar);
            if (TextUtils.isEmpty(aVar.o)) {
                aVar.o = resolveCookie(strResolveVideoUrl, strResolvePageUrl);
                return;
            }
            return;
        }
        if (SniffTiktokUtil.isTiktokSite(strResolvePageUrl) && isTiktokHeaderFilled(aVar)) {
            return;
        }
        fillHeaders(aVar, strResolvePageUrl, str2);
    }

    public static void injectProgress(Progress progress) {
        if (!pp3.q() || progress == null) {
            return;
        }
        String originSite = progress.getOriginSite();
        if (SniffTiktokUtil.isTiktokSite(progress.url)) {
            fillTiktokProgress(progress);
            if (TextUtils.isEmpty(progress.cookie)) {
                progress.cookie = resolveCookie(progress.url, originSite);
                return;
            }
            return;
        }
        if (SniffTiktokUtil.isTiktokSite(originSite) && isTiktokHeaderFilled(progress)) {
            return;
        }
        fillHeaders(progress, originSite, progress.url);
    }

    private static boolean isTiktokHeaderFilled(com.transsion.sniffer_load.okdownload.a aVar) {
        return (aVar == null || TextUtils.isEmpty(aVar.s) || !SniffTiktokUtil.TIKTOK_DOWNLOAD_HTTP_HEADER_KEY_REFERER_VALUE.equals(aVar.s)) ? false : true;
    }

    private static boolean isUniversalDownloaderPage(String str) {
        String[] strArr;
        if (TextUtils.isEmpty(str) || !str.contains("universal_downloader") || (strArr = SniffScriptConfigMgr.getInstance().getsClientForbidSniffUrlList()) == null) {
            return false;
        }
        for (String str2 : strArr) {
            if (!TextUtils.isEmpty(str2) && str.contains(str2)) {
                return true;
            }
        }
        return false;
    }

    private static String parseOrigin(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            Uri uri = Uri.parse(str);
            if (!TextUtils.isEmpty(uri.getScheme()) && !TextUtils.isEmpty(uri.getHost())) {
                int port = uri.getPort();
                if (port <= 0 || port == 80 || port == 443) {
                    return uri.getScheme() + "://" + uri.getHost();
                }
                return uri.getScheme() + "://" + uri.getHost() + StringUtils.PROCESS_POSTFIX_DELIMITER + port;
            }
        } catch (Exception unused) {
        }
        return null;
    }

    private static void putIfNotEmpty(Map<String, String> map, String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        map.put(str, str2);
    }

    private static String resolveCookie(String str, String str2) {
        String cookiesByUrl = AgentWebConfig.getCookiesByUrl(str);
        return (!r0a.g(cookiesByUrl) || TextUtils.isEmpty(str2)) ? cookiesByUrl : AgentWebConfig.getCookiesByUrl(str2);
    }

    private static String resolvePageUrl(String str, String str2) {
        return !TextUtils.isEmpty(str) ? str : str2;
    }

    private static String resolveUniversalDownloaderOrigin(String str, String str2) {
        if (!TextUtils.isEmpty(str2)) {
            str = str2;
        }
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String lowerCase = str.toLowerCase(Locale.US);
        if (lowerCase.contains("youtube.com")) {
            return YOUTUBE_WWW_ORIGIN;
        }
        if (lowerCase.contains("instagram.com")) {
            return INSTAGRAM_WWW_ORIGIN;
        }
        return lowerCase.contains("snapchat.com") ? SNAPCHAT_WWW_ORIGIN : parseOrigin(str);
    }

    private static String resolveVideoUrl(String str, com.transsion.sniffer_load.okdownload.a aVar) {
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        if (aVar != null) {
            return aVar.b;
        }
        return null;
    }

    private static boolean isTiktokHeaderFilled(Progress progress) {
        return (progress == null || TextUtils.isEmpty(progress.referer) || !SniffTiktokUtil.TIKTOK_DOWNLOAD_HTTP_HEADER_KEY_REFERER_VALUE.equals(progress.referer)) ? false : true;
    }

    private static void fillHeaders(Progress progress, String str, String str2) {
        if (TextUtils.isEmpty(progress.uaAgent) && !TextUtils.isEmpty(fr9.d)) {
            progress.uaAgent = fr9.d;
        }
        if (TextUtils.isEmpty(progress.referer)) {
            progress.referer = str;
        }
        if (TextUtils.isEmpty(progress.origin)) {
            progress.origin = parseOrigin(str);
        }
        if (TextUtils.isEmpty(progress.cookie)) {
            progress.cookie = resolveCookie(str2, str);
        }
        if (TextUtils.isEmpty(progress.acceptType)) {
            progress.acceptType = "*/*";
        }
        if (TextUtils.isEmpty(progress.acceptLanguage)) {
            progress.acceptLanguage = buildDefaultAcceptLanguage();
        }
        if (isUniversalDownloaderPage(str)) {
            String strResolveUniversalDownloaderOrigin = resolveUniversalDownloaderOrigin(str, str2);
            if (TextUtils.isEmpty(strResolveUniversalDownloaderOrigin)) {
                return;
            }
            progress.origin = strResolveUniversalDownloaderOrigin;
            progress.referer = appendTrailingSlash(strResolveUniversalDownloaderOrigin);
        }
    }
}
