package com.transsion.athena.hatnea;

import android.os.Build;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.util.Pair;
import com.hisavana.common.constant.ComConstants;
import com.hisavana.common.tracking.TrackingKey;
import com.lzy.okgo.model.HttpHeaders;
import com.transsion.athena.config.data.model.TidConfigBean;
import com.transsion.athena.config.data.model.anehat;
import com.transsion.gslb.GslbSdk;
import com.transsion.gslb.NetResponse;
import com.transsion.sniffer_load.sniffservice.SniffTiktokUtil;
import defpackage.c4d;
import defpackage.c5d;
import defpackage.e5d;
import defpackage.h5d;
import defpackage.jw8;
import defpackage.rbd;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.io.DataOutputStream;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.UnknownHostException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import javax.crypto.KeyGenerator;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import org.json.JSONObject;

public abstract class b {
    public static SSLSocketFactory a;

    public static h5d a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return new h5d(bArr);
    }

    public static rbd b(long j, byte[] bArr, int i, com.transsion.athena.config.data.model.aethna aethnaVar) throws Throwable {
        SSLContext sSLContextA;
        rbd rbdVar = new rbd(2, new a("sdk_error"));
        HttpURLConnection httpURLConnection = null;
        try {
            try {
                URL url = new URL(GslbSdk.getDomain(aethnaVar.a, true));
                HttpURLConnection httpURLConnection2 = (HttpURLConnection) url.openConnection();
                try {
                    if (httpURLConnection2 instanceof HttpsURLConnection) {
                        if (a == null && (sSLContextA = c5d.a()) != null) {
                            a = sSLContextA.getSocketFactory();
                        }
                        SSLSocketFactory sSLSocketFactory = a;
                        if (sSLSocketFactory != null) {
                            ((HttpsURLConnection) httpURLConnection2).setSSLSocketFactory(sSLSocketFactory);
                            ((HttpsURLConnection) httpURLConnection2).setHostnameVerifier(c5d.a);
                        }
                    }
                    httpURLConnection2.setReadTimeout(20000);
                    httpURLConnection2.setConnectTimeout(ComConstants.AD_TIMEOUT_MILLIS);
                    httpURLConnection2.setDoOutput(true);
                    httpURLConnection2.setUseCaches(false);
                    httpURLConnection2.setRequestMethod("POST");
                    httpURLConnection2.setInstanceFollowRedirects(true);
                    byte[] bArrB = bArr;
                    if (aethnaVar.c * 1024 <= bArrB.length) {
                        httpURLConnection2.setRequestProperty(HttpHeaders.HEAD_KEY_ACCEPT_ENCODING, HttpHeaders.HEAD_VALUE_ACCEPT_ENCODING);
                        httpURLConnection2.setRequestProperty("zip", "1");
                        bArrB = anehat.b(bArr);
                    } else {
                        httpURLConnection2.setRequestProperty(HttpHeaders.HEAD_KEY_ACCEPT_ENCODING, "text/example");
                        httpURLConnection2.setRequestProperty("zip", "0");
                    }
                    httpURLConnection2.setRequestProperty("fixed", "1");
                    httpURLConnection2.setRequestProperty("record-id", j + "");
                    httpURLConnection2.setRequestProperty("count", i + "");
                    httpURLConnection2.setRequestProperty("ver", "3.1.1.2");
                    TidConfigBean tidConfigBeanM = e5d.o().m(j);
                    if (tidConfigBeanM == null) {
                        c4d.b("requestByPost TidConfigBean " + j + " is missing, maybe cancelled");
                        ((a) rbdVar.b).d = "tid not found";
                        httpURLConnection2.disconnect();
                        return rbdVar;
                    }
                    tidConfigBeanM.getTidConfig().getClass();
                    h5d h5dVarA = a((byte[]) aethnaVar.b.second);
                    if (h5dVarA == null) {
                        ((a) rbdVar.b).d = "encrypt error";
                        httpURLConnection2.disconnect();
                        return rbdVar;
                    }
                    byte[] bytes = Base64.encodeToString(h5dVarA.c(bArrB), 2).getBytes();
                    if (bytes == null) {
                        c4d.d("requestByPost buffer is null");
                        ((a) rbdVar.b).d = "base64 error";
                        httpURLConnection2.disconnect();
                        return rbdVar;
                    }
                    String strA = anehat.a(bytes);
                    if (TextUtils.isEmpty(strA)) {
                        httpURLConnection2.setRequestProperty("md5", "error");
                    } else {
                        httpURLConnection2.setRequestProperty("md5", strA);
                    }
                    httpURLConnection2.setRequestProperty("encrypt-level", String.valueOf(3));
                    httpURLConnection2.setRequestProperty("encrypt-index", String.valueOf(((Integer) aethnaVar.b.first).intValue() + 1));
                    c4d.f(url + " tid = " + j + " count = " + i);
                    httpURLConnection2.connect();
                    DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection2.getOutputStream());
                    dataOutputStream.write(bytes);
                    dataOutputStream.flush();
                    dataOutputStream.close();
                    if (httpURLConnection2.getResponseCode() != 200) {
                        rbd rbdVar2 = new rbd(-1, new a("rc_" + anehat.a(httpURLConnection2.getErrorStream())));
                        httpURLConnection2.disconnect();
                        return rbdVar2;
                    }
                    String strA2 = anehat.a(httpURLConnection2.getInputStream());
                    c4d.f(String.format(Locale.ENGLISH, "post tid: %s response: %s", Long.valueOf(j), strA2));
                    if (TextUtils.isEmpty(strA2)) {
                        rbd rbdVar3 = new rbd(-1, new a("rc_" + i));
                        httpURLConnection2.disconnect();
                        return rbdVar3;
                    }
                    int iOptInt = new JSONObject(strA2).optInt(TrackingKey.CODE);
                    if (iOptInt == 0) {
                        rbd rbdVar4 = new rbd(0, new a());
                        httpURLConnection2.disconnect();
                        return rbdVar4;
                    }
                    rbd rbdVar5 = new rbd(-1, new a("rc_" + iOptInt));
                    httpURLConnection2.disconnect();
                    return rbdVar5;
                } catch (Exception e) {
                    e = e;
                    httpURLConnection = httpURLConnection2;
                    if (e instanceof UnknownHostException) {
                        c4d.d(e.getMessage());
                    } else {
                        c4d.d(Log.getStackTraceString(e));
                    }
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    return new rbd(-1, new a());
                } catch (Throwable th) {
                    th = th;
                    httpURLConnection = httpURLConnection2;
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:38:0x008e  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v5, types: [java.net.HttpURLConnection] */
    public static rbd c(String str) throws Throwable {
        Throwable th;
        ?? r4;
        Exception e;
        HttpURLConnection httpURLConnection;
        SSLContext sSLContextA;
        try {
            try {
                httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                try {
                    if (httpURLConnection instanceof HttpsURLConnection) {
                        if (a == null && (sSLContextA = c5d.a()) != null) {
                            a = sSLContextA.getSocketFactory();
                        }
                        SSLSocketFactory sSLSocketFactory = a;
                        if (sSLSocketFactory != null) {
                            ((HttpsURLConnection) httpURLConnection).setSSLSocketFactory(sSLSocketFactory);
                            ((HttpsURLConnection) httpURLConnection).setHostnameVerifier(c5d.a);
                        }
                    }
                    httpURLConnection.setReadTimeout(10000);
                    httpURLConnection.setConnectTimeout(10000);
                    int responseCode = httpURLConnection.getResponseCode();
                    if (responseCode >= 200 && responseCode < 400) {
                        rbd rbdVar = new rbd(0, Long.valueOf(httpURLConnection.getDate()));
                        httpURLConnection.disconnect();
                        return rbdVar;
                    }
                } catch (Exception e2) {
                    e = e2;
                    if (e instanceof UnknownHostException) {
                        c4d.d(e.getMessage());
                    } else {
                        c4d.d(Log.getStackTraceString(e));
                    }
                    if (httpURLConnection != null) {
                    }
                    return new rbd(-1, 0L);
                }
            } catch (Throwable th2) {
                th = th2;
                r4 = str;
                if (r4 != 0) {
                    r4.disconnect();
                }
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            httpURLConnection = null;
        } catch (Throwable th3) {
            th = th3;
            r4 = 0;
            if (r4 != 0) {
                r4.disconnect();
            }
            throw th;
        }
        httpURLConnection.disconnect();
        return new rbd(-1, 0L);
    }

    public static rbd d(String str, String str2, long j) throws Throwable {
        rbd rbdVar;
        HttpURLConnection httpURLConnection;
        SSLContext sSLContextA;
        HttpURLConnection httpURLConnection2 = null;
        try {
            try {
                KeyGenerator keyGenerator = KeyGenerator.getInstance("AES");
                keyGenerator.init(128);
                String strC = anehat.c(keyGenerator.generateKey().getEncoded());
                h5d h5dVar = new h5d(strC.getBytes());
                byte[] bArrA = h5dVar.a(str2);
                String str3 = Base64.encodeToString(bArrA, 2) + StringUtils.COMMA + Base64.encodeToString(new jw8("MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEArNrm4jErOdstd1P5L1X/\nCGSS6NKf4glPrFbTM97aE9ZKGUiMALIV8W7FClAgLZdtTZkL5XEQdbX4RB/C6edc\nnN2ifla6sVu23y78FMiL6smp9ayE7Y3gSEfB3md4nvEUpyRUu4wYLIf9nVR36okK\nGCerxYdLtDbJ69Rux4lgE5C9a6qLfV6BzjJYONk/vQhGQYT6qes+TFtXV0hvF8UM\nDG+0GfA3MiQue/Ny8uIPBykDPS1dcIADzVos2fXs/o2aFTrkdVjiX8irwYBze69K\nzFx18H12iZ9gG1VztMbHetvImBoXeCOwjTc5RnGIz+Hya96pxJLK2DcSlAaHEs1H\nOQIDAQAB").d(strC), 2);
                URL url = new URL(GslbSdk.getDomain(str, true));
                httpURLConnection = (HttpURLConnection) url.openConnection();
                try {
                    try {
                        if (httpURLConnection instanceof HttpsURLConnection) {
                            if (a == null && (sSLContextA = c5d.a()) != null) {
                                a = sSLContextA.getSocketFactory();
                            }
                            SSLSocketFactory sSLSocketFactory = a;
                            if (sSLSocketFactory != null) {
                                ((HttpsURLConnection) httpURLConnection).setSSLSocketFactory(sSLSocketFactory);
                                ((HttpsURLConnection) httpURLConnection).setHostnameVerifier(c5d.a);
                            }
                        }
                        httpURLConnection.setRequestProperty("accept", SniffTiktokUtil.TIKTOK_DOWNLOAD_HTTP_HEADER_ACCEPT_VALUE);
                        httpURLConnection.setRequestProperty("Content-Length", String.valueOf(str3.length()));
                        httpURLConnection.setRequestProperty("encrypt-level", "2");
                        httpURLConnection.setRequestProperty("ver", String.valueOf(j));
                        httpURLConnection.setRequestProperty("vn", "1");
                        httpURLConnection.setRequestMethod("POST");
                        httpURLConnection.setReadTimeout(20000);
                        httpURLConnection.setConnectTimeout(ComConstants.AD_TIMEOUT_MILLIS);
                        httpURLConnection.setDoInput(true);
                        httpURLConnection.setDoOutput(true);
                        PrintWriter printWriter = new PrintWriter(httpURLConnection.getOutputStream());
                        printWriter.write(str3);
                        printWriter.flush();
                        printWriter.close();
                        int responseCode = httpURLConnection.getResponseCode();
                        try {
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put("url", url);
                            jSONObject.put("params", str2);
                            jSONObject.put("version", j);
                            jSONObject.put(TrackingKey.CODE, responseCode);
                            c4d.g("--> request config:%s", jSONObject.toString());
                        } catch (Exception e) {
                            c4d.e("print request config exception:%s", e.getMessage());
                        }
                        if (responseCode == 200) {
                            String strA = anehat.a(httpURLConnection.getInputStream());
                            if (TextUtils.equals(NetResponse.EMPTY_RESPONSE, strA)) {
                                rbdVar = new rbd(1, null);
                            } else if (TextUtils.isEmpty(strA)) {
                                rbdVar = new rbd(-1, null);
                            } else {
                                rbdVar = new rbd(0, str.contains("secret") ? new String(h5dVar.b(Base64.decode(strA, 2)), StandardCharsets.UTF_8) : new String(anehat.d(h5dVar.b(Base64.decode(strA, 2))), StandardCharsets.UTF_8));
                            }
                        } else {
                            rbdVar = new rbd(-1, anehat.a(httpURLConnection.getErrorStream()));
                        }
                    } catch (Throwable th) {
                        th = th;
                        httpURLConnection2 = httpURLConnection;
                        if (httpURLConnection2 != null) {
                            httpURLConnection2.disconnect();
                        }
                        throw th;
                    }
                } catch (Exception e2) {
                    e = e2;
                    httpURLConnection2 = httpURLConnection;
                    rbd rbdVar2 = new rbd(-1, e.getMessage());
                    if (httpURLConnection2 == null) {
                        return rbdVar2;
                    }
                    rbdVar = rbdVar2;
                    httpURLConnection = httpURLConnection2;
                }
            } catch (Exception e3) {
                e = e3;
            }
            httpURLConnection.disconnect();
            return rbdVar;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static rbd e(String str, String str2, long j, int i) throws Throwable {
        rbd rbdVar;
        SSLContext sSLContextA;
        HttpURLConnection httpURLConnection = null;
        rbd rbdVar2 = new rbd(-1, null);
        try {
            try {
                URL url = new URL(GslbSdk.getDomain(str, true));
                HttpURLConnection httpURLConnection2 = (HttpURLConnection) url.openConnection();
                try {
                    try {
                        if (httpURLConnection2 instanceof HttpsURLConnection) {
                            if (a == null && (sSLContextA = c5d.a()) != null) {
                                a = sSLContextA.getSocketFactory();
                            }
                            SSLSocketFactory sSLSocketFactory = a;
                            if (sSLSocketFactory != null) {
                                ((HttpsURLConnection) httpURLConnection2).setSSLSocketFactory(sSLSocketFactory);
                                ((HttpsURLConnection) httpURLConnection2).setHostnameVerifier(c5d.a);
                            }
                        }
                        byte[] bytes = str2.getBytes();
                        Pair pairU = e5d.o().u();
                        h5d h5dVarA = a((byte[]) pairU.second);
                        if (h5dVarA == null) {
                            if (httpURLConnection2 != null) {
                                httpURLConnection2.disconnect();
                            }
                            return rbdVar2;
                        }
                        byte[] bytes2 = Base64.encodeToString(h5dVarA.c(bytes), 2).getBytes();
                        httpURLConnection2.setRequestProperty("index", String.valueOf(((Integer) pairU.first).intValue() + 1));
                        httpURLConnection2.setRequestProperty("accept", SniffTiktokUtil.TIKTOK_DOWNLOAD_HTTP_HEADER_ACCEPT_VALUE);
                        httpURLConnection2.setRequestProperty("Content-Length", String.valueOf(bytes2.length));
                        httpURLConnection2.setRequestProperty("ver", String.valueOf(j));
                        httpURLConnection2.setRequestProperty("vn", "1");
                        httpURLConnection2.setRequestProperty("app", String.valueOf(i));
                        httpURLConnection2.setRequestProperty(CommonUrlParts.MODEL, Build.MODEL);
                        httpURLConnection2.setRequestMethod("POST");
                        httpURLConnection2.setReadTimeout(20000);
                        httpURLConnection2.setConnectTimeout(ComConstants.AD_TIMEOUT_MILLIS);
                        httpURLConnection2.setDoInput(true);
                        httpURLConnection2.setDoOutput(true);
                        DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection2.getOutputStream());
                        dataOutputStream.write(bytes2);
                        dataOutputStream.flush();
                        dataOutputStream.close();
                        int responseCode = httpURLConnection2.getResponseCode();
                        try {
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put("url", url);
                            jSONObject.put("params", str2);
                            jSONObject.put("version", j);
                            jSONObject.put(TrackingKey.CODE, responseCode);
                            c4d.g("--> request config:%s", jSONObject.toString());
                        } catch (Exception e) {
                            c4d.e("print request config exception:%s", e.getMessage());
                        }
                        if (responseCode == 200) {
                            String strA = anehat.a(httpURLConnection2.getInputStream());
                            if (TextUtils.equals(NetResponse.EMPTY_RESPONSE, strA)) {
                                rbdVar = new rbd(1, null);
                            } else {
                                rbdVar = TextUtils.isEmpty(strA) ? new rbd(-1, null) : new rbd(0, new String(anehat.d(Base64.decode(strA, 2)), StandardCharsets.UTF_8));
                            }
                        } else {
                            rbdVar = new rbd(-1, anehat.a(httpURLConnection2.getErrorStream()));
                        }
                        httpURLConnection2.disconnect();
                        return rbdVar;
                    } catch (Exception e2) {
                        e = e2;
                        httpURLConnection = httpURLConnection2;
                        rbd rbdVar3 = new rbd(-1, e.getMessage());
                        if (httpURLConnection == null) {
                            return rbdVar3;
                        }
                        rbdVar = rbdVar3;
                        httpURLConnection2 = httpURLConnection;
                    }
                } catch (Throwable th) {
                    th = th;
                    httpURLConnection = httpURLConnection2;
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    throw th;
                }
            } catch (Exception e3) {
                e = e3;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static rbd f(String str, byte[] bArr, int i, List list, String str2, String str3) throws Throwable {
        SSLContext sSLContextA;
        rbd rbdVar = new rbd(2, new a("sdk_error"));
        HttpURLConnection httpURLConnection = null;
        try {
            try {
                HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL(str).openConnection();
                try {
                    if (httpURLConnection2 instanceof HttpsURLConnection) {
                        if (a == null && (sSLContextA = c5d.a()) != null) {
                            a = sSLContextA.getSocketFactory();
                        }
                        SSLSocketFactory sSLSocketFactory = a;
                        if (sSLSocketFactory != null) {
                            ((HttpsURLConnection) httpURLConnection2).setSSLSocketFactory(sSLSocketFactory);
                            ((HttpsURLConnection) httpURLConnection2).setHostnameVerifier(c5d.a);
                        }
                    }
                    httpURLConnection2.setReadTimeout(20000);
                    httpURLConnection2.setConnectTimeout(ComConstants.AD_TIMEOUT_MILLIS);
                    httpURLConnection2.setDoOutput(true);
                    httpURLConnection2.setUseCaches(false);
                    httpURLConnection2.setRequestMethod("POST");
                    httpURLConnection2.setInstanceFollowRedirects(true);
                    int length = bArr.length;
                    httpURLConnection2.setRequestProperty(HttpHeaders.HEAD_KEY_ACCEPT_ENCODING, HttpHeaders.HEAD_VALUE_ACCEPT_ENCODING);
                    httpURLConnection2.setRequestProperty("zip", "1");
                    byte[] bArrB = anehat.b(bArr);
                    httpURLConnection2.setRequestProperty("fixed", "1");
                    httpURLConnection2.setRequestProperty("count", String.valueOf(list.size()));
                    httpURLConnection2.setRequestProperty("appids", anehat.a(list, "_"));
                    httpURLConnection2.setRequestProperty("ver", "3.1.1.2");
                    httpURLConnection2.setRequestProperty("uuid", str2);
                    httpURLConnection2.setRequestProperty("dupid", str3);
                    Pair pairU = e5d.o().u();
                    h5d h5dVarA = a((byte[]) pairU.second);
                    if (h5dVarA == null) {
                        ((a) rbdVar.b).d = "encrypt error";
                        httpURLConnection2.disconnect();
                        return rbdVar;
                    }
                    byte[] bytes = Base64.encodeToString(h5dVarA.c(bArrB), 2).getBytes();
                    if (bytes == null) {
                        c4d.d("requestByPost buffer is null");
                        ((a) rbdVar.b).d = "base64 error";
                        httpURLConnection2.disconnect();
                        return rbdVar;
                    }
                    httpURLConnection2.setRequestProperty("encrypt-level", "3");
                    httpURLConnection2.setRequestProperty("encrypt-index", String.valueOf(((Integer) pairU.first).intValue() + 1));
                    httpURLConnection2.connect();
                    DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection2.getOutputStream());
                    dataOutputStream.write(bytes);
                    dataOutputStream.flush();
                    dataOutputStream.close();
                    if (httpURLConnection2.getResponseCode() != 200) {
                        rbd rbdVar2 = new rbd(-1, new a("rc_" + anehat.a(httpURLConnection2.getErrorStream())));
                        httpURLConnection2.disconnect();
                        return rbdVar2;
                    }
                    String strA = anehat.a(httpURLConnection2.getInputStream());
                    if (TextUtils.isEmpty(strA)) {
                        rbd rbdVar3 = new rbd(-1, new a("rc_" + i));
                        httpURLConnection2.disconnect();
                        return rbdVar3;
                    }
                    JSONObject jSONObject = new JSONObject(strA);
                    int iOptInt = jSONObject.optInt(TrackingKey.CODE);
                    String strOptString = jSONObject.optString("message", "");
                    a aVar = new a();
                    aVar.a = iOptInt;
                    aVar.b = strOptString;
                    if (iOptInt != 0) {
                        aVar.d = "rc_" + iOptInt;
                        rbd rbdVar4 = new rbd(-1, aVar);
                        httpURLConnection2.disconnect();
                        return rbdVar4;
                    }
                    JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("app");
                    if (jSONObjectOptJSONObject != null) {
                        Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
                        while (itKeys.hasNext()) {
                            String next = itKeys.next();
                            long j = jSONObjectOptJSONObject.getJSONObject(next).getLong("ver");
                            int i2 = jSONObjectOptJSONObject.getJSONObject(next).getInt("type");
                            if (i2 != 0) {
                                a.C0201a c0201a = new a.C0201a(Integer.parseInt(next), i2, j);
                                if (aVar.c == null) {
                                    aVar.c = new ArrayList();
                                }
                                aVar.c.add(c0201a);
                            }
                        }
                    }
                    rbd rbdVar5 = new rbd(0, aVar);
                    httpURLConnection2.disconnect();
                    return rbdVar5;
                } catch (Exception e) {
                    e = e;
                    httpURLConnection = httpURLConnection2;
                    c4d.d(e.getMessage());
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    return new rbd(-1, new a());
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
}
