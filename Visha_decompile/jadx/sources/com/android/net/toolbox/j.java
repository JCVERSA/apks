package com.android.net.toolbox;

import androidx.browser.trusted.sharing.ShareTarget;
import androidx.webkit.ProxyConfig;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;

public final class j extends b {
    private final a a;
    private final SSLSocketFactory b;

    public interface a {
        String a();
    }

    public j() {
        this((byte) 0);
    }

    /* JADX WARN: Code duplicated, block: B:38:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:40:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:52:0x0102  */
    @Override
    public final h a(com.android.net.n<?> nVar, Map<String, String> map) throws IOException {
        String str;
        String str2;
        int responseCode;
        SSLSocketFactory sSLSocketFactory;
        String str3 = nVar.b;
        HashMap map2 = new HashMap();
        map2.putAll(nVar.c());
        map2.putAll(map);
        a aVar = this.a;
        if (aVar != null) {
            String strA = aVar.a();
            if (strA == null) {
                throw new IOException("URL blocked by rewriter: ".concat(String.valueOf(str3)));
            }
            str3 = strA;
        }
        URL url = new URL(str3);
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setInstanceFollowRedirects(HttpURLConnection.getFollowRedirects());
        int iJ = nVar.j();
        httpURLConnection.setConnectTimeout(iJ);
        httpURLConnection.setReadTimeout(iJ);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setDoInput(true);
        if (ProxyConfig.MATCH_HTTPS.equals(url.getProtocol()) && (sSLSocketFactory = this.b) != null) {
            ((HttpsURLConnection) httpURLConnection).setSSLSocketFactory(sSLSocketFactory);
        }
        for (String str4 : map2.keySet()) {
            httpURLConnection.addRequestProperty(str4, (String) map2.get(str4));
        }
        switch (nVar.a) {
            case -1:
                byte[] bArrE = nVar.e();
                if (bArrE != null) {
                    httpURLConnection.setRequestMethod("POST");
                    a(httpURLConnection, nVar, bArrE);
                }
                responseCode = httpURLConnection.getResponseCode();
                if (responseCode != -1) {
                    return (nVar.a != 4 || (100 <= responseCode && responseCode < 200) || responseCode == 204 || responseCode == 304) ? new h(responseCode, a(httpURLConnection.getHeaderFields())) : new h(responseCode, a(httpURLConnection.getHeaderFields()), httpURLConnection.getContentLength(), a(httpURLConnection));
                }
                throw new IOException("Could not retrieve response code from HttpUrlConnection.");
            case 0:
                str = ShareTarget.METHOD_GET;
                httpURLConnection.setRequestMethod(str);
                responseCode = httpURLConnection.getResponseCode();
                if (responseCode != -1) {
                    throw new IOException("Could not retrieve response code from HttpUrlConnection.");
                }
                if (nVar.a != 4) {
                }
                break;
            case 1:
                httpURLConnection.setRequestMethod("POST");
                a(httpURLConnection, nVar);
                responseCode = httpURLConnection.getResponseCode();
                if (responseCode != -1) {
                    throw new IOException("Could not retrieve response code from HttpUrlConnection.");
                }
                if (nVar.a != 4) {
                }
                break;
            case 2:
                str2 = "PUT";
                httpURLConnection.setRequestMethod(str2);
                a(httpURLConnection, nVar);
                responseCode = httpURLConnection.getResponseCode();
                if (responseCode != -1) {
                    throw new IOException("Could not retrieve response code from HttpUrlConnection.");
                }
                if (nVar.a != 4) {
                }
                break;
            case 3:
                str = "DELETE";
                httpURLConnection.setRequestMethod(str);
                responseCode = httpURLConnection.getResponseCode();
                if (responseCode != -1) {
                    throw new IOException("Could not retrieve response code from HttpUrlConnection.");
                }
                if (nVar.a != 4) {
                }
                break;
            case 4:
                str = "HEAD";
                httpURLConnection.setRequestMethod(str);
                responseCode = httpURLConnection.getResponseCode();
                if (responseCode != -1) {
                    throw new IOException("Could not retrieve response code from HttpUrlConnection.");
                }
                if (nVar.a != 4) {
                }
                break;
            case 5:
                str = "OPTIONS";
                httpURLConnection.setRequestMethod(str);
                responseCode = httpURLConnection.getResponseCode();
                if (responseCode != -1) {
                    throw new IOException("Could not retrieve response code from HttpUrlConnection.");
                }
                if (nVar.a != 4) {
                }
                break;
            case 6:
                str = "TRACE";
                httpURLConnection.setRequestMethod(str);
                responseCode = httpURLConnection.getResponseCode();
                if (responseCode != -1) {
                    throw new IOException("Could not retrieve response code from HttpUrlConnection.");
                }
                if (nVar.a != 4) {
                }
                break;
            case 7:
                str2 = "PATCH";
                httpURLConnection.setRequestMethod(str2);
                a(httpURLConnection, nVar);
                responseCode = httpURLConnection.getResponseCode();
                if (responseCode != -1) {
                    throw new IOException("Could not retrieve response code from HttpUrlConnection.");
                }
                if (nVar.a != 4) {
                }
                break;
            default:
                throw new IllegalStateException("Unknown method type.");
        }
    }

    private j(byte b) {
        this((char) 0);
    }

    private static InputStream a(HttpURLConnection httpURLConnection) {
        try {
            return httpURLConnection.getInputStream();
        } catch (IOException unused) {
            return httpURLConnection.getErrorStream();
        }
    }

    private j(char c) {
        this.a = null;
        this.b = null;
    }

    private static List<com.android.net.g> a(Map<String, List<String>> map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            if (entry.getKey() != null) {
                Iterator<String> it = entry.getValue().iterator();
                while (it.hasNext()) {
                    arrayList.add(new com.android.net.g(entry.getKey(), it.next()));
                }
            }
        }
        return arrayList;
    }

    private static void a(HttpURLConnection httpURLConnection, com.android.net.n<?> nVar) throws IOException {
        byte[] bArrH = nVar.h();
        if (bArrH != null) {
            a(httpURLConnection, nVar, bArrH);
        }
    }

    private static void a(HttpURLConnection httpURLConnection, com.android.net.n<?> nVar, byte[] bArr) throws IOException {
        httpURLConnection.setDoOutput(true);
        httpURLConnection.addRequestProperty("Content-Type", nVar.g());
        DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
        dataOutputStream.write(bArr);
        dataOutputStream.close();
    }
}
