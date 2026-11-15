package com.facebook.ads.internal.dynamicloading;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.util.Log;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.facebook.ads.AudienceNetworkAds;
import com.facebook.ads.internal.api.BuildConfigApi;
import com.facebook.biddingkit.http.client.HttpRequest;
import com.facebook.infer.annotation.Nullsafe;
import io.appmetrica.analytics.coreutils.internal.system.ConstantDeviceInfo;
import io.appmetrica.analytics.impl.C3020yk;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@Nullsafe(Nullsafe.Mode.LOCAL)
public class DexLoadErrorReporter {
    private static final String LOGGING_URL = "https://www.facebook.com/adnw_logging/";
    public static final double SAMPLING = 0.1d;
    private static final AtomicBoolean sAlreadyReported = new AtomicBoolean();

    public static void addEnvFields(Context context, JSONObject jSONObject, String str) throws JSONException, PackageManager.NameNotFoundException {
        String packageName = context.getPackageName();
        jSONObject.put("APPBUILD", context.getPackageManager().getPackageInfo(packageName, 0).versionCode);
        jSONObject.put("APPNAME", context.getPackageManager().getApplicationLabel(context.getPackageManager().getApplicationInfo(packageName, 0)));
        jSONObject.put("APPVERS", context.getPackageManager().getPackageInfo(packageName, 0).versionName);
        jSONObject.put("OSVERS", Build.VERSION.RELEASE);
        jSONObject.put("SDK", ConstantDeviceInfo.APP_PLATFORM);
        jSONObject.put(C3020yk.f, str);
        jSONObject.put("MODEL", Build.MODEL);
        jSONObject.put("BUNDLE", packageName);
        jSONObject.put("SDK_VERSION", BuildConfigApi.getVersionName(context));
        jSONObject.put("OS", "Android");
    }

    @SuppressLint({"CatchGeneralException"})
    public static void reportDexLoadingIssue(final Context context, final String str, double d) {
        AtomicBoolean atomicBoolean = sAlreadyReported;
        if (atomicBoolean.get() || Math.random() >= d) {
            return;
        }
        atomicBoolean.set(true);
        new Thread() {
            /* JADX WARN: Code duplicated, block: B:69:0x0173 A[DONT_GENERATE, EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Code duplicated, block: B:79:0x017e A[DONT_GENERATE, EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Code duplicated, block: B:86:? A[RETURN, SYNTHETIC] */
            @Override
            public void run() {
                DataOutputStream dataOutputStream;
                InputStream inputStream;
                HttpURLConnection httpURLConnection;
                super.run();
                try {
                    HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL(DexLoadErrorReporter.LOGGING_URL).openConnection();
                    try {
                        httpURLConnection2.setRequestMethod("POST");
                        httpURLConnection2.setRequestProperty("Content-Type", HttpRequest.URLENCODED);
                        httpURLConnection2.setRequestProperty("Accept", "application/json");
                        httpURLConnection2.setRequestProperty("Accept-Charset", "UTF-8");
                        httpURLConnection2.setRequestProperty("user-agent", "[FBAN/AudienceNetworkForAndroid;FBSN/Android]");
                        httpURLConnection2.setDoOutput(true);
                        httpURLConnection2.setDoInput(true);
                        httpURLConnection2.connect();
                        String string = UUID.randomUUID().toString();
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("attempt", "0");
                        DexLoadErrorReporter.addEnvFields(context, jSONObject, string);
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("subtype", "generic");
                        jSONObject2.put("subtype_code", "1320");
                        jSONObject2.put("caught_exception", "1");
                        jSONObject2.put("stacktrace", str);
                        JSONObject jSONObject3 = new JSONObject();
                        jSONObject3.put(TtmlNode.ATTR_ID, UUID.randomUUID().toString());
                        jSONObject3.put("type", "debug");
                        StringBuilder sb = new StringBuilder();
                        sb.append("");
                        httpURLConnection = httpURLConnection2;
                        try {
                            sb.append(System.currentTimeMillis() / 1000);
                            jSONObject3.put("session_time", sb.toString());
                            jSONObject3.put("time", "" + (System.currentTimeMillis() / 1000));
                            jSONObject3.put("session_id", string);
                            jSONObject3.put("data", jSONObject2);
                            jSONObject3.put("attempt", "0");
                            DexLoadErrorReporter.addEnvFields(context, jSONObject2, string);
                            JSONArray jSONArray = new JSONArray();
                            jSONArray.put(jSONObject3);
                            JSONObject jSONObject4 = new JSONObject();
                            jSONObject4.put("data", jSONObject);
                            jSONObject4.put("events", jSONArray);
                            String string2 = jSONObject4.toString();
                            DataOutputStream dataOutputStream2 = new DataOutputStream(httpURLConnection.getOutputStream());
                            try {
                                dataOutputStream2.writeBytes("payload=" + URLEncoder.encode(string2, "UTF-8"));
                                dataOutputStream2.flush();
                                byte[] bArr = new byte[16384];
                                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                                InputStream inputStream2 = httpURLConnection.getInputStream();
                                while (true) {
                                    try {
                                        int i = inputStream2.read(bArr);
                                        if (i == -1) {
                                            break;
                                        } else {
                                            byteArrayOutputStream.write(bArr, 0, i);
                                        }
                                    } catch (Throwable th) {
                                        th = th;
                                        inputStream = inputStream2;
                                        dataOutputStream = dataOutputStream2;
                                        try {
                                            Log.e(AudienceNetworkAds.TAG, "Can't send error.", th);
                                        } finally {
                                            if (dataOutputStream != null) {
                                                try {
                                                    dataOutputStream.close();
                                                } catch (Exception e) {
                                                    Log.e(AudienceNetworkAds.TAG, "Can't close connection.", e);
                                                }
                                            }
                                            if (inputStream != null) {
                                                try {
                                                    inputStream.close();
                                                } catch (Exception e2) {
                                                    Log.e(AudienceNetworkAds.TAG, "Can't close connection.", e2);
                                                }
                                            }
                                            if (httpURLConnection != null) {
                                                httpURLConnection.disconnect();
                                            }
                                        }
                                    }
                                }
                                byteArrayOutputStream.flush();
                                try {
                                    dataOutputStream2.close();
                                } catch (Exception e3) {
                                    Log.e(AudienceNetworkAds.TAG, "Can't close connection.", e3);
                                }
                                try {
                                    inputStream2.close();
                                } catch (Exception e4) {
                                    Log.e(AudienceNetworkAds.TAG, "Can't close connection.", e4);
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                dataOutputStream = dataOutputStream2;
                                inputStream = null;
                                Log.e(AudienceNetworkAds.TAG, "Can't send error.", th);
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            dataOutputStream = null;
                            inputStream = null;
                            Log.e(AudienceNetworkAds.TAG, "Can't send error.", th);
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        httpURLConnection = httpURLConnection2;
                    }
                } catch (Throwable th5) {
                    th = th5;
                    dataOutputStream = null;
                    inputStream = null;
                    httpURLConnection = null;
                }
            }
        }.start();
    }
}
