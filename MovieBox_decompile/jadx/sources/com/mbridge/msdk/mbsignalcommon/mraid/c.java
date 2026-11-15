package com.mbridge.msdk.mbsignalcommon.mraid;

import android.net.Uri;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.i0;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

public class c {

    private static volatile ConcurrentHashMap<String, String> f35674a = new ConcurrentHashMap<>();

    private static ArrayList<String> f35675b = new ArrayList<>();

    public static com.mbridge.msdk.mbsignalcommon.windvane.a a(WindVaneWebView windVaneWebView, String str) {
        Uri uri = Uri.parse(str);
        String scheme = uri.getScheme();
        if (TextUtils.isEmpty(scheme) || !scheme.contains(CampaignEx.JSON_KEY_MRAID)) {
            return null;
        }
        com.mbridge.msdk.mbsignalcommon.windvane.a aVar = new com.mbridge.msdk.mbsignalcommon.windvane.a();
        aVar.f35711d = i0.a("n+ztLkxpVTzBLkxgHN==");
        aVar.f35712e = uri.getHost();
        if (f35675b.size() == 0) {
            a();
        }
        if (!f35675b.contains(aVar.f35712e) && windVaneWebView != null) {
            a(windVaneWebView.getCampaignId(), aVar.f35712e);
            a.a().b(windVaneWebView, aVar.f35712e);
            a.a().a(windVaneWebView, aVar.f35712e, "Specified command is not implemented");
            return null;
        }
        Set<String> setA = a(uri);
        try {
            JSONObject jSONObject = new JSONObject();
            for (String str2 : setA) {
                jSONObject.put(str2, uri.getQueryParameter(str2));
            }
            aVar.f35713f = jSONObject.toString();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return aVar;
    }

    public static String b(String str) {
        if (f35674a.containsKey(str)) {
            return f35674a.get(str);
        }
        return null;
    }

    private static Set<String> a(Uri uri) {
        String encodedQuery = uri.getEncodedQuery();
        if (encodedQuery == null) {
            return Collections.emptySet();
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        int i10 = 0;
        do {
            int iIndexOf = encodedQuery.indexOf(38, i10);
            if (iIndexOf == -1) {
                iIndexOf = encodedQuery.length();
            }
            int iIndexOf2 = encodedQuery.indexOf(61, i10);
            if (iIndexOf2 > iIndexOf || iIndexOf2 == -1) {
                iIndexOf2 = iIndexOf;
            }
            linkedHashSet.add(Uri.decode(encodedQuery.substring(i10, iIndexOf2)));
            i10 = iIndexOf + 1;
        } while (i10 < encodedQuery.length());
        return Collections.unmodifiableSet(linkedHashSet);
    }

    private static void a() {
        for (Method method : b.class.getDeclaredMethods()) {
            f35675b.add(method.getName());
        }
    }

    private static void a(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (f35674a.containsKey(str)) {
            String strConcat = f35674a.get(str);
            if (TextUtils.isEmpty(str2) || strConcat.contains(str2)) {
                return;
            }
            if (strConcat.length() > 0) {
                strConcat = strConcat.concat(",");
            }
            f35674a.put(str, strConcat.concat(str2));
            return;
        }
        f35674a.put(str, str2);
    }

    public static void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        f35674a.remove(str);
    }
}
