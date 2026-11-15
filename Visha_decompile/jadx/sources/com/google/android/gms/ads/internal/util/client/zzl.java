package com.google.android.gms.ads.internal.util.client;

import android.util.JsonWriter;
import androidx.annotation.Nullable;
import androidx.browser.trusted.sharing.ShareTarget;
import androidx.core.app.NotificationCompat;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.hisavana.common.tracking.TrackingKey;
import com.transsion.audiotagger.audio.flac.FlacTagCreator;
import defpackage.fy0;
import defpackage.h80;
import defpackage.j6j;
import defpackage.m02;
import java.io.IOException;
import java.io.StringWriter;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import org.mozilla.javascript.ES6Iterator;

public final class zzl {
    public static boolean c = false;
    public static boolean d = false;
    public static final int zza = 0;
    public final List a;
    public static final Object b = new Object();
    public static final fy0 e = m02.a();
    public static final Set f = new HashSet(Arrays.asList(new String[0]));

    public zzl() {
        throw null;
    }

    public static void a(String str, String str2, Map map, byte[] bArr, JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("params").beginObject();
        jsonWriter.name("firstline").beginObject();
        jsonWriter.name("uri").value(str);
        jsonWriter.name("verb").value(str2);
        jsonWriter.endObject();
        h(jsonWriter, map);
        if (bArr != null) {
            jsonWriter.name(TtmlNode.TAG_BODY).value(h80.a(bArr));
        }
        jsonWriter.endObject();
    }

    public static void b(int i, Map map, JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("params").beginObject();
        jsonWriter.name("firstline").beginObject();
        jsonWriter.name(TrackingKey.CODE).value(i);
        jsonWriter.endObject();
        h(jsonWriter, map);
        jsonWriter.endObject();
    }

    public static synchronized void c(String str) {
        try {
            zzo.zzi("GMA Debug BEGIN");
            int i = 0;
            while (i < str.length()) {
                int i2 = i + FlacTagCreator.DEFAULT_PADDING;
                zzo.zzi("GMA Debug CONTENT ".concat(String.valueOf(str.substring(i, Math.min(i2, str.length())))));
                i = i2;
            }
            zzo.zzi("GMA Debug FINISH");
        } catch (Throwable th) {
            throw th;
        }
    }

    public static void h(JsonWriter jsonWriter, Map map) throws IOException {
        if (map == null) {
            return;
        }
        jsonWriter.name("headers").beginArray();
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            if (!f.contains(str)) {
                if (!(entry.getValue() instanceof List)) {
                    if (!(entry.getValue() instanceof String)) {
                        zzo.zzg("Connection headers should be either Map<String, String> or Map<String, List<String>>");
                        break;
                    }
                    jsonWriter.beginObject();
                    jsonWriter.name("name").value(str);
                    jsonWriter.name(ES6Iterator.VALUE_PROPERTY).value((String) entry.getValue());
                    jsonWriter.endObject();
                } else {
                    for (String str2 : (List) entry.getValue()) {
                        jsonWriter.beginObject();
                        jsonWriter.name("name").value(str);
                        jsonWriter.name(ES6Iterator.VALUE_PROPERTY).value(str2);
                        jsonWriter.endObject();
                    }
                }
            }
        }
        jsonWriter.endArray();
    }

    public static void zzi() {
        synchronized (b) {
            c = false;
            d = false;
            zzo.zzj("Ad debug logging enablement is out of date.");
        }
    }

    public static void zzj(boolean z) {
        synchronized (b) {
            c = true;
            d = z;
        }
    }

    public static boolean zzk() {
        boolean z;
        synchronized (b) {
            try {
                z = false;
                if (c && d) {
                    z = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    public static boolean zzl() {
        boolean z;
        synchronized (b) {
            z = c;
        }
        return z;
    }

    public final void d(String str, j6j j6jVar) {
        StringWriter stringWriter = new StringWriter();
        JsonWriter jsonWriter = new JsonWriter(stringWriter);
        try {
            jsonWriter.beginObject();
            jsonWriter.name("timestamp").value(e.currentTimeMillis());
            jsonWriter.name(NotificationCompat.CATEGORY_EVENT).value(str);
            jsonWriter.name("components").beginArray();
            Iterator it = this.a.iterator();
            while (it.hasNext()) {
                jsonWriter.value((String) it.next());
            }
            jsonWriter.endArray();
            j6jVar.zza(jsonWriter);
            jsonWriter.endObject();
            jsonWriter.flush();
            jsonWriter.close();
        } catch (IOException e2) {
            zzo.zzh("unable to log", e2);
        }
        c(stringWriter.toString());
    }

    public final void e(final String str) {
        d("onNetworkRequestError", new j6j() {
            @Override
            public final void zza(JsonWriter jsonWriter) throws IOException {
                Object obj = zzl.b;
                jsonWriter.name("params").beginObject();
                String str2 = str;
                if (str2 != null) {
                    jsonWriter.name("error_description").value(str2);
                }
                jsonWriter.endObject();
            }
        });
    }

    public final void f(final String str, final String str2, final Map map, final byte[] bArr) {
        d("onNetworkRequest", new j6j() {
            @Override
            public final void zza(JsonWriter jsonWriter) throws IOException {
                zzl.a(str, str2, map, bArr, jsonWriter);
            }
        });
    }

    public final void g(final Map map, final int i) {
        d("onNetworkResponse", new j6j() {
            @Override
            public final void zza(JsonWriter jsonWriter) throws IOException {
                zzl.b(i, map, jsonWriter);
            }
        });
    }

    public final void zzc(HttpURLConnection httpURLConnection, @Nullable byte[] bArr) {
        if (zzk()) {
            f(new String(httpURLConnection.getURL().toString()), new String(httpURLConnection.getRequestMethod()), httpURLConnection.getRequestProperties() == null ? null : new HashMap(httpURLConnection.getRequestProperties()), bArr);
        }
    }

    public final void zzd(String str, String str2, @Nullable Map map, @Nullable byte[] bArr) {
        if (zzk()) {
            f(str, ShareTarget.METHOD_GET, map, bArr);
        }
    }

    public final void zze(HttpURLConnection httpURLConnection, int i) {
        if (zzk()) {
            String responseMessage = null;
            g(httpURLConnection.getHeaderFields() == null ? null : new HashMap(httpURLConnection.getHeaderFields()), i);
            if (i < 200 || i >= 300) {
                try {
                    responseMessage = httpURLConnection.getResponseMessage();
                } catch (IOException e2) {
                    zzo.zzj("Can not get error message from error HttpURLConnection\n".concat(String.valueOf(e2.getMessage())));
                }
                e(responseMessage);
            }
        }
    }

    public final void zzf(@Nullable Map map, int i) {
        if (zzk()) {
            g(map, i);
            if (i < 200 || i >= 300) {
                e(null);
            }
        }
    }

    public final void zzg(@Nullable String str) {
        if (zzk() && str != null) {
            zzh(str.getBytes());
        }
    }

    public final void zzh(final byte[] bArr) {
        d("onNetworkResponseBody", new j6j() {
            @Override
            public final void zza(JsonWriter jsonWriter) throws IOException {
                Object obj = zzl.b;
                jsonWriter.name("params").beginObject();
                byte[] bArr2 = bArr;
                int length = bArr2.length;
                String strA = h80.a(bArr2);
                if (length < 10000) {
                    jsonWriter.name(TtmlNode.TAG_BODY).value(strA);
                } else {
                    String strZzg = zzf.zzg(strA);
                    if (strZzg != null) {
                        jsonWriter.name("bodydigest").value(strZzg);
                    }
                }
                jsonWriter.name("bodylength").value(length);
                jsonWriter.endObject();
            }
        });
    }

    public zzl(@Nullable String str) {
        this.a = !zzk() ? new ArrayList() : Arrays.asList("network_request_".concat(String.valueOf(UUID.randomUUID().toString())));
    }
}
