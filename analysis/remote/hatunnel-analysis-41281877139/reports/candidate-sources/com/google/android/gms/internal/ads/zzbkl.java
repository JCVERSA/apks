package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import androidx.browser.customtabs.CustomTabsCallback;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.CustomTabsSession;
import app.fast.ssh.ProtectedFastSSH;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.query.QueryInfo;
import java.util.Date;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzbkl {
    private final ScheduledExecutorService zza;
    private final com.google.android.gms.ads.nonagon.signalgeneration.zzj zzb;
    private final com.google.android.gms.ads.nonagon.signalgeneration.zza zzc;
    private final zzeao zzd;
    private Runnable zze;
    private zzbki zzf;
    private CustomTabsSession zzg;
    private String zzh;
    private long zzi = 0;
    private long zzj;
    private JSONArray zzk;
    private Context zzl;

    public zzbkl(ScheduledExecutorService scheduledExecutorService, com.google.android.gms.ads.nonagon.signalgeneration.zzj zzjVar, com.google.android.gms.ads.nonagon.signalgeneration.zza zzaVar, zzeao zzeaoVar) {
        this.zza = scheduledExecutorService;
        this.zzb = zzjVar;
        this.zzc = zzaVar;
        this.zzd = zzeaoVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x004f, code lost:
    
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(com.google.android.gms.internal.ads.zzbjg.zzlx)).booleanValue() != false) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void zzj() {
        ScheduledExecutorService scheduledExecutorService;
        zzbki zzbkiVar = this.zzf;
        if (zzbkiVar == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzf(ProtectedFastSSH.s("堽"));
            return;
        }
        if (zzbkiVar.zza().booleanValue()) {
            return;
        }
        if (this.zzh != null && this.zzg != null && (scheduledExecutorService = this.zza) != null) {
            if (this.zzi == 0 || com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime() > this.zzi) {
            }
            this.zzg.requestPostMessageChannel(Uri.parse(this.zzh));
            scheduledExecutorService.schedule(this.zze, ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzly)).longValue(), TimeUnit.MILLISECONDS);
            return;
        }
        com.google.android.gms.ads.internal.util.zze.zza(ProtectedFastSSH.s("堾"));
    }

    private final void zzk(JSONObject jSONObject) {
        try {
            if (this.zzk == null) {
                this.zzk = new JSONArray((String) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzlA));
            }
            jSONObject.put(ProtectedFastSSH.s("堿"), this.zzk);
        } catch (JSONException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg(ProtectedFastSSH.s("塀"), e);
        }
    }

    public final void zza(@Nonnull Context context, @Nonnull CustomTabsClient customTabsClient, @Nonnull String str, @Nullable CustomTabsCallback customTabsCallback) {
        if (context == null) {
            throw new IllegalArgumentException(ProtectedFastSSH.s("塇"));
        }
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException(ProtectedFastSSH.s("塆"));
        }
        if (customTabsClient == null) {
            throw new IllegalArgumentException(ProtectedFastSSH.s("塅"));
        }
        this.zzl = context;
        this.zzh = str;
        zzeao zzeaoVar = this.zzd;
        zzbki zzbkiVar = new zzbki(this, customTabsCallback, zzeaoVar);
        this.zzf = zzbkiVar;
        CustomTabsSession customTabsSessionNewSession = customTabsClient.newSession(zzbkiVar);
        this.zzg = customTabsSessionNewSession;
        if (customTabsSessionNewSession == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzf(ProtectedFastSSH.s("塁"));
        }
        com.google.android.gms.ads.nonagon.signalgeneration.zzv.zze(zzeaoVar, null, ProtectedFastSSH.s("塄"), new Pair(ProtectedFastSSH.s("塂"), ProtectedFastSSH.s("塃")));
    }

    @Nullable
    public final CustomTabsSession zzb() {
        return this.zzg;
    }

    final void zzc() {
        this.zzi = com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime() + ((long) ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzlw)).intValue());
        if (this.zze == null) {
            this.zze = new zzbkk(this);
        }
        zzj();
    }

    final void zzd(String str) {
        try {
            CustomTabsSession customTabsSession = this.zzg;
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(ProtectedFastSSH.s("塈"), true);
            jSONObject.put(ProtectedFastSSH.s("塉"), new Date(this.zzj).toString());
            zzk(jSONObject);
            if (((Boolean) zzblm.zzc.zze()).booleanValue()) {
                jSONObject.put(ProtectedFastSSH.s("塊"), this.zzc.zzb());
            }
            customTabsSession.postMessage(jSONObject.toString(), null);
            zzbkj zzbkjVar = new zzbkj(this, str);
            if (((Boolean) zzblm.zze.zze()).booleanValue()) {
                this.zzb.zzb(this.zzg, zzbkjVar);
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString(ProtectedFastSSH.s("塋"), ProtectedFastSSH.s("塌"));
            QueryInfo.generate(this.zzl, AdFormat.BANNER, new AdRequest.Builder().addNetworkExtrasBundle(AdMobAdapter.class, bundle).build(), zzbkjVar);
        } catch (JSONException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg(ProtectedFastSSH.s("塍"), e);
        }
    }

    final JSONObject zze(String str, String str2) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(ProtectedFastSSH.s("塎"), str);
        jSONObject.put(ProtectedFastSSH.s("塏"), str2);
        jSONObject.put(ProtectedFastSSH.s("塐"), ((Boolean) zzblm.zze.zze()).booleanValue() ? ((Long) zzblm.zzh.zze()).longValue() : 0L);
        zzk(jSONObject);
        if (((Boolean) zzblm.zzc.zze()).booleanValue()) {
            jSONObject.put(ProtectedFastSSH.s("塊"), this.zzc.zzb());
        }
        return jSONObject;
    }

    final JSONObject zzf(String str, String str2) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(ProtectedFastSSH.s("塎"), str);
        jSONObject.put(ProtectedFastSSH.s("塑"), str2);
        jSONObject.put(ProtectedFastSSH.s("塐"), ((Boolean) zzblm.zze.zze()).booleanValue() ? ((Long) zzblm.zzh.zze()).longValue() : 0L);
        zzk(jSONObject);
        if (((Boolean) zzblm.zzc.zze()).booleanValue()) {
            jSONObject.put(ProtectedFastSSH.s("塊"), this.zzc.zzb());
        }
        return jSONObject;
    }

    public final void zzg(long j) {
        this.zzj = j;
    }

    final void zzh() {
        zzj();
    }

    final CustomTabsSession zzi() {
        return this.zzg;
    }
}
