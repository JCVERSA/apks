package com.google.android.gms.ads.internal.util.client;

import android.net.TrafficStats;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.client.zzbd;
import com.hisavana.common.constant.ComConstants;
import defpackage.cye;
import defpackage.xyh;
import defpackage.yx0;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;

public final class zzu implements zze {
    public final String a;
    public String b;

    public zzu() {
        throw null;
    }

    /* JADX WARN: Code duplicated, block: B:43:0x010e A[PHI: r1
      0x010e: PHI (r1v3 com.google.android.gms.ads.internal.util.client.zzt) = 
      (r1v0 com.google.android.gms.ads.internal.util.client.zzt)
      (r1v2 com.google.android.gms.ads.internal.util.client.zzt)
      (r1v6 com.google.android.gms.ads.internal.util.client.zzt)
     binds: [B:42:0x010c, B:38:0x00e7, B:30:0x00ba] A[DONT_GENERATE, DONT_INLINE]] */
    @Override
    @WorkerThread
    public final zzt zza(String str) {
        zzt zztVar = zzt.PERMANENT_FAILURE;
        try {
            try {
                if (yx0.a()) {
                    TrafficStats.setThreadStatsTag(263);
                }
                zzo.zze("Pinging URL: " + str);
                URL url = new URI(str).toURL();
                int i = xyh.a;
                HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
                try {
                    zzbb.zzb();
                    String str2 = this.a;
                    httpURLConnection.setConnectTimeout(ComConstants.defScheduleTime);
                    httpURLConnection.setInstanceFollowRedirects(true);
                    httpURLConnection.setReadTimeout(ComConstants.defScheduleTime);
                    if (str2 != null) {
                        httpURLConnection.setRequestProperty("User-Agent", str2);
                    }
                    httpURLConnection.setUseCaches(false);
                    zzl zzlVar = new zzl(null);
                    zzlVar.zzc(httpURLConnection, null);
                    int responseCode = httpURLConnection.getResponseCode();
                    zzlVar.zze(httpURLConnection, responseCode);
                    if (responseCode < 200 || responseCode >= 300) {
                        zzo.zzj("Received non-success response code " + responseCode + " from pinging URL: " + str);
                        if (responseCode == 502) {
                            zztVar = zzt.RETRIABLE_FAILURE;
                        }
                    } else {
                        if (((Boolean) zzbd.zzc().b(cye.T7)).booleanValue()) {
                            this.b = httpURLConnection.getHeaderField("X-Afma-Ad-Event-Value");
                        }
                        zztVar = zzt.SUCCESS;
                    }
                    httpURLConnection.disconnect();
                    if (yx0.a()) {
                        TrafficStats.clearThreadStatsTag();
                    }
                } catch (Throwable th) {
                    httpURLConnection.disconnect();
                    throw th;
                }
            } catch (Throwable th2) {
                if (yx0.a()) {
                    TrafficStats.clearThreadStatsTag();
                }
                throw th2;
            }
        } catch (IOException | RuntimeException e) {
            zzo.zzj("Error while pinging URL: " + str + ". " + e.getMessage());
            zztVar = zzt.RETRIABLE_FAILURE;
            if (yx0.a()) {
                TrafficStats.clearThreadStatsTag();
            }
        } catch (IndexOutOfBoundsException | URISyntaxException e2) {
            zzo.zzj("Error while parsing ping URL: " + str + ". " + e2.getMessage());
            if (yx0.a()) {
                TrafficStats.clearThreadStatsTag();
            }
        }
        return zztVar;
    }

    @Nullable
    public final String zzb() {
        return this.b;
    }

    public zzu(@Nullable String str) {
        this.a = str;
    }
}
