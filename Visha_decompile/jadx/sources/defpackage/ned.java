package defpackage;

import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.hisavana.common.constant.ComConstants;
import com.transsion.gslb.NetResponse;
import com.transsion.infra.gateway.core.bean.GatewaySignKey;
import com.transsion.infra.gateway.core.bean.RequestBean;
import com.transsion.infra.gateway.core.sercurity.SignAlgorithm;
import com.transsion.sniffer_load.sniffservice.SniffTiktokUtil;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.regex.Pattern;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;

public abstract class ned {
    public static SSLSocketFactory a;

    static {
        Pattern.compile("\\d+");
        a = null;
    }

    public static uid a(String str, String str2, int i) throws Throwable {
        HttpURLConnection httpURLConnection;
        GatewaySignKey gatewaySignKey;
        uid uidVar;
        SSLContext sSLContextA;
        p6d.i("Post url : " + str + "\nBody : " + str2);
        HttpURLConnection httpURLConnection2 = null;
        uid uidVar2 = new uid(-1, null);
        try {
            try {
                String strA = f8d.a();
                byte[] bArrA = new p9d(strA.getBytes()).a(str2);
                String str3 = Base64.encodeToString(bArrA, 2) + StringUtils.COMMA + Base64.encodeToString(new jw8("MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAoj6/eaT17WcI4r6GJxLVIDfQkYLRLGWyObKO1kj1FS+7NvAIIhNxjNpplefKGWSLOyuKdkLlH53q+HQeyo3ngDf3IPp8evvBfWaoCk1H33q35hm+W+XKsL5bMbzZhJDVEqYpebXRqL6Cz+79xyWPEHbp1l2G5FKQ76/tKAqZ+7LNeEBhgoX1duXcAXrSR7dOP6loh2DUwagVta/o2poAVzxKQKDJeJs0+VV741yJSjjVMGWAl0enK4MA0lvtmin6LVQMgNuHL5UXmdrbsEcbiVvE7z9Ol6MGDRzxyUBufklb3Orr9tbLNydKJ0mrdHZMcg8yGpuJMMOOs+CBiqA+MQIDAQAB").d(strA), 2);
                URL url = new URL(str);
                httpURLConnection = (HttpURLConnection) url.openConnection();
                try {
                    if (httpURLConnection instanceof HttpsURLConnection) {
                        if (a == null && (sSLContextA = ukd.a()) != null) {
                            a = sSLContextA.getSocketFactory();
                        }
                        SSLSocketFactory sSLSocketFactory = a;
                        if (sSLSocketFactory != null) {
                            ((HttpsURLConnection) httpURLConnection).setSSLSocketFactory(sSLSocketFactory);
                            ((HttpsURLConnection) httpURLConnection).setHostnameVerifier(ukd.a);
                        }
                    }
                    if (i > 0) {
                        gatewaySignKey = new GatewaySignKey(zld.d().b(), 2, SignAlgorithm.HmacMD5);
                        RequestBean requestBeanBuild = new RequestBean.Builder().method("POST").accept(SniffTiktokUtil.TIKTOK_DOWNLOAD_HTTP_HEADER_ACCEPT_VALUE).contentType("application/json").url(str).key(gatewaySignKey).body(str3).build();
                        p6d.i("Gateway requestBean : " + requestBeanBuild.toString());
                        String strA2 = fd4.a(requestBeanBuild);
                        p6d.i("Gateway sign : " + strA2);
                        httpURLConnection.setRequestProperty("x-tr-signature", strA2);
                    } else {
                        gatewaySignKey = null;
                    }
                    httpURLConnection.setRequestProperty("accept", SniffTiktokUtil.TIKTOK_DOWNLOAD_HTTP_HEADER_ACCEPT_VALUE);
                    httpURLConnection.setRequestProperty("Content-Type", "application/json");
                    httpURLConnection.setRequestProperty("Content-Length", String.valueOf(str3.length()));
                    httpURLConnection.setRequestProperty("appid", String.valueOf(i));
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
                    p6d.i("url:" + url + " code:" + responseCode);
                    if (responseCode == 200) {
                        InputStream inputStream = httpURLConnection.getInputStream();
                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, Charset.forName("UTF-8")));
                        StringBuilder sb = new StringBuilder();
                        while (true) {
                            String line = bufferedReader.readLine();
                            if (line == null) {
                                break;
                            }
                            sb.append(line);
                        }
                        String string = sb.toString();
                        if (TextUtils.equals(NetResponse.EMPTY_RESPONSE, string)) {
                            uidVar = new uid(1, null);
                        } else {
                            if (TextUtils.isEmpty(string)) {
                                uidVar = new uid(-1, null);
                            } else {
                                uidVar2 = new uid(0, string);
                            }
                            bufferedReader.close();
                            inputStream.close();
                        }
                        uidVar2 = uidVar;
                        bufferedReader.close();
                        inputStream.close();
                    } else if ("429&503&504".contains(String.valueOf(responseCode))) {
                        BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream(), StandardCharsets.UTF_8));
                        StringBuilder sb2 = new StringBuilder();
                        while (true) {
                            String line2 = bufferedReader2.readLine();
                            if (line2 == null) {
                                break;
                            }
                            sb2.append(line2);
                        }
                        uidVar2 = new uid(4, sb2.toString());
                    } else if (responseCode >= 400 && gatewaySignKey != null) {
                        p6d.i("result from server : " + httpURLConnection.getResponseMessage());
                        InputStream errorStream = httpURLConnection.getErrorStream();
                        BufferedReader bufferedReader3 = new BufferedReader(new InputStreamReader(errorStream, StandardCharsets.UTF_8));
                        StringBuilder sb3 = new StringBuilder();
                        while (true) {
                            String line3 = bufferedReader3.readLine();
                            if (line3 == null) {
                                break;
                            }
                            sb3.append(line3);
                        }
                        String string2 = sb3.toString();
                        if (fd4.c(responseCode, string2, gatewaySignKey)) {
                            uidVar2 = new uid(3, string2);
                        }
                        bufferedReader3.close();
                        errorStream.close();
                    }
                } catch (Exception e) {
                    e = e;
                    httpURLConnection2 = httpURLConnection;
                    if (e instanceof UnknownHostException) {
                        p6d.m(e.getMessage());
                    } else {
                        p6d.m(Log.getStackTraceString(e));
                    }
                    if (httpURLConnection2 != null) {
                        httpURLConnection = httpURLConnection2;
                    }
                    return uidVar2;
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
            }
            httpURLConnection.disconnect();
            return uidVar2;
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
