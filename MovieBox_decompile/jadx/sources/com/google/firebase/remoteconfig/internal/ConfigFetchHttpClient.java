package com.google.firebase.remoteconfig.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.util.Log;
import androidx.annotation.Keep;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.google.android.gms.common.util.AndroidUtilsLight;
import com.google.android.gms.common.util.Hex;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigClientException;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigException;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigServerException;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class ConfigFetchHttpClient {

    private static final Pattern f31631h = Pattern.compile("^[^:]+:([0-9]+):(android|ios|web):([0-9a-f]+)");

    private final Context f31632a;

    private final String f31633b;

    private final String f31634c;

    private final String f31635d;

    private final String f31636e;

    private final long f31637f;

    private final long f31638g;

    public ConfigFetchHttpClient(Context context, String str, String str2, String str3, long j10, long j11) {
        this.f31632a = context;
        this.f31633b = str;
        this.f31634c = str2;
        this.f31635d = f(str);
        this.f31636e = str3;
        this.f31637f = j10;
        this.f31638g = j11;
    }

    private boolean a(JSONObject jSONObject) {
        try {
            return !jSONObject.get("state").equals("NO_CHANGE");
        } catch (JSONException unused) {
            return true;
        }
    }

    private String b(long j10) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        return simpleDateFormat.format(Long.valueOf(j10));
    }

    private JSONObject c(String str, String str2, Map map, Long l10) throws FirebaseRemoteConfigClientException {
        HashMap map2 = new HashMap();
        if (str == null) {
            throw new FirebaseRemoteConfigClientException("Fetch failed: Firebase installation id is null.");
        }
        map2.put(TmcConstants.EXTRA_APP_INSTANCE_ID, str);
        map2.put("appInstanceIdToken", str2);
        map2.put("appId", this.f31633b);
        Locale locale = this.f31632a.getResources().getConfiguration().locale;
        map2.put("countryCode", locale.getCountry());
        int i10 = Build.VERSION.SDK_INT;
        map2.put("languageCode", locale.toLanguageTag());
        map2.put("platformVersion", Integer.toString(i10));
        map2.put("timeZone", TimeZone.getDefault().getID());
        try {
            PackageInfo packageInfo = this.f31632a.getPackageManager().getPackageInfo(this.f31632a.getPackageName(), 0);
            if (packageInfo != null) {
                map2.put(TmcStartParams.KEY_APP_VERSION, packageInfo.versionName);
                map2.put("appBuild", Long.toString(x0.a.a(packageInfo)));
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        map2.put("packageName", this.f31632a.getPackageName());
        map2.put("sdkVersion", "22.0.1");
        map2.put("analyticsUserProperties", new JSONObject(map));
        if (l10 != null) {
            map2.put("firstOpenTime", b(l10.longValue()));
        }
        return new JSONObject(map2);
    }

    private static f e(JSONObject jSONObject, Date date) throws FirebaseRemoteConfigClientException {
        JSONObject jSONObject2;
        JSONArray jSONArray;
        JSONObject jSONObject3;
        try {
            f.b bVarD = f.l().d(date);
            JSONArray jSONArray2 = null;
            try {
                jSONObject2 = jSONObject.getJSONObject("entries");
            } catch (JSONException unused) {
                jSONObject2 = null;
            }
            if (jSONObject2 != null) {
                bVarD = bVarD.b(jSONObject2);
            }
            try {
                jSONArray = jSONObject.getJSONArray("experimentDescriptions");
            } catch (JSONException unused2) {
                jSONArray = null;
            }
            if (jSONArray != null) {
                bVarD = bVarD.c(jSONArray);
            }
            try {
                jSONObject3 = jSONObject.getJSONObject("personalizationMetadata");
            } catch (JSONException unused3) {
                jSONObject3 = null;
            }
            if (jSONObject3 != null) {
                bVarD = bVarD.e(jSONObject3);
            }
            String string = jSONObject.has("templateVersion") ? jSONObject.getString("templateVersion") : null;
            if (string != null) {
                bVarD.g(Long.parseLong(string));
            }
            try {
                jSONArray2 = jSONObject.getJSONArray("rolloutMetadata");
            } catch (JSONException unused4) {
            }
            if (jSONArray2 != null) {
                bVarD = bVarD.f(jSONArray2);
            }
            return bVarD.a();
        } catch (JSONException e10) {
            throw new FirebaseRemoteConfigClientException("Fetch failed: fetch response could not be parsed.", e10);
        }
    }

    private static String f(String str) {
        Matcher matcher = f31631h.matcher(str);
        if (matcher.matches()) {
            return matcher.group(1);
        }
        return null;
    }

    private JSONObject g(URLConnection uRLConnection) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(uRLConnection.getInputStream(), "utf-8"));
        StringBuilder sb2 = new StringBuilder();
        while (true) {
            int i10 = bufferedReader.read();
            if (i10 == -1) {
                return new JSONObject(sb2.toString());
            }
            sb2.append((char) i10);
        }
    }

    private String h(String str, String str2) {
        return String.format("https://firebaseremoteconfig.googleapis.com/v1/projects/%s/namespaces/%s:fetch", str, str2);
    }

    private String i() {
        try {
            Context context = this.f31632a;
            byte[] packageCertificateHashBytes = AndroidUtilsLight.getPackageCertificateHashBytes(context, context.getPackageName());
            if (packageCertificateHashBytes != null) {
                return Hex.bytesToStringUppercase(packageCertificateHashBytes, false);
            }
            Log.e("FirebaseRemoteConfig", "Could not get fingerprint hash for package: " + this.f31632a.getPackageName());
            return null;
        } catch (PackageManager.NameNotFoundException e10) {
            Log.e("FirebaseRemoteConfig", "No such package: " + this.f31632a.getPackageName(), e10);
            return null;
        }
    }

    private void j(HttpURLConnection httpURLConnection, String str) {
        httpURLConnection.setRequestProperty("X-Goog-Api-Key", this.f31634c);
        httpURLConnection.setRequestProperty("X-Android-Package", this.f31632a.getPackageName());
        httpURLConnection.setRequestProperty("X-Android-Cert", i());
        httpURLConnection.setRequestProperty("X-Google-GFE-Can-Retry", "yes");
        httpURLConnection.setRequestProperty("X-Goog-Firebase-Installations-Auth", str);
        httpURLConnection.setRequestProperty(HttpHeaders.CONTENT_TYPE, "application/json");
        httpURLConnection.setRequestProperty("Accept", "application/json");
    }

    private void k(HttpURLConnection httpURLConnection, Map map) {
        for (Map.Entry entry : map.entrySet()) {
            httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
    }

    private void l(HttpURLConnection httpURLConnection, byte[] bArr) throws IOException {
        httpURLConnection.setFixedLengthStreamingMode(bArr.length);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(httpURLConnection.getOutputStream());
        bufferedOutputStream.write(bArr);
        bufferedOutputStream.flush();
        bufferedOutputStream.close();
    }

    private void m(HttpURLConnection httpURLConnection, String str, String str2, Map map) {
        httpURLConnection.setDoOutput(true);
        TimeUnit timeUnit = TimeUnit.SECONDS;
        httpURLConnection.setConnectTimeout((int) timeUnit.toMillis(this.f31637f));
        httpURLConnection.setReadTimeout((int) timeUnit.toMillis(this.f31638g));
        httpURLConnection.setRequestProperty("If-None-Match", str);
        j(httpURLConnection, str2);
        k(httpURLConnection, map);
    }

    HttpURLConnection d() {
        try {
            return (HttpURLConnection) new URL(h(this.f31635d, this.f31636e)).openConnection();
        } catch (IOException e10) {
            throw new FirebaseRemoteConfigException(e10.getMessage());
        }
    }

    @Keep
    ConfigFetchHandler.a fetch(HttpURLConnection httpURLConnection, String str, String str2, Map<String, String> map, String str3, Map<String, String> map2, Long l10, Date date) throws FirebaseRemoteConfigException {
        m(httpURLConnection, str3, str2, map2);
        try {
            try {
                l(httpURLConnection, c(str, str2, map, l10).toString().getBytes("utf-8"));
                httpURLConnection.connect();
                int responseCode = httpURLConnection.getResponseCode();
                if (responseCode != 200) {
                    throw new FirebaseRemoteConfigServerException(responseCode, httpURLConnection.getResponseMessage());
                }
                String headerField = httpURLConnection.getHeaderField("ETag");
                JSONObject jSONObjectG = g(httpURLConnection);
                httpURLConnection.disconnect();
                try {
                    httpURLConnection.getInputStream().close();
                } catch (IOException unused) {
                }
                f fVarE = e(jSONObjectG, date);
                return !a(jSONObjectG) ? ConfigFetchHandler.a.a(date, fVarE) : ConfigFetchHandler.a.b(fVarE, headerField);
            } catch (Throwable th2) {
                httpURLConnection.disconnect();
                try {
                    httpURLConnection.getInputStream().close();
                } catch (IOException unused2) {
                }
                throw th2;
            }
        } catch (IOException | JSONException e10) {
            throw new FirebaseRemoteConfigClientException("The client had an error while calling the backend!", e10);
        }
    }
}
