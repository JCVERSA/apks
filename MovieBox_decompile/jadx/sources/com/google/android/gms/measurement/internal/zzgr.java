package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Map;

public final class zzgr extends zznr {
    public zzgr(zznv zznvVar) {
        super(zznvVar);
    }

    @Override
    public final zzoo g_() {
        return super.g_();
    }

    @Override
    public final Clock zzb() {
        return super.zzb();
    }

    @Override
    protected final boolean zzc() {
        return false;
    }

    @Override
    public final zzab zzd() {
        return super.zzd();
    }

    @Override
    public final zzag zze() {
        return super.zze();
    }

    @Override
    public final zzaz zzf() {
        return super.zzf();
    }

    @Override
    public final zzt zzg() {
        return super.zzg();
    }

    @Override
    public final zzal zzh() {
        return super.zzh();
    }

    @Override
    public final zzgh zzi() {
        return super.zzi();
    }

    @Override
    public final zzgo zzj() {
        return super.zzj();
    }

    @Override
    public final zzha zzk() {
        return super.zzk();
    }

    @Override
    public final zzhv zzl() {
        return super.zzl();
    }

    @Override
    public final zzhl zzm() {
        return super.zzm();
    }

    @Override
    public final zzmw zzn() {
        return super.zzn();
    }

    @Override
    public final zznu zzo() {
        return super.zzo();
    }

    @Override
    public final zzos zzq() {
        return super.zzq();
    }

    @Override
    public final void zzr() {
        super.zzr();
    }

    @Override
    public final void zzs() {
        super.zzs();
    }

    @Override
    public final void zzt() {
        super.zzt();
    }

    public final boolean zzu() {
        zzal();
        ConnectivityManager connectivityManager = (ConnectivityManager) zza().getSystemService("connectivity");
        NetworkInfo activeNetworkInfo = null;
        if (connectivityManager != null) {
            try {
                activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            } catch (SecurityException unused) {
            }
        }
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    @Override
    public final Context zza() {
        return super.zza();
    }

    public final void zza(String str, URL url, byte[] bArr, Map<String, String> map, zzgu zzguVar) {
        zzt();
        zzal();
        Preconditions.checkNotNull(url);
        Preconditions.checkNotNull(bArr);
        Preconditions.checkNotNull(zzguVar);
        zzl().zza(new zzgw(this, str, url, bArr, map, zzguVar));
    }

    public final void zza(String str, zznw zznwVar, com.google.android.gms.internal.measurement.zzfy.zzj zzjVar, zzgu zzguVar) {
        zzt();
        zzal();
        try {
            URL url = new URI(zznwVar.zzb()).toURL();
            g_();
            zzl().zza(new zzgw(this, str, url, zzjVar.zzca(), zznwVar.zzc(), zzguVar));
        } catch (IllegalArgumentException | MalformedURLException | URISyntaxException unused) {
            zzj().zzg().zza("Failed to parse URL. Not uploading MeasurementBatch. appId", zzgo.zza(str), zznwVar.zzb());
        }
    }

    public static byte[] zza(HttpURLConnection httpURLConnection) throws IOException {
        InputStream inputStream = null;
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            inputStream = httpURLConnection.getInputStream();
            byte[] bArr = new byte[1024];
            while (true) {
                int i10 = inputStream.read(bArr);
                if (i10 > 0) {
                    byteArrayOutputStream.write(bArr, 0, i10);
                } else {
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    inputStream.close();
                    return byteArray;
                }
            }
        } catch (Throwable th2) {
            if (inputStream != null) {
                inputStream.close();
            }
            throw th2;
        }
    }
}
