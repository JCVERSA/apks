package p002OooO0Oo;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import androidx.browser.trusted.sharing.ShareTarget;
import com.hisavana.common.constant.ComConstants;
import com.hisavana.common.tracking.TrackingKey;
import com.transsion.gslb.GslbSdk;
import com.transsion.livecaption.constant.ICode;
import com.transsion.palmsdk.exception.PalmServerException;
import com.transsion.sniffer_load.sniffservice.SniffTiktokUtil;
import defpackage.bw7;
import defpackage.rj7;
import defpackage.vj7;
import defpackage.xj7;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import org.json.JSONObject;

public class OooO0o {
    public static OooO0o b;
    public static SSLSocketFactory c;
    public final int a = bw7.a;

    public class OooO00o implements Runnable {
        public final Map OooO00o;
        public final String OooO0O0;

        public final Map f5OooO0OO;

        public final rj7 f6OooO0Oo;

        public OooO00o(Map map, String str, Map map2, rj7 rj7Var) {
            this.OooO00o = map;
            this.OooO0O0 = str;
            this.f5OooO0OO = map2;
            this.f6OooO0Oo = rj7Var;
        }

        @Override
        public void run() throws Throwable {
            String strB;
            try {
                Map map = this.OooO00o;
                if (map == null || map.size() == 0) {
                    strB = OooO0o.b(OooO0o.this, OooO0o.this.a() + this.OooO0O0, this.f5OooO0OO, null);
                } else {
                    strB = OooO0o.this.c(OooO0o.this.a() + this.OooO0O0, this.f5OooO0OO, this.OooO00o);
                }
                this.f6OooO0Oo.onSuccess(strB);
            } catch (Exception e) {
                if (!(e instanceof PalmServerException)) {
                    this.f6OooO0Oo.a(40103, e.getMessage());
                } else {
                    PalmServerException palmServerException = (PalmServerException) e;
                    this.f6OooO0Oo.a(palmServerException.errorCode, palmServerException.errorMessage);
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:70:0x01b3  */
    /* JADX WARN: Code duplicated, block: B:89:0x0211 A[Catch: all -> 0x0029, TryCatch #3 {all -> 0x0029, blocks: (B:4:0x000a, B:6:0x0010, B:11:0x002f, B:87:0x020d, B:89:0x0211, B:91:0x0215, B:93:0x0228, B:92:0x021f), top: B:98:0x000a }] */
    /* JADX WARN: Code duplicated, block: B:91:0x0215 A[Catch: all -> 0x0029, TryCatch #3 {all -> 0x0029, blocks: (B:4:0x000a, B:6:0x0010, B:11:0x002f, B:87:0x020d, B:89:0x0211, B:91:0x0215, B:93:0x0228, B:92:0x021f), top: B:98:0x000a }] */
    /* JADX WARN: Code duplicated, block: B:92:0x021f A[Catch: all -> 0x0029, TryCatch #3 {all -> 0x0029, blocks: (B:4:0x000a, B:6:0x0010, B:11:0x002f, B:87:0x020d, B:89:0x0211, B:91:0x0215, B:93:0x0228, B:92:0x021f), top: B:98:0x000a }] */
    /* JADX WARN: Code duplicated, block: B:95:0x022b  */
    public static String b(OooO0o oooO0o, String str, Map map, Map map2) throws Throwable {
        Throwable th;
        Exception e;
        String string;
        String strOptString;
        SSLContext sSLContextA;
        oooO0o.getClass();
        HttpURLConnection httpURLConnection = null;
        if (map2 != null) {
            try {
                try {
                    if (map2.size() > 0) {
                        str = str + "?" + vj7.e(map2);
                    }
                } catch (Exception e2) {
                    e = e2;
                    if (!(e instanceof UnknownHostException)) {
                        vj7.a.i(e.getMessage());
                    } else if (!(e instanceof PalmServerException)) {
                        vj7.a.i(Log.getStackTraceString(e));
                    }
                    throw e;
                }
            } catch (Throwable th2) {
                th = th2;
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                throw th;
            }
        }
        vj7.a.g("doGet url = " + str);
        HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL(str).openConnection();
        try {
            try {
                if (httpURLConnection2 instanceof HttpsURLConnection) {
                    if (c == null && (sSLContextA = a.a()) != null) {
                        c = sSLContextA.getSocketFactory();
                    }
                    SSLSocketFactory sSLSocketFactory = c;
                    if (sSLSocketFactory != null) {
                        ((HttpsURLConnection) httpURLConnection2).setSSLSocketFactory(sSLSocketFactory);
                        ((HttpsURLConnection) httpURLConnection2).setHostnameVerifier(a.a);
                    }
                }
                httpURLConnection2.setRequestProperty("Content-Type", ShareTarget.ENCODING_TYPE_URL_ENCODED);
                httpURLConnection2.setRequestProperty("accept", SniffTiktokUtil.TIKTOK_DOWNLOAD_HTTP_HEADER_ACCEPT_VALUE);
                httpURLConnection2.setInstanceFollowRedirects(false);
                if (map != null && map.size() > 0) {
                    for (Map.Entry entry : map.entrySet()) {
                        if (!TextUtils.isEmpty((CharSequence) entry.getKey()) && !TextUtils.isEmpty((CharSequence) entry.getValue())) {
                            httpURLConnection2.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
                        }
                    }
                }
                httpURLConnection2.setRequestMethod(ShareTarget.METHOD_GET);
                httpURLConnection2.setReadTimeout(ComConstants.AD_TIMEOUT_MILLIS);
                httpURLConnection2.setConnectTimeout(ComConstants.AD_TIMEOUT_MILLIS);
                httpURLConnection2.setDoInput(true);
                int responseCode = httpURLConnection2.getResponseCode();
                vj7.a.g("doGet responseCode = " + responseCode);
                if (responseCode == 200) {
                    InputStream inputStream = httpURLConnection2.getInputStream();
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, Charset.forName("UTF-8")));
                    StringBuilder sb = new StringBuilder();
                    while (true) {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                        sb.append(line);
                    }
                    bufferedReader.close();
                    inputStream.close();
                    string = sb.toString();
                } else {
                    String str2 = "unknown server error";
                    if (responseCode != 301 && responseCode != 302 && responseCode != 303) {
                        BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(httpURLConnection2.getErrorStream(), Charset.forName("UTF-8")));
                        StringBuilder sb2 = new StringBuilder();
                        while (true) {
                            String line2 = bufferedReader2.readLine();
                            if (line2 == null) {
                                break;
                            }
                            sb2.append(line2);
                        }
                        bufferedReader2.close();
                        String string2 = sb2.toString();
                        vj7.a.g("doGet response = " + string2);
                        try {
                            JSONObject jSONObject = new JSONObject(string2);
                            if (!jSONObject.has(TrackingKey.CODE)) {
                                if (jSONObject.has("status")) {
                                    responseCode = jSONObject.optInt("status", responseCode);
                                    strOptString = jSONObject.optString("message");
                                } else if (responseCode == 40055) {
                                    str2 = "token expired";
                                }
                                throw new PalmServerException(responseCode, str2);
                            }
                            responseCode = jSONObject.optInt(TrackingKey.CODE, responseCode);
                            strOptString = jSONObject.optString("message");
                            str2 = strOptString;
                            if (responseCode == 40055) {
                                str2 = "token expired";
                            }
                        } catch (Exception unused) {
                        }
                        throw new PalmServerException(responseCode, str2);
                    }
                    Bundle bundleF = vj7.f(httpURLConnection2.getHeaderField("Location"));
                    if (bundleF == null) {
                        throw new PalmServerException(40104, "unknown server error");
                    }
                    String string3 = bundleF.getString(TrackingKey.CODE, null);
                    String string4 = bundleF.getString(ICode.CALL.CALL_KEY_STATE, null);
                    if (string3 == null) {
                        String string5 = bundleF.getString("errorCode");
                        throw new PalmServerException(string5.startsWith("400") ? Integer.parseInt(string5) : 40104, bundleF.getString("error_description"));
                    }
                    string = new JSONObject().put(TrackingKey.CODE, string3).put(ICode.CALL.CALL_KEY_STATE, string4).toString();
                }
                httpURLConnection2.disconnect();
                return string;
            } catch (Exception e3) {
                e = e3;
                httpURLConnection = httpURLConnection2;
                if (!(e instanceof UnknownHostException)) {
                    vj7.a.i(e.getMessage());
                } else if (!(e instanceof PalmServerException)) {
                    vj7.a.i(Log.getStackTraceString(e));
                }
                throw e;
            }
        } catch (Throwable th3) {
            th = th3;
            httpURLConnection = httpURLConnection2;
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            throw th;
        }
    }

    public static OooO0o e() {
        if (b == null) {
            synchronized (OooO0o.class) {
                try {
                    if (b == null) {
                        b = new OooO0o();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return b;
    }

    public String a() {
        String str;
        int i = this.a;
        if (i == 1) {
            str = "https://dev-account.palm.tech";
        } else if (i == 2) {
            str = "https://test-account.palm.tech";
        } else {
            str = i == 3 ? "https://pre-account.palm.tech" : "https://account.palm.tech";
        }
        return GslbSdk.getDomain(str, true);
    }

    /* JADX WARN: Code duplicated, block: B:73:0x020a  */
    public final String c(String str, Map map, Map map2) throws Throwable {
        String strOptString;
        SSLContext sSLContextA;
        HttpURLConnection httpURLConnection = null;
        try {
            try {
                vj7.a.g("doPost url = " + str);
                HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL(str).openConnection();
                try {
                    try {
                        if (httpURLConnection2 instanceof HttpsURLConnection) {
                            if (c == null && (sSLContextA = a.a()) != null) {
                                c = sSLContextA.getSocketFactory();
                            }
                            SSLSocketFactory sSLSocketFactory = c;
                            if (sSLSocketFactory != null) {
                                ((HttpsURLConnection) httpURLConnection2).setSSLSocketFactory(sSLSocketFactory);
                                ((HttpsURLConnection) httpURLConnection2).setHostnameVerifier(a.a);
                            }
                        }
                        httpURLConnection2.setRequestProperty("Content-Type", ShareTarget.ENCODING_TYPE_URL_ENCODED);
                        httpURLConnection2.setRequestProperty("accept", SniffTiktokUtil.TIKTOK_DOWNLOAD_HTTP_HEADER_ACCEPT_VALUE);
                        httpURLConnection2.setInstanceFollowRedirects(false);
                        if (map != null && map.size() > 0) {
                            for (Map.Entry entry : map.entrySet()) {
                                if (!TextUtils.isEmpty((CharSequence) entry.getKey()) && !TextUtils.isEmpty((CharSequence) entry.getValue())) {
                                    httpURLConnection2.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
                                }
                            }
                        }
                        httpURLConnection2.setRequestMethod("POST");
                        httpURLConnection2.setReadTimeout(ComConstants.AD_TIMEOUT_MILLIS);
                        httpURLConnection2.setConnectTimeout(ComConstants.AD_TIMEOUT_MILLIS);
                        httpURLConnection2.setDoInput(true);
                        httpURLConnection2.setDoOutput(true);
                        StringBuilder sb = new StringBuilder();
                        if (map2 != null) {
                            for (Map.Entry entry2 : map2.entrySet()) {
                                if (sb.length() == 0) {
                                    sb.append((String) entry2.getKey());
                                    sb.append("=");
                                    sb.append(entry2.getValue());
                                } else {
                                    sb.append("&");
                                    sb.append((String) entry2.getKey());
                                    sb.append("=");
                                    sb.append(entry2.getValue());
                                }
                            }
                        }
                        vj7.a.g("doPost formData = " + sb.toString());
                        PrintWriter printWriter = new PrintWriter(httpURLConnection2.getOutputStream());
                        printWriter.write(sb.toString());
                        printWriter.flush();
                        printWriter.close();
                        int responseCode = httpURLConnection2.getResponseCode();
                        vj7.a.g("doPost responseCode = " + responseCode);
                        if (responseCode != 200) {
                            String str2 = "unknown server error";
                            if (responseCode == 301 || responseCode == 302 || responseCode == 303) {
                                Bundle bundleF = vj7.f(httpURLConnection2.getHeaderField("Location"));
                                if (bundleF == null) {
                                    throw new PalmServerException(40104, "unknown server error");
                                }
                                String string = bundleF.getString(TrackingKey.CODE, null);
                                String string2 = bundleF.getString(ICode.CALL.CALL_KEY_STATE, null);
                                if (string == null) {
                                    String string3 = bundleF.getString("errorCode");
                                    throw new PalmServerException(string3.startsWith("400") ? Integer.parseInt(string3) : 40104, bundleF.getString("error_description"));
                                }
                                String string4 = new JSONObject().put(TrackingKey.CODE, string).put(ICode.CALL.CALL_KEY_STATE, string2).toString();
                                httpURLConnection2.disconnect();
                                return string4;
                            }
                            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection2.getErrorStream(), Charset.forName("UTF-8")));
                            StringBuilder sb2 = new StringBuilder();
                            while (true) {
                                String line = bufferedReader.readLine();
                                if (line == null) {
                                    break;
                                }
                                sb2.append(line);
                            }
                            bufferedReader.close();
                            String string5 = sb2.toString();
                            vj7.a.g("doPost response = " + string5);
                            try {
                                JSONObject jSONObject = new JSONObject(string5);
                                if (!jSONObject.has(TrackingKey.CODE)) {
                                    if (jSONObject.has("status")) {
                                        responseCode = jSONObject.optInt("status", responseCode);
                                        strOptString = jSONObject.optString("message");
                                    } else if (responseCode == 40055) {
                                        str2 = "token expired";
                                    }
                                    throw new PalmServerException(responseCode, str2);
                                }
                                responseCode = jSONObject.optInt(TrackingKey.CODE, responseCode);
                                strOptString = jSONObject.optString("message");
                                str2 = strOptString;
                                if (responseCode == 40055) {
                                    str2 = "token expired";
                                }
                            } catch (Exception unused) {
                            }
                            throw new PalmServerException(responseCode, str2);
                        }
                        InputStream inputStream = httpURLConnection2.getInputStream();
                        BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(inputStream, Charset.forName("UTF-8")));
                        StringBuilder sb3 = new StringBuilder();
                        while (true) {
                            String line2 = bufferedReader2.readLine();
                            if (line2 == null) {
                                bufferedReader2.close();
                                inputStream.close();
                                String string6 = sb3.toString();
                                httpURLConnection2.disconnect();
                                return string6;
                            }
                            sb3.append(line2);
                        }
                    } catch (Exception e) {
                        e = e;
                        httpURLConnection = httpURLConnection2;
                        if (e instanceof UnknownHostException) {
                            vj7.a.i(e.getMessage());
                        } else if (!(e instanceof PalmServerException)) {
                            vj7.a.i(Log.getStackTraceString(e));
                        }
                        throw e;
                    }
                } catch (Throwable th) {
                    th = th;
                    httpURLConnection = httpURLConnection2;
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    public void d(String str, Map map, Map map2, rj7 rj7Var) {
        xj7.a().execute(new OooO00o(map2, str, map, rj7Var));
    }
}
