package com.transsion.gslb;

import android.app.Application;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.text.TextUtils;
import android.util.Log;
import androidx.webkit.ProxyConfig;
import com.hisavana.common.constant.ComConstants;
import com.transsion.core.deviceinfo.DeviceInfo;
import com.transsion.core.log.ObjectLogUtils;
import com.transsion.sniffer_load.sniffservice.SniffTiktokUtil;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import javax.net.ssl.SSLSocketFactory;

public class Utils {
    public static final String SEPARATOR = "#";
    public static ObjectLogUtils LOG = new ObjectLogUtils.a().p("GSLB_SDK").q(true).n(false).m();
    public static SSLSocketFactory sslSocketFactory = null;

    public static String bufferRead(File file) throws Throwable {
        if (file == null) {
            return "";
        }
        FileInputStream fileInputStream = null;
        try {
            try {
                if (!file.exists()) {
                    return "";
                }
                FileInputStream fileInputStream2 = new FileInputStream(file);
                try {
                    byte[] bArr = new byte[fileInputStream2.available()];
                    fileInputStream2.read(bArr);
                    String str = new String(bArr);
                    try {
                        fileInputStream2.close();
                    } catch (IOException unused) {
                    }
                    return str;
                } catch (Exception e) {
                    e = e;
                    fileInputStream = fileInputStream2;
                } catch (Throwable th) {
                    th = th;
                    fileInputStream = fileInputStream2;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException unused2) {
                        }
                    }
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        LOG.i(Log.getStackTraceString(e));
        if (fileInputStream != null) {
            try {
                fileInputStream.close();
            } catch (IOException unused3) {
            }
        }
        return "";
    }

    public static void bufferSave(String str, String str2) {
        FileOutputStream fileOutputStream = null;
        try {
            try {
                try {
                    FileOutputStream fileOutputStream2 = new FileOutputStream(str);
                    try {
                        fileOutputStream2.write(str2.getBytes());
                        fileOutputStream2.close();
                    } catch (Exception e) {
                        e = e;
                        fileOutputStream = fileOutputStream2;
                        LOG.i(Log.getStackTraceString(e));
                        if (fileOutputStream == null) {
                        } else {
                            fileOutputStream.close();
                        }
                    } catch (Throwable th) {
                        th = th;
                        fileOutputStream = fileOutputStream2;
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException unused) {
                            }
                        }
                        throw th;
                    }
                } catch (IOException unused2) {
                }
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static NetResponse<String> doPost(String str, String str2) {
        NetResponse<String> netResponse;
        String str3 = GslbSdk.isTestMode() ? "https://test-gslb.shalltry.com/gslb/domain/convert" : "https://gslb.shalltry.com/gslb/domain/convert";
        LOG.g("begin net connect: " + str);
        HttpURLConnection httpURLConnection = null;
        NetResponse<String> netResponse2 = new NetResponse<>(-1, null);
        String str4 = str != null ? str : "";
        try {
            HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL(str3).openConnection();
            try {
                httpURLConnection2.setRequestProperty("accept", SniffTiktokUtil.TIKTOK_DOWNLOAD_HTTP_HEADER_ACCEPT_VALUE);
                httpURLConnection2.setRequestProperty("Content-Type", "application/json");
                httpURLConnection2.setRequestProperty("Content-Length", String.valueOf(str4.length()));
                httpURLConnection2.setRequestProperty("X-Gslb-Sign", str2);
                httpURLConnection2.setRequestMethod("POST");
                httpURLConnection2.setReadTimeout(20000);
                httpURLConnection2.setConnectTimeout(ComConstants.AD_TIMEOUT_MILLIS);
                httpURLConnection2.setDoInput(true);
                httpURLConnection2.setDoOutput(true);
                PrintWriter printWriter = new PrintWriter(httpURLConnection2.getOutputStream());
                printWriter.write(str4);
                printWriter.flush();
                printWriter.close();
                int responseCode = httpURLConnection2.getResponseCode();
                String responseMessage = httpURLConnection2.getResponseMessage();
                LOG.n("url:" + str3 + " code:" + responseCode + " Post Data:" + str + " " + responseMessage);
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
                    String string = sb.toString();
                    try {
                        if (TextUtils.equals(NetResponse.EMPTY_RESPONSE, string)) {
                            netResponse = new NetResponse<>(1, null);
                        } else {
                            if (TextUtils.isEmpty(string)) {
                                netResponse = new NetResponse<>(-1, null);
                            } else {
                                netResponse2 = new NetResponse<>(0, string);
                            }
                            bufferedReader.close();
                            inputStream.close();
                        }
                        bufferedReader.close();
                        inputStream.close();
                    } catch (Throwable th) {
                        th = th;
                        try {
                            LOG.i(Log.getStackTraceString(th));
                            return netResponse2;
                        } finally {
                            if (httpURLConnection2 != null) {
                                httpURLConnection2.disconnect();
                            }
                        }
                    }
                    netResponse2 = netResponse;
                }
            } catch (Throwable th2) {
                th = th2;
                httpURLConnection = httpURLConnection2;
                httpURLConnection2 = httpURLConnection;
                LOG.i(Log.getStackTraceString(th));
                return netResponse2;
            }
        } catch (Throwable th3) {
            th = th3;
        }
        return netResponse2;
    }

    public static String getCurProcessName(Context context) {
        String processName;
        try {
            processName = Application.getProcessName();
        } catch (Exception e) {
            e.printStackTrace();
            processName = null;
        }
        return TextUtils.isEmpty(processName) ? context.getPackageName() : processName;
    }

    public static String getDomain(String str) {
        String host;
        if (str == null || !str.startsWith(ProxyConfig.MATCH_HTTP)) {
            host = str;
        } else {
            try {
                host = new URL(str).getHost();
            } catch (MalformedURLException e) {
                e.printStackTrace();
                host = "";
            }
        }
        if (TextUtils.isEmpty(host)) {
            LOG.i("the url is illegal->" + str);
        }
        return host;
    }

    public static String getMcc() {
        String strF = DeviceInfo.f();
        return (TextUtils.isEmpty(strF) || strF.length() < 3) ? "" : strF.substring(0, 3);
    }

    public static boolean isNetworkAvailable(Context context) {
        NetworkCapabilities networkCapabilities;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity");
        if (connectivityManager == null) {
            return false;
        }
        try {
            Network activeNetwork = connectivityManager.getActiveNetwork();
            if (activeNetwork != null && (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) != null) {
                return networkCapabilities.hasTransport(1) || networkCapabilities.hasTransport(0) || networkCapabilities.hasTransport(4) || networkCapabilities.hasTransport(3);
            }
        } catch (Exception e) {
            LOG.i(Log.getStackTraceString(e));
        }
        return false;
    }

    public static String mapToString(Map<String, String> map) {
        if (map == null || map.size() == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            sb.append(entry.getKey());
            sb.append("#");
            sb.append(entry.getValue());
            sb.append(StringUtils.COMMA);
        }
        return sb.toString();
    }

    public static Map<String, String> stringToMap(String str) {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap(8);
        if (str != null && str.length() != 0) {
            for (String str2 : str.split(StringUtils.COMMA)) {
                String[] strArrSplit = str2.split("#");
                if (strArrSplit.length == 2) {
                    concurrentHashMap.put(strArrSplit[0], strArrSplit[1]);
                }
            }
        }
        return concurrentHashMap;
    }
}
