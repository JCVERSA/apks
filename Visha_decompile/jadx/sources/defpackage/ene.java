package defpackage;

import androidx.browser.trusted.sharing.ShareTarget;
import androidx.webkit.ProxyConfig;
import com.google.android.gms.internal.ads.c;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.net.ssl.SSLSocketFactory;

public final class ene extends pme {
    public ene(dne dneVar, SSLSocketFactory sSLSocketFactory) {
    }

    public static List b(Map map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry entry : map.entrySet()) {
            if (entry.getKey() != null) {
                Iterator it = ((List) entry.getValue()).iterator();
                while (it.hasNext()) {
                    arrayList.add(new dme((String) entry.getKey(), (String) it.next()));
                }
            }
        }
        return arrayList;
    }

    @Override
    public final bne a(c cVar, Map map) throws Throwable {
        String strZzk = cVar.zzk();
        HashMap map2 = new HashMap();
        map2.putAll(map);
        map2.putAll(cVar.zzl());
        URL url = new URL(strZzk);
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setInstanceFollowRedirects(HttpURLConnection.getFollowRedirects());
        int iZzb = cVar.zzb();
        httpURLConnection.setConnectTimeout(iZzb);
        httpURLConnection.setReadTimeout(iZzb);
        boolean z = false;
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setDoInput(true);
        ProxyConfig.MATCH_HTTPS.equals(url.getProtocol());
        try {
            for (String str : map2.keySet()) {
                httpURLConnection.setRequestProperty(str, (String) map2.get(str));
            }
            if (cVar.zza() != 0) {
                httpURLConnection.setRequestMethod("POST");
                byte[] bArrZzx = cVar.zzx();
                if (bArrZzx != null) {
                    httpURLConnection.setDoOutput(true);
                    if (!httpURLConnection.getRequestProperties().containsKey("Content-Type")) {
                        httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded; charset=UTF-8");
                    }
                    DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
                    dataOutputStream.write(bArrZzx);
                    dataOutputStream.close();
                }
            } else {
                httpURLConnection.setRequestMethod(ShareTarget.METHOD_GET);
            }
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode == -1) {
                throw new IOException("Could not retrieve response code from HttpUrlConnection.");
            }
            cVar.zza();
            if ((responseCode >= 100 && responseCode < 200) || responseCode == 204 || responseCode == 304) {
                bne bneVar = new bne(responseCode, b(httpURLConnection.getHeaderFields()), -1, null);
                httpURLConnection.disconnect();
                return bneVar;
            }
            try {
                return new bne(responseCode, b(httpURLConnection.getHeaderFields()), httpURLConnection.getContentLength(), new cne(httpURLConnection));
            } catch (Throwable th) {
                th = th;
                z = true;
                if (!z) {
                    httpURLConnection.disconnect();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
