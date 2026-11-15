package defpackage;

import android.content.Context;
import android.os.Build;
import android.security.NetworkSecurityPolicy;
import androidx.browser.trusted.sharing.ShareTarget;
import androidx.webkit.ProxyConfig;
import java.io.Closeable;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import mgtv.qt.c;
import mgtv.qt.e;
import org.apache.commons.io.IOUtils;
import org.json.JSONObject;

public class aqd {
    public static volatile aqd a;
    public static final HashMap b;

    static {
        HashMap map = new HashMap();
        b = map;
        Boolean bool = Boolean.FALSE;
        map.put("fd.qchannel03.cn", bool);
        map.put("fd2.qchannel03.cn", bool);
        map.put("a.qchannel03.cn", bool);
        map.put("d.qchannel03.cn", bool);
        map.put("log.qchannel03.cn", bool);
        map.put("truth.qchannel03.cn", bool);
    }

    public static sjd a(int i, HttpURLConnection httpURLConnection, yqd yqdVar) {
        sjd sjdVar = new sjd();
        InputStream errorStream = null;
        try {
            try {
                if (204 != i) {
                    if (i == 200) {
                        errorStream = httpURLConnection.getInputStream();
                        sjdVar = yqdVar.a(errorStream);
                    } else {
                        errorStream = httpURLConnection.getErrorStream();
                        sjdVar = new dtd().a(errorStream);
                    }
                }
                sjdVar.b(i);
                y4d.f(errorStream);
            } catch (Exception e) {
                e.printStackTrace();
                sjdVar.b(414);
                y4d.f(errorStream);
            }
            return sjdVar;
        } catch (Throwable th) {
            y4d.f(errorStream);
            throw th;
        }
    }

    public static sjd b(String str, JSONObject jSONObject, Map map, yqd yqdVar) throws Throwable {
        int i;
        HttpURLConnection httpURLConnectionF;
        DataOutputStream dataOutputStream;
        sjd sjdVar = new sjd();
        if (!c.c) {
            return sjdVar;
        }
        String string = UUID.randomUUID().toString();
        try {
            httpURLConnectionF = f(str);
            try {
                httpURLConnectionF.setReadTimeout(6000);
                httpURLConnectionF.setConnectTimeout(6000);
                httpURLConnectionF.setDoInput(true);
                httpURLConnectionF.setDoOutput(true);
                httpURLConnectionF.setUseCaches(false);
                httpURLConnectionF.setRequestMethod("POST");
                httpURLConnectionF.setRequestProperty("Connection", "Keep-Alive");
                httpURLConnectionF.setRequestProperty("Charset", "UTF-8");
                httpURLConnectionF.setRequestProperty("Content-Type", "multipart/form-data;boundary=".concat(String.valueOf(string)));
                dataOutputStream = new DataOutputStream(httpURLConnectionF.getOutputStream());
                if (jSONObject != null) {
                    try {
                        try {
                            StringBuilder sb = new StringBuilder();
                            Iterator<String> itKeys = jSONObject.keys();
                            while (itKeys.hasNext()) {
                                String next = itKeys.next();
                                String strOptString = jSONObject.optString(next);
                                sb.append("--");
                                sb.append(string);
                                sb.append(IOUtils.LINE_SEPARATOR_WINDOWS);
                                sb.append("Content-Disposition: form-data; name=\"" + next + "\"" + IOUtils.LINE_SEPARATOR_WINDOWS);
                                StringBuilder sb2 = new StringBuilder("Content-Type: text/plain; charset=");
                                sb2.append("UTF-8");
                                sb2.append(IOUtils.LINE_SEPARATOR_WINDOWS);
                                sb.append(sb2.toString());
                                sb.append("Content-Transfer-Encoding: 8bit".concat(IOUtils.LINE_SEPARATOR_WINDOWS));
                                sb.append(IOUtils.LINE_SEPARATOR_WINDOWS);
                                sb.append(strOptString);
                                sb.append(IOUtils.LINE_SEPARATOR_WINDOWS);
                            }
                            dataOutputStream.write(sb.toString().getBytes());
                        } catch (Exception e) {
                            e = e;
                            sjdVar.b(400);
                            sjdVar.d(e.getMessage());
                            y4d.f(dataOutputStream, null);
                            y4d.g(httpURLConnectionF);
                        }
                    } catch (Throwable th) {
                        th = th;
                        i = 2;
                        Closeable[] closeableArr = new Closeable[i];
                        closeableArr[0] = dataOutputStream;
                        closeableArr[1] = null;
                        y4d.f(closeableArr);
                        y4d.g(httpURLConnectionF);
                        throw th;
                    }
                }
                if (map != null) {
                    for (Map.Entry entry : map.entrySet()) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("--");
                        sb3.append(string);
                        sb3.append(IOUtils.LINE_SEPARATOR_WINDOWS);
                        sb3.append("Content-Disposition: form-data; name=\"file\"; filename=\"" + ((String) entry.getKey()) + "\"" + IOUtils.LINE_SEPARATOR_WINDOWS);
                        StringBuilder sb4 = new StringBuilder("Content-Type: application/octet-stream; charset=");
                        sb4.append("UTF-8");
                        sb4.append(IOUtils.LINE_SEPARATOR_WINDOWS);
                        sb3.append(sb4.toString());
                        sb3.append(IOUtils.LINE_SEPARATOR_WINDOWS);
                        dataOutputStream.write(sb3.toString().getBytes());
                        FileInputStream fileInputStream = new FileInputStream((File) entry.getValue());
                        byte[] bArr = new byte[1024];
                        while (true) {
                            int i2 = fileInputStream.read(bArr);
                            if (i2 != -1) {
                                dataOutputStream.write(bArr, 0, i2);
                            }
                        }
                        fileInputStream.close();
                        dataOutputStream.write(IOUtils.LINE_SEPARATOR_WINDOWS.getBytes());
                    }
                }
                dataOutputStream.write(("--" + string + "--" + IOUtils.LINE_SEPARATOR_WINDOWS).getBytes());
                dataOutputStream.flush();
                sjdVar = a(httpURLConnectionF.getResponseCode(), httpURLConnectionF, yqdVar);
                y4d.f(dataOutputStream, null);
                y4d.g(httpURLConnectionF);
            } catch (Exception e2) {
                e = e2;
                dataOutputStream = null;
                sjdVar.b(400);
                sjdVar.d(e.getMessage());
                y4d.f(dataOutputStream, null);
                y4d.g(httpURLConnectionF);
                return sjdVar;
            } catch (Throwable th2) {
                th = th2;
                i = 2;
                dataOutputStream = null;
                Closeable[] closeableArr2 = new Closeable[i];
                closeableArr2[0] = dataOutputStream;
                closeableArr2[1] = null;
                y4d.f(closeableArr2);
                y4d.g(httpURLConnectionF);
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            httpURLConnectionF = null;
        } catch (Throwable th3) {
            th = th3;
            i = 2;
            httpURLConnectionF = null;
        }
        return sjdVar;
    }

    public static sjd c(String str, yqd yqdVar) throws Throwable {
        sjd sjdVar = new sjd();
        if (!c.c) {
            return sjdVar;
        }
        HttpURLConnection httpURLConnection = null;
        try {
            try {
                HttpURLConnection httpURLConnectionF = f(str);
                try {
                    i(httpURLConnectionF, "get", null);
                    sjdVar = a(httpURLConnectionF.getResponseCode(), httpURLConnectionF, yqdVar);
                    y4d.g(httpURLConnectionF);
                } catch (Exception e) {
                    e = e;
                    httpURLConnection = httpURLConnectionF;
                    sjdVar.b(400);
                    sjdVar.d(e.getMessage());
                    y4d.g(httpURLConnection);
                } catch (Throwable th) {
                    th = th;
                    httpURLConnection = httpURLConnectionF;
                    y4d.g(httpURLConnection);
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
            }
            return sjdVar;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static sjd d(String str, byte[] bArr, yqd yqdVar) throws Throwable {
        HttpURLConnection httpURLConnectionF;
        sjd sjdVar = new sjd();
        if (!c.c) {
            return sjdVar;
        }
        try {
            httpURLConnectionF = f(str);
            try {
                try {
                    i(httpURLConnectionF, "post", bArr);
                    sjdVar = a(httpURLConnectionF.getResponseCode(), httpURLConnectionF, yqdVar);
                    y4d.f(null);
                    y4d.g(httpURLConnectionF);
                } catch (Exception e) {
                    e = e;
                    sjdVar.b(400);
                    sjdVar.d(e.getMessage());
                    y4d.f(null);
                    y4d.g(httpURLConnectionF);
                }
            } catch (Throwable th) {
                th = th;
                y4d.f(null);
                y4d.g(httpURLConnectionF);
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            httpURLConnectionF = null;
        } catch (Throwable th2) {
            th = th2;
            httpURLConnectionF = null;
            y4d.f(null);
            y4d.g(httpURLConnectionF);
            throw th;
        }
        return sjdVar;
    }

    public static StringBuffer e(JSONObject jSONObject) {
        StringBuffer stringBuffer = new StringBuffer();
        try {
            Iterator<String> itKeys = jSONObject.keys();
            boolean z = true;
            while (itKeys.hasNext()) {
                if (z) {
                    z = false;
                } else {
                    stringBuffer.append("&");
                }
                String next = itKeys.next();
                stringBuffer.append(next);
                stringBuffer.append("=");
                stringBuffer.append(URLEncoder.encode(jSONObject.optString(next), "UTF-8"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return stringBuffer;
    }

    public static HttpURLConnection f(String str) {
        HttpURLConnection httpURLConnection;
        Boolean bool;
        try {
            if (str.startsWith("http:") && !j(c.j)) {
                str = str.replace("http:", "https:");
            }
            URL url = new URL(str);
            String host = url.getHost();
            if (ProxyConfig.MATCH_HTTPS.equalsIgnoreCase(url.getProtocol())) {
                HashMap map = b;
                if ((!map.containsKey(host) || (bool = (Boolean) map.get(host)) == null) ? true : bool.booleanValue()) {
                    httpURLConnection = (HttpsURLConnection) url.openConnection();
                } else {
                    SSLContext sSLContext = SSLContext.getInstance("TLS");
                    sSLContext.init(null, new TrustManager[]{new cud(host)}, null);
                    SSLSocketFactory socketFactory = sSLContext.getSocketFactory();
                    HttpsURLConnection httpsURLConnection = (HttpsURLConnection) url.openConnection();
                    httpsURLConnection.setSSLSocketFactory(socketFactory);
                    httpsURLConnection.setHostnameVerifier(new vud());
                    httpURLConnection = httpsURLConnection;
                }
            } else {
                httpURLConnection = (HttpURLConnection) url.openConnection();
            }
            h(httpURLConnection);
            return httpURLConnection;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static aqd g() {
        if (a == null) {
            synchronized (aqd.class) {
                try {
                    if (a == null) {
                        a = new aqd();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return a;
    }

    public static void h(HttpURLConnection httpURLConnection) {
        String str;
        String strR;
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(hld.I());
            httpURLConnection.setRequestProperty("sts", sb.toString());
            httpURLConnection.setRequestProperty("osv", hld.u());
            httpURLConnection.setRequestProperty("osn", y4d.a());
            httpURLConnection.setRequestProperty("osm", hld.q());
            httpURLConnection.setRequestProperty("osb", hld.s());
            httpURLConnection.setRequestProperty("hw", hld.z(c.j));
            httpURLConnection.setRequestProperty("osc", hld.m());
            String strG = c.g();
            e eVar = c.a;
            if (eVar != null) {
                String strO = eVar.o();
                strR = eVar.r();
                str = strO;
            } else {
                str = "-";
                strR = str;
            }
            String[] strArr = {tid.a(), Build.MODEL, strG, "20250401", str, strR, "-"};
            StringBuilder sb2 = new StringBuilder();
            for (int i = 0; i < 7; i++) {
                sb2.append(strArr[i]);
                if (i != 6) {
                    sb2.append("\t");
                }
            }
            httpURLConnection.setRequestProperty("quae", "1");
            httpURLConnection.setRequestProperty("User-Agent", y4d.m(sb2.toString()));
            httpURLConnection.setRequestProperty("ssslv", "ys");
        } catch (Throwable unused) {
            httpURLConnection.setRequestProperty("ssslv", "ys");
        }
    }

    public static void i(HttpURLConnection httpURLConnection, String str, byte[] bArr) throws ProtocolException {
        httpURLConnection.setReadTimeout(6000);
        httpURLConnection.setConnectTimeout(6000);
        if (str.toUpperCase().equals("POST")) {
            httpURLConnection.setDoInput(true);
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setRequestProperty("Content-Type", ShareTarget.ENCODING_TYPE_URL_ENCODED);
            httpURLConnection.setRequestProperty("Content-Length", String.valueOf(bArr.length));
            OutputStream outputStream = null;
            try {
                try {
                    outputStream = httpURLConnection.getOutputStream();
                    outputStream.write(bArr);
                    outputStream.flush();
                    y4d.f(outputStream);
                } catch (IOException e) {
                    e.printStackTrace();
                    y4d.f(outputStream);
                }
            } catch (Throwable th) {
                y4d.f(outputStream);
                throw th;
            }
        }
    }

    public static boolean j(Context context) {
        if (context == null) {
            return false;
        }
        try {
            if (context.getApplicationInfo().targetSdkVersion < 27) {
                return true;
            }
            return NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted();
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }
}
