package com.mgtv.data.aphone.b;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.browser.trusted.sharing.ShareTarget;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.webkit.ProxyConfig;
import com.hunantv.imgo.util.b;
import com.mgtv.data.aphone.core.bean.CommonParamsBean;
import com.mgtv.data.aphone.core.bean.EventBean;
import com.mgtv.data.aphone.core.constants.EventContants;
import com.mgtv.data.aphone.core.j.c;
import com.mgtv.data.aphone.core.j.e;
import com.mgtv.data.aphone.core.j.f;
import com.mgtv.data.aphone.core.j.g;
import com.mgtv.data.aphone.core.j.h;
import com.mgtv.data.aphone.core.j.i;
import com.mgtv.data.aphone.core.j.j;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import java.io.DataOutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSession;
import org.json.JSONObject;

public class a {
    public static short a = 5000;
    public static short b = 5000;
    public static String c = null;
    public static String d = null;
    public static String e = null;
    public static String f = null;
    public static String g = null;
    public static String h = null;
    public static String i = "";
    private static final String j = "a";
    private static Context k;
    private static Map<String, String> l;
    private static Map<String, String> m;
    private static Map<String, String> n;
    private static a o;

    public static class C0175a implements HostnameVerifier {
        private C0175a() {
        }

        @Override
        public boolean verify(String str, SSLSession sSLSession) {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            return str.contains("mgtv") || str.contains("hunantv");
        }
    }

    public a() {
    }

    private boolean a(int i2) {
        return i2 < 200 || i2 >= 400;
    }

    private synchronized com.mgtv.data.aphone.b.b.a c(String str, String str2, String str3, HashMap<String, String> map) {
        com.mgtv.data.aphone.b.b.a aVar;
        int responseCode;
        try {
            aVar = new com.mgtv.data.aphone.b.b.a();
            String strA = "";
            try {
                JSONObject jSONObject = new JSONObject(map);
                String strG = b.G();
                String strA2 = a(str2, jSONObject.toString());
                byte[] bytes = strA2.getBytes("UTF-8");
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                httpURLConnection.setConnectTimeout(a);
                httpURLConnection.setReadTimeout(b);
                httpURLConnection.setUseCaches(false);
                httpURLConnection.setDoOutput(true);
                httpURLConnection.setDoInput(true);
                httpURLConnection.setRequestMethod("POST");
                httpURLConnection.setFixedLengthStreamingMode(strA2.getBytes("UTF-8").length);
                httpURLConnection.setRequestProperty("Content-Type", "application/json");
                httpURLConnection.addRequestProperty("User-Agent", strG);
                httpURLConnection.connect();
                DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
                dataOutputStream.write(bytes);
                dataOutputStream.flush();
                dataOutputStream.close();
                responseCode = httpURLConnection.getResponseCode();
                try {
                    if (httpURLConnection.getResponseCode() == 200) {
                        strA = j.a(httpURLConnection.getInputStream());
                        c.b("big_data_sdk", "####################  上报成功  initPostHttp  Url:" + str + "   参数：" + strA2);
                    } else if (a(httpURLConnection.getResponseCode())) {
                        c.b("big_data_sdk", "####################  上报失败  initPostHttp  httpStatus: " + httpURLConnection.getResponseCode() + "   Url:" + str + "   参数：" + strA2);
                        if (!EventContants.EventType.EVENT_APPLS.getEventId().equals(str2) && !EventContants.EventType.EVENT_PHONEWIFI.getEventId().equals(str2)) {
                            a(str, "POST", str2, str3, strA2, responseCode, (HashMap<String, String>) null);
                        }
                    }
                    httpURLConnection.disconnect();
                } catch (Exception e2) {
                    e = e2;
                    c.b("big_data_sdk", "####################  initPostHttp  catch: " + e.toString());
                    aVar.b = -1;
                    aVar.c = e.getMessage();
                }
            } catch (Exception e3) {
                e = e3;
                responseCode = 0;
            }
            int i2 = responseCode;
            if (i2 == 200) {
                aVar.b = 0;
                aVar.a = i2;
                if (!i.a(strA)) {
                    aVar.d = strA;
                }
                aVar.c = "请求成功";
            } else {
                aVar.b = -1;
                aVar.a = i2;
                aVar.c = "请求失败";
                aVar.d = strA;
            }
        } catch (Throwable th) {
            throw th;
        }
        return aVar;
    }

    private synchronized com.mgtv.data.aphone.b.b.a d(String str, String str2, String str3, HashMap<String, String> map) {
        com.mgtv.data.aphone.b.b.a aVar;
        int responseCode;
        try {
            aVar = new com.mgtv.data.aphone.b.b.a();
            String strA = "";
            try {
                map.put("_support", "10100001");
                JSONObject jSONObject = new JSONObject(map);
                String strG = b.G();
                String strA2 = a(str2, jSONObject.toString());
                byte[] bytes = strA2.getBytes("UTF-8");
                HttpsURLConnection httpsURLConnection = (HttpsURLConnection) new URL(str).openConnection();
                httpsURLConnection.setHostnameVerifier(new C0175a());
                httpsURLConnection.setConnectTimeout(25000);
                httpsURLConnection.setReadTimeout(25000);
                httpsURLConnection.setUseCaches(false);
                httpsURLConnection.setDoOutput(true);
                httpsURLConnection.setDoInput(true);
                httpsURLConnection.setRequestMethod("POST");
                httpsURLConnection.setFixedLengthStreamingMode(strA2.getBytes("UTF-8").length);
                httpsURLConnection.setRequestProperty("Content-Type", "application/json");
                httpsURLConnection.addRequestProperty("User-Agent", strG);
                httpsURLConnection.connect();
                DataOutputStream dataOutputStream = new DataOutputStream(httpsURLConnection.getOutputStream());
                dataOutputStream.write(bytes);
                dataOutputStream.flush();
                dataOutputStream.close();
                responseCode = httpsURLConnection.getResponseCode();
                try {
                    if (httpsURLConnection.getResponseCode() == 200) {
                        strA = j.a(httpsURLConnection.getInputStream());
                        c.b("big_data_sdk", "####################  上报成功  initPostHttps  Url:" + str + "   参数：" + strA2);
                    } else if (a(httpsURLConnection.getResponseCode())) {
                        c.b("big_data_sdk", "####################  上报失败  initPostHttps  httpStatus: " + httpsURLConnection.getResponseCode() + "   Url:" + str + "   参数：" + strA2);
                        if (!EventContants.EventType.EVENT_APPLS.getEventId().equals(str2) && !EventContants.EventType.EVENT_PHONEWIFI.getEventId().equals(str2)) {
                            a(str, "POST", str2, str3, strA2, responseCode, (HashMap<String, String>) null);
                        }
                    }
                    httpsURLConnection.disconnect();
                } catch (Exception e2) {
                    e = e2;
                    c.b("big_data_sdk", "####################  initPostHttps  catch: " + e.toString());
                    aVar.b = -1;
                    aVar.c = e.getMessage();
                }
            } catch (Exception e3) {
                e = e3;
                responseCode = 0;
            }
            int i2 = responseCode;
            if (i2 == 200) {
                aVar.b = 0;
                aVar.a = i2;
                if (!i.a(strA)) {
                    aVar.d = strA;
                }
                aVar.c = "请求成功";
            } else {
                aVar.b = -1;
                aVar.a = i2;
                aVar.c = "请求失败";
                aVar.d = strA;
            }
        } catch (Throwable th) {
            throw th;
        }
        return aVar;
    }

    public synchronized com.mgtv.data.aphone.b.b.a b(String str, String str2, String str3, HashMap<String, String> map) {
        try {
        } catch (Throwable th) {
            throw th;
        }
        return a(str) ? d(str, str2, str3, map) : c(str, str2, str3, map);
    }

    public a(Context context) {
        l = new HashMap();
        m = new HashMap();
        n = new HashMap();
        if (k == null) {
            k = context.getApplicationContext();
        }
    }

    public static a a(Context context) {
        if (o == null) {
            synchronized (a.class) {
                try {
                    if (o == null) {
                        o = new a(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return o;
    }

    private synchronized Map<String, String> b(Map<String, String> map) {
        HashMap map2;
        try {
            map2 = new HashMap();
            if (map != null) {
                try {
                    if (!map.isEmpty()) {
                        for (Map.Entry<String, String> entry : map.entrySet()) {
                            String key = entry.getKey();
                            String value = entry.getValue();
                            map2.put(Uri.encode(key), value != null ? Uri.encode(value) : null);
                        }
                    }
                } catch (Exception e2) {
                    c.b("big_data_sdk", "####################  encodeMap()   e.toString():" + e2.toString());
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return map2;
    }

    public void a(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        c = str;
        d = str2;
        e = str3;
        i = str4;
        f = str5;
        g = str6;
        h = str7;
        a(l, DownloadFacadeEnum.USER_GUID, str);
        a(l, "sid", str2);
        a(l, DownloadFacadeEnum.USER_CH, str3);
        a(l, "uuid", str5);
        a(l, "runsid", str7);
        a(l, "p2p", str4);
    }

    @NonNull
    private static synchronized String b(String str, String str2, String str3) {
        return str + '?' + str2 + str3;
    }

    private synchronized com.mgtv.data.aphone.b.b.a b(String str, HashMap<String, String> map) {
        com.mgtv.data.aphone.b.b.a aVar;
        int responseCode;
        try {
            aVar = new com.mgtv.data.aphone.b.b.a();
            String strA = "";
            try {
                String strG = b.G();
                String strA2 = a(str + "?_support=10100001", b(map));
                c.b("big_data_sdk", "####################  initGetHttps  Url:" + strA2 + "   encodeMap:" + b(map));
                HttpsURLConnection httpsURLConnection = (HttpsURLConnection) new URL(strA2).openConnection();
                httpsURLConnection.setHostnameVerifier(new C0175a());
                httpsURLConnection.setConnectTimeout(25000);
                httpsURLConnection.setReadTimeout(25000);
                httpsURLConnection.setDoOutput(false);
                httpsURLConnection.setUseCaches(true);
                httpsURLConnection.setRequestMethod(ShareTarget.METHOD_GET);
                httpsURLConnection.addRequestProperty("Connection", "Keep-Alive");
                httpsURLConnection.addRequestProperty("User-Agent", strG);
                httpsURLConnection.connect();
                responseCode = httpsURLConnection.getResponseCode();
                try {
                    c.b("big_data_sdk", "####################  initGetHttps   Url:" + str + "   httpStatus:" + responseCode);
                    if (responseCode == 200) {
                        strA = j.a(httpsURLConnection.getInputStream());
                        c.b("big_data_sdk", "####################  上报成功  initGetHttps  Url:" + str + "   参数：" + strA2);
                    } else if (a(httpsURLConnection.getResponseCode())) {
                        c.b("big_data_sdk", "####################  上报失败  initGetHttps  httpStatus: " + responseCode + "  Url:" + str + "   参数：" + strA2);
                    }
                    httpsURLConnection.disconnect();
                } catch (Exception e2) {
                    e = e2;
                    Log.e("big_data_sdk", e.toString());
                    aVar.b = -1;
                    aVar.c = e.getMessage();
                    c.b("big_data_sdk", "################  initGetHttps  catch  url： " + str + "  method: " + ShareTarget.METHOD_GET + "   e.toString(): " + e.toString());
                    e.printStackTrace();
                }
            } catch (Exception e3) {
                e = e3;
                responseCode = 0;
            }
            if (responseCode == 200) {
                aVar.b = 0;
                aVar.a = responseCode;
                if (!i.a(strA)) {
                    aVar.d = strA;
                }
                aVar.c = "请求成功";
            } else {
                aVar.b = -1;
                aVar.a = responseCode;
                aVar.c = "请求失败";
                aVar.d = strA;
            }
        } catch (Throwable th) {
            throw th;
        }
        return aVar;
    }

    public static Map<String, String> a() {
        a(l, DownloadFacadeEnum.USER_ISDEBUG, f.a());
        a(l, DownloadFacadeEnum.USER_DID, b.t());
        a(l, "time", e.b(System.currentTimeMillis()));
        a(l, DownloadFacadeEnum.USER_NET, g.b(k));
        a(l, DownloadFacadeEnum.USER_MF, f.d());
        a(l, DownloadFacadeEnum.USER_MOD, f.c());
        a(l, DownloadFacadeEnum.USER_SVER, b.r());
        a(l, "bdsv", f.b());
        a(l, DownloadFacadeEnum.USER_AVER, b.g());
        a(l, "patver", b.getVersionNameWithPatchinfo());
        a(l, "rdc", !i.a(CommonParamsBean.c) ? CommonParamsBean.c : "");
        a(l, "rch", i.a(CommonParamsBean.d) ? "" : CommonParamsBean.d);
        a(l, "runsid", com.mgtv.data.aphone.core.f.a.c().a());
        a(l, "uuid", b.n());
        a(l, "src", b.N());
        a(l, DownloadFacadeEnum.USER_MAC, b.v());
        a(l, "abroad", com.hunantv.imgo.b.a.b().equals("-1") ? "0" : com.hunantv.imgo.b.a.b());
        a(l, "p2p", i);
        return l;
    }

    public static synchronized Map<String, String> a(Map<String, String> map) {
        for (int i2 = 0; i2 < map.size(); i2++) {
            try {
                if (map.containsKey("t")) {
                    map.remove("t");
                }
                if (map.containsKey(CmcdData.OBJECT_TYPE_MUXED_AUDIO_AND_VIDEO)) {
                    map.remove(CmcdData.OBJECT_TYPE_MUXED_AUDIO_AND_VIDEO);
                }
                if (map.containsKey("sv")) {
                    map.remove("sv");
                }
                if (map.containsKey("nt")) {
                    map.remove("nt");
                }
                if (map.containsKey("md")) {
                    map.remove("md");
                }
                if (map.containsKey("tst")) {
                    map.remove("tst");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return map;
    }

    private static synchronized String c(@NonNull String str, String str2, String str3) {
        StringBuilder sb;
        try {
            sb = new StringBuilder(str);
            if (!str.endsWith("&") && !str.endsWith("?")) {
                sb.append('&');
            }
            sb.append(str2);
            sb.append(str3);
        } catch (Throwable th) {
            throw th;
        }
        return sb.toString();
    }

    public static void a(Map<String, String> map, String str, String str2) {
        if (map == null || TextUtils.isEmpty(str)) {
            return;
        }
        if (!TextUtils.isEmpty(str2)) {
            map.put(str, str2);
        } else {
            map.put(str, "");
        }
    }

    public synchronized com.mgtv.data.aphone.b.b.a a(String str, String str2, String str3, String str4, HashMap<String, String> map) throws UnsupportedEncodingException {
        c.b("big_data_sdk", "####################  getResponse  Url:" + str + "   参数：" + map);
        if (str4.equals(ShareTarget.METHOD_GET)) {
            return a(str, str2, str3, map);
        }
        if (!str4.equals("POST")) {
            return null;
        }
        return b(str, str2, str3, map);
    }

    public synchronized com.mgtv.data.aphone.b.b.a a(String str, String str2, String str3, HashMap<String, String> map) {
        com.mgtv.data.aphone.b.b.a aVarA;
        try {
            c.b("big_data_sdk", "####################  requestGet  Url:" + str + "   参数：" + map);
            if (a(str)) {
                aVarA = b(str, map);
            } else {
                aVarA = a(str, map);
            }
        } catch (Throwable th) {
            throw th;
        }
        return aVarA;
    }

    private synchronized com.mgtv.data.aphone.b.b.a a(String str, HashMap<String, String> map) {
        com.mgtv.data.aphone.b.b.a aVar;
        int responseCode;
        try {
            aVar = new com.mgtv.data.aphone.b.b.a();
            String strA = "";
            try {
                String strG = b.G();
                String strA2 = a(str + "?_support=10100001", b(map));
                c.b("big_data_sdk", "####################  initGetHttp  Url:" + strA2 + "   encodeMap:" + b(map));
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(strA2).openConnection();
                httpURLConnection.setConnectTimeout(a);
                httpURLConnection.setReadTimeout(b);
                httpURLConnection.setDoOutput(false);
                httpURLConnection.setUseCaches(true);
                httpURLConnection.setRequestMethod(ShareTarget.METHOD_GET);
                httpURLConnection.addRequestProperty("Connection", "Keep-Alive");
                httpURLConnection.addRequestProperty("User-Agent", strG);
                httpURLConnection.connect();
                responseCode = httpURLConnection.getResponseCode();
                try {
                    c.b("big_data_sdk", "####################  initGetHttp   Url:" + str + "   httpStatus:" + responseCode);
                    if (responseCode == 200) {
                        strA = j.a(httpURLConnection.getInputStream());
                        c.b("big_data_sdk", "####################  上报成功  initGetHttp  Url:" + str + "   参数：" + strA2);
                    } else if (a(httpURLConnection.getResponseCode())) {
                        c.b("big_data_sdk", "####################  上报失败  initGetHttp  httpStatus: " + responseCode + "  Url:" + str + "   参数：" + strA2);
                    }
                    httpURLConnection.disconnect();
                } catch (Exception e2) {
                    e = e2;
                    Log.e("big_data_sdk", e.toString());
                    aVar.b = -1;
                    aVar.c = e.getMessage();
                    c.b("big_data_sdk", "################  initGetHttp  catch  url： " + str + "  method: " + ShareTarget.METHOD_GET + "   e.toString(): " + e.toString());
                    e.printStackTrace();
                }
            } catch (Exception e3) {
                e = e3;
                responseCode = 0;
            }
            if (responseCode == 200) {
                aVar.b = 0;
                aVar.a = responseCode;
                if (!i.a(strA)) {
                    aVar.d = strA;
                }
                aVar.c = "请求成功";
            } else {
                aVar.b = -1;
                aVar.a = responseCode;
                aVar.c = "请求失败";
                aVar.d = strA;
            }
        } catch (Throwable th) {
            throw th;
        }
        return aVar;
    }

    public synchronized com.mgtv.data.aphone.b.b.a a(String str, String str2, String str3, String str4) {
        com.mgtv.data.aphone.b.b.a aVar;
        int responseCode;
        try {
            aVar = new com.mgtv.data.aphone.b.b.a();
            String strA = "";
            try {
                byte[] bytes = str4.getBytes("UTF-8");
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                httpURLConnection.setConnectTimeout(a);
                httpURLConnection.setReadTimeout(b);
                httpURLConnection.setUseCaches(false);
                httpURLConnection.setDoOutput(true);
                httpURLConnection.setDoInput(true);
                httpURLConnection.setRequestMethod("POST");
                httpURLConnection.setFixedLengthStreamingMode(str4.getBytes("UTF-8").length);
                httpURLConnection.setRequestProperty("Content-Type", "application/json");
                httpURLConnection.connect();
                DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
                dataOutputStream.write(bytes);
                dataOutputStream.flush();
                dataOutputStream.close();
                responseCode = httpURLConnection.getResponseCode();
                try {
                    if (httpURLConnection.getResponseCode() == 200) {
                        strA = j.a(httpURLConnection.getInputStream());
                        c.b("big_data_sdk", "####################  上报成功    Url:" + str + "   参数：" + str4);
                    } else if (a(httpURLConnection.getResponseCode())) {
                        c.b("big_data_sdk", "####################  上报失败  httpStatus: " + httpURLConnection.getResponseCode() + "   Url:" + str + "   参数：" + str4);
                        if (!EventContants.EventType.EVENT_APPLS.getEventId().equals(str2) && !EventContants.EventType.EVENT_PHONEWIFI.getEventId().equals(str2)) {
                            a(str, "POST", str2, str3, str4, responseCode, (HashMap<String, String>) null);
                        }
                    }
                    httpURLConnection.disconnect();
                } catch (Exception e2) {
                    e = e2;
                    Log.e(j, e.toString());
                    aVar.b = -1;
                    aVar.c = e.getMessage();
                }
            } catch (Exception e3) {
                e = e3;
                responseCode = 0;
            }
            int i2 = responseCode;
            if (i2 == 200) {
                aVar.b = 0;
                aVar.a = i2;
                if (!i.a(strA)) {
                    aVar.d = strA;
                }
                aVar.c = "请求成功";
            } else {
                aVar.b = -1;
                aVar.a = i2;
                aVar.c = "请求失败";
                aVar.d = strA;
            }
        } catch (Throwable th) {
            throw th;
        }
        return aVar;
    }

    private void a(String str, String str2, String str3, String str4, String str5, int i2, HashMap<String, String> map) {
        if (f.e() > 100) {
            EventBean eventBean = new EventBean();
            eventBean.create_time = e.a(System.currentTimeMillis());
            eventBean.eventId = str3;
            eventBean.bid = str4;
            eventBean.url = str;
            eventBean.method = str2;
            if (str2.equals(ShareTarget.METHOD_GET)) {
                eventBean.params = new JSONObject(map).toString();
            } else {
                eventBean.params = str5;
            }
            eventBean.status = i2;
            h.a(k, eventBean, com.mgtv.data.aphone.core.db.a.b);
        }
    }

    public synchronized String a(String str, @Nullable Map<String, String> map) {
        if (map != null) {
            try {
                if (!map.isEmpty()) {
                    for (Map.Entry<String, String> entry : map.entrySet()) {
                        str = a(str, entry.getKey(), entry.getValue());
                    }
                }
            } catch (Exception e2) {
                c.b("big_data_sdk", "####################  addParams()   e.toString():" + e2.toString());
            }
        }
        return str;
    }

    public synchronized String a(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        String[] strArr = new String[1];
        String strA = a(str, strArr);
        String str4 = str2 + '=';
        int iIndexOf = strA.indexOf(63);
        if (iIndexOf < 0) {
            return b(strA, str4, str3) + strArr[0];
        }
        int iIndexOf2 = strA.indexOf('&' + str4, iIndexOf);
        if (iIndexOf2 == -1) {
            iIndexOf2 = strA.indexOf('?' + str4, iIndexOf);
        }
        if (iIndexOf2 != -1) {
            return a(strA, str3, iIndexOf2 + 1 + str4.length()) + strArr[0];
        }
        return c(strA, str4, str3) + strArr[0];
    }

    @NonNull
    private static String a(@NonNull String str, @Nullable String[] strArr) {
        int iIndexOf = str.indexOf(35);
        if (iIndexOf < 0) {
            if (strArr != null) {
                strArr[0] = "";
            }
            return str;
        }
        if (strArr != null) {
            strArr[0] = str.substring(iIndexOf);
        }
        return str.substring(0, iIndexOf);
    }

    private static synchronized String a(@NonNull String str, String str2, int i2) {
        StringBuilder sb;
        try {
            int iIndexOf = str.indexOf(38, i2);
            if (iIndexOf == -1) {
                iIndexOf = str.length();
            }
            sb = new StringBuilder(str);
            sb.replace(i2, iIndexOf, str2);
        } catch (Throwable th) {
            throw th;
        }
        return sb.toString();
    }

    private String a(String str, String str2) {
        if (!str.equals(EventContants.EventType.EVENT_APPLS.getEventId()) && !str.equals(EventContants.EventType.EVENT_PHONEWIFI.getEventId()) && !str.equals(EventContants.EventType.EVENT_OFLHB.getEventId())) {
            return str2.toString();
        }
        return str2.toString().replace("\\", "").replace("\"[", "[").replace("]\"", "]");
    }

    private static boolean a(String str) {
        return str.startsWith(ProxyConfig.MATCH_HTTPS);
    }
}
