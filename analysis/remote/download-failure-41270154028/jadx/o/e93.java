package o;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import com.google.firebase.perf.FirebasePerformance;
import com.snaptube.extractor.pluginlib.common.SiteExtractLog;
import com.snaptube.extractor.pluginlib.models.PageContext;
import com.snaptube.video.videoextractor.net.HttpHeader;
import com.snaptube.video.videoextractor.net.HttpRequest;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class e93 {
    public static String a(String str, Context context) {
        if (context != null) {
            try {
                CookieSyncManager.createInstance(context).startSync();
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }
        return CookieManager.getInstance().getCookie(str);
    }

    public static String b(String str) {
        try {
            return a(str, pz5.a());
        } catch (Exception unused) {
            return null;
        }
    }

    public static Map c(String str) {
        String[] strArrSplit;
        String strTrim;
        int iIndexOf;
        HashMap map = new HashMap();
        if (!TextUtils.isEmpty(str) && (strArrSplit = str.split(";")) != null) {
            for (String str2 : strArrSplit) {
                if (str2 != null && (iIndexOf = (strTrim = str2.trim()).indexOf("=")) > 0) {
                    map.put(strTrim.substring(0, iIndexOf), strTrim.substring(iIndexOf + 1));
                }
            }
        }
        return map;
    }

    public static String d(String str) {
        if (tt7.g(str)) {
            return "";
        }
        int iIndexOf = str.indexOf(63);
        if (iIndexOf >= 0) {
            str = str.substring(0, iIndexOf);
        }
        int iLastIndexOf = str.lastIndexOf(47);
        int iLastIndexOf2 = str.lastIndexOf(92);
        int iLastIndexOf3 = str.lastIndexOf(46);
        return (iLastIndexOf3 < iLastIndexOf || iLastIndexOf3 < iLastIndexOf2) ? "" : str.substring(iLastIndexOf3 + 1);
    }

    public static String e(String str, List list) {
        List listF = f(str, list);
        return !listF.isEmpty() ? (String) listF.get(listF.size() - 1) : null;
    }

    public static List f(String str, List list) {
        p83 p83VarI = yq8.j().i();
        ac2 ac2VarE = yq8.j().e();
        HttpRequest httpRequest = new HttpRequest();
        httpRequest.setMethod(FirebasePerformance.HttpMethod.GET);
        httpRequest.setUrl(str);
        httpRequest.setMaxBodySize(0);
        if (list != null) {
            httpRequest.setHeaders(list);
        }
        if (ac2VarE != null) {
            httpRequest.setProxyGroup(ac2VarE.d());
        }
        httpRequest.setFollowRedirectBehavior(0);
        ArrayList arrayList = new ArrayList();
        while (true) {
            httpRequest.setUrl(str);
            try {
                a93 a93VarA = p83VarI.a(httpRequest);
                String strC = hf8.c(a93VarA.d("Location"));
                if (strC != null) {
                    arrayList.add(strC);
                }
                if (a93VarA.h() < 300 || a93VarA.h() > 303 || strC == null) {
                    break;
                    break;
                    break;
                }
                str = strC;
            } catch (IOException unused) {
            }
        }
        return arrayList;
    }

    public static a93 g(String str, Map map, SiteExtractLog siteExtractLog) {
        return h(str, map, null, siteExtractLog);
    }

    public static a93 h(String str, Map map, String str2, SiteExtractLog siteExtractLog) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        eh ehVar = new eh();
        HttpRequest httpRequest = new HttpRequest();
        httpRequest.setMaxBodySize(4194304);
        if (str2 != null) {
            httpRequest.setMethod(FirebasePerformance.HttpMethod.POST);
            httpRequest.setData(str2);
        } else {
            httpRequest.setMethod(FirebasePerformance.HttpMethod.GET);
        }
        httpRequest.setUrl(str);
        if (map != null) {
            ArrayList arrayList = new ArrayList();
            for (Map.Entry entry : map.entrySet()) {
                arrayList.add(new HttpHeader((String) entry.getKey(), (String) entry.getValue()));
            }
            httpRequest.setHeaders(arrayList);
        }
        a93 a93VarA = ehVar.a(httpRequest);
        if (siteExtractLog != null) {
            siteExtractLog.putInfo(SiteExtractLog.INFO_HTTP_CODE, Integer.valueOf(a93VarA.h()));
        }
        return a93VarA;
    }

    public static String i(PageContext pageContext, String str, SiteExtractLog siteExtractLog) {
        String strJ = pageContext == null ? null : pageContext.j();
        if (TextUtils.isEmpty(strJ)) {
            return null;
        }
        HashMap map = new HashMap();
        String strI = pageContext.i(SiteExtractLog.INFO_COOKIE);
        if (TextUtils.isEmpty(strI)) {
            strI = b(strJ);
        }
        if (!TextUtils.isEmpty(strI)) {
            map.put(HttpHeader.KEY_COOKIE, strI);
        }
        if (TextUtils.isEmpty(str)) {
            str = pageContext.i("userAgent");
        }
        if (!TextUtils.isEmpty(str)) {
            map.put("User-Agent", str);
        }
        String strI2 = pageContext.i("accept");
        if (!TextUtils.isEmpty(strI2)) {
            map.put("sec-fetch-site", "none");
            map.put("sec-fetch-user", "?1");
            map.put("sec-fetch-mode", "navigate");
            map.put(HttpHeader.KEY_ACCEPT, strI2);
        }
        if (siteExtractLog != null) {
            siteExtractLog.putInfo("head", map);
        }
        return m(pageContext.j(), map, siteExtractLog);
    }

    public static String j(String str, String str2) {
        return k(str, str2, null, null);
    }

    public static String k(String str, String str2, String str3, SiteExtractLog siteExtractLog) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        HashMap map = new HashMap();
        if (!TextUtils.isEmpty(str2)) {
            map.put("User-Agent", str2);
        }
        if (!TextUtils.isEmpty(str3)) {
            map.put(HttpHeader.KEY_COOKIE, str3);
        }
        return m(str, map, siteExtractLog);
    }

    public static String l(String str, Map map) {
        return m(str, map, null);
    }

    public static String m(String str, Map map, SiteExtractLog siteExtractLog) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        a93 a93VarG = g(str, map, siteExtractLog);
        return a93VarG != null ? a93VarG.j() : null;
    }
}
