package defpackage;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzl;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.zzdvg;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class utg implements pqh {
    public final Context a;
    public final String b;

    public utg(Context context, String str, ccf ccfVar, int i) {
        this.a = context;
        this.b = str;
    }

    @Override
    public final ttg zza(stg stgVar) {
        return b(stgVar.a, stgVar.b, stgVar.c, stgVar.d, stgVar.e, zzv.zzC().elapsedRealtime());
    }

    public final ttg b(String str, int i, Map map, byte[] bArr, String str2, long j) throws Throwable {
        HttpURLConnection httpURLConnection;
        URL url;
        try {
            ttg ttgVar = new ttg();
            String str3 = this.b;
            int i2 = zze.zza;
            zzo.zzi("SDK version: " + str3);
            zzo.zze("AdRequestServiceImpl: Sending request: " + str);
            URL url2 = new URL(str);
            HashMap map2 = new HashMap();
            int i3 = 0;
            while (true) {
                int i4 = xyh.a;
                HttpURLConnection httpURLConnection2 = (HttpURLConnection) url2.openConnection();
                try {
                    httpURLConnection = httpURLConnection2;
                    try {
                        try {
                            zzv.zzq().zzg(this.a, str3, false, httpURLConnection2, false, i);
                            for (Map.Entry entry : map.entrySet()) {
                                httpURLConnection.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
                            }
                            if (!TextUtils.isEmpty(str2)) {
                                httpURLConnection.setRequestProperty("Content-Type", str2);
                            }
                            Closeable closeable = null;
                            zzl zzlVar = new zzl(null);
                            try {
                                zzlVar.zzc(httpURLConnection, bArr);
                            } catch (Throwable th) {
                                zzo.zzh("Network request logging failed.", th);
                                zzv.zzp().w(th, "HttpRequestFunction.logAdRequest");
                            }
                            int length = bArr.length;
                            if (length > 0) {
                                httpURLConnection.setDoOutput(true);
                                httpURLConnection.setFixedLengthStreamingMode(length);
                                try {
                                    BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(httpURLConnection.getOutputStream());
                                    try {
                                        bufferedOutputStream.write(bArr);
                                        pv4.a(bufferedOutputStream);
                                    } catch (Throwable th2) {
                                        th = th2;
                                        closeable = bufferedOutputStream;
                                        pv4.a(closeable);
                                        throw th;
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                }
                            }
                            int responseCode = httpURLConnection.getResponseCode();
                            for (Map.Entry<String, List<String>> entry2 : httpURLConnection.getHeaderFields().entrySet()) {
                                String key = entry2.getKey();
                                List<String> value = entry2.getValue();
                                if (map2.containsKey(key)) {
                                    ((List) map2.get(key)).addAll(value);
                                } else {
                                    map2.put(key, new ArrayList(value));
                                }
                            }
                            zzlVar.zze(httpURLConnection, responseCode);
                            ttgVar.a = responseCode;
                            ttgVar.b = map2;
                            ttgVar.c = "";
                            if (responseCode >= 200 && responseCode < 300) {
                                try {
                                    InputStreamReader inputStreamReader = new InputStreamReader(httpURLConnection.getInputStream());
                                    try {
                                        zzv.zzq();
                                        StringBuilder sb = new StringBuilder(8192);
                                        char[] cArr = new char[2048];
                                        while (true) {
                                            int i5 = inputStreamReader.read(cArr);
                                            if (i5 == -1) {
                                                break;
                                            }
                                            sb.append(cArr, 0, i5);
                                        }
                                        String string = sb.toString();
                                        pv4.a(inputStreamReader);
                                        zzlVar.zzg(string);
                                        ttgVar.c = string;
                                        if (TextUtils.isEmpty(string)) {
                                            if (!((Boolean) zzbd.zzc().b(cye.C5)).booleanValue()) {
                                                throw new zzdvg(3);
                                            }
                                        }
                                        ttgVar.d = zzv.zzC().elapsedRealtime() - j;
                                        break;
                                    } catch (Throwable th4) {
                                        th = th4;
                                        closeable = inputStreamReader;
                                        pv4.a(closeable);
                                        throw th;
                                    }
                                } catch (Throwable th5) {
                                    th = th5;
                                }
                            } else {
                                if (responseCode < 300 || responseCode >= 400) {
                                    zzo.zzj("Received error HTTP response code: " + responseCode);
                                    throw new zzdvg(1, "Received error HTTP response code: " + responseCode);
                                }
                                String headerField = httpURLConnection.getHeaderField("Location");
                                if (TextUtils.isEmpty(headerField)) {
                                    zzo.zzj("No location header to follow redirect.");
                                    throw new zzdvg(1, "No location header to follow redirect");
                                }
                                if (((Boolean) zzbd.zzc().b(cye.R7)).booleanValue()) {
                                    try {
                                        url = new URI(headerField).toURL();
                                    } catch (URISyntaxException e) {
                                        throw new zzdvg(1, e.getMessage(), e);
                                    }
                                } else {
                                    url = new URL(headerField);
                                }
                                int i6 = i3 + 1;
                                if (i6 > ((Integer) zzbd.zzc().b(cye.l5)).intValue()) {
                                    zzo.zzj("Too many redirects.");
                                    throw new zzdvg(1, "Too many redirects");
                                }
                                httpURLConnection.disconnect();
                                url2 = url;
                                i3 = i6;
                            }
                        } catch (Throwable th6) {
                            th = th6;
                            httpURLConnection.disconnect();
                            throw th;
                        }
                    } catch (zzdvg e2) {
                        e = e2;
                        if (!((Boolean) zzbd.zzc().b(cye.t8)).booleanValue()) {
                            throw e;
                        }
                        ttgVar.d = zzv.zzC().elapsedRealtime() - j;
                    }
                } catch (zzdvg e3) {
                    e = e3;
                    httpURLConnection = httpURLConnection2;
                } catch (Throwable th7) {
                    th = th7;
                    httpURLConnection = httpURLConnection2;
                }
            }
            httpURLConnection.disconnect();
            return ttgVar;
        } catch (IOException e4) {
            String strValueOf = String.valueOf(e4.getMessage());
            int i7 = zze.zza;
            String strConcat = "Error while connecting to ad server: ".concat(strValueOf);
            zzo.zzj(strConcat);
            throw new zzdvg(1, strConcat, e4);
        }
    }
}
