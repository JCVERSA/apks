package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Color;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import app.fast.ssh.ProtectedFastSSH;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzdua {
    private final Context zza;
    private final zzdtg zzb;
    private final zzbbd zzc;
    private final VersionInfoParcel zzd;
    private final com.google.android.gms.ads.internal.zza zze;
    private final zzbif zzf;
    private final Executor zzg;
    private final zzbmk zzh;
    private final zzdus zzi;
    private final zzdxg zzj;
    private final ScheduledExecutorService zzk;
    private final zzdwb zzl;
    private final zzeaj zzm;
    private final zzfte zzn;
    private final zzele zzo;
    private final zzelp zzp;
    private final zzfma zzq;
    private final zzeae zzr;
    private final zzebm zzs;
    private final zzdcg zzt;

    public zzdua(Context context, zzdtg zzdtgVar, zzbbd zzbbdVar, VersionInfoParcel versionInfoParcel, com.google.android.gms.ads.internal.zza zzaVar, zzbif zzbifVar, Executor executor, zzflw zzflwVar, zzdus zzdusVar, zzdxg zzdxgVar, ScheduledExecutorService scheduledExecutorService, zzeaj zzeajVar, zzfte zzfteVar, zzele zzeleVar, zzdwb zzdwbVar, zzelp zzelpVar, zzfma zzfmaVar, zzeae zzeaeVar, zzebm zzebmVar, zzdcg zzdcgVar) {
        this.zza = context;
        this.zzb = zzdtgVar;
        this.zzc = zzbbdVar;
        this.zzd = versionInfoParcel;
        this.zze = zzaVar;
        this.zzf = zzbifVar;
        this.zzg = executor;
        this.zzh = zzflwVar.zzj;
        this.zzi = zzdusVar;
        this.zzj = zzdxgVar;
        this.zzk = scheduledExecutorService;
        this.zzm = zzeajVar;
        this.zzn = zzfteVar;
        this.zzo = zzeleVar;
        this.zzl = zzdwbVar;
        this.zzp = zzelpVar;
        this.zzq = zzfmaVar;
        this.zzr = zzeaeVar;
        this.zzs = zzebmVar;
        this.zzt = zzdcgVar;
    }

    public static final com.google.android.gms.ads.internal.client.zzew zzk(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject(ProtectedFastSSH.s("擔"));
        if (jSONObjectOptJSONObject2 == null || (jSONObjectOptJSONObject = jSONObjectOptJSONObject2.optJSONObject(ProtectedFastSSH.s("擕"))) == null) {
            return null;
        }
        return zzs(jSONObjectOptJSONObject);
    }

    public static final List zzl(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(ProtectedFastSSH.s("擔"));
        if (jSONObjectOptJSONObject == null) {
            return zzgxm.zzi();
        }
        JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray(ProtectedFastSSH.s("擖"));
        if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() <= 0) {
            return zzgxm.zzi();
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
            com.google.android.gms.ads.internal.client.zzew zzewVarZzs = zzs(jSONArrayOptJSONArray.optJSONObject(i));
            if (zzewVarZzs != null) {
                arrayList.add(zzewVarZzs);
            }
        }
        return zzgxm.zzq(arrayList);
    }

    private final ListenableFuture zzm(JSONArray jSONArray, boolean z, boolean z2, zzdzs zzdzsVar) {
        if (jSONArray == null || jSONArray.length() <= 0) {
            return zzhcy.zza(Collections.EMPTY_LIST);
        }
        ArrayList arrayList = new ArrayList();
        int length = z2 ? jSONArray.length() : 1;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzcZ)).booleanValue()) {
            this.zzr.zzf(zzdzsVar.zza(), com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis());
        }
        for (int i = 0; i < length; i++) {
            arrayList.add(zzn(jSONArray.optJSONObject(i), z, null));
        }
        return zzhcy.zzk(zzhcy.zzm(arrayList), zzdtz.zza, this.zzg);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0059  */
    private final ListenableFuture zzn(JSONObject jSONObject, boolean z, zzdzs zzdzsVar) {
        HashMap map;
        if (jSONObject == null) {
            return zzhcy.zza(null);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzeX)).booleanValue()) {
            if (jSONObject.has((String) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzeY))) {
                HashMap map2 = new HashMap();
                for (String str : ((String) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzeZ)).split(ProtectedFastSSH.s("擗"))) {
                    try {
                        map2.put(str, jSONObject.getString(str));
                    } catch (JSONException unused) {
                    }
                }
                map = map2;
            } else {
                map = null;
            }
        } else {
            map = null;
        }
        String strOptString = jSONObject.optString(ProtectedFastSSH.s("擘"));
        if (TextUtils.isEmpty(strOptString) && map == null) {
            return zzhcy.zza(null);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzcZ)).booleanValue() && zzdzsVar != null) {
            this.zzr.zzf(zzdzsVar.zza(), com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis());
        }
        double dOptDouble = jSONObject.optDouble(ProtectedFastSSH.s("擙"), 1.0d);
        boolean zOptBoolean = jSONObject.optBoolean(ProtectedFastSSH.s("據"), true);
        int iOptInt = jSONObject.optInt(ProtectedFastSSH.s("擛"), -1);
        int iOptInt2 = jSONObject.optInt(ProtectedFastSSH.s("擜"), -1);
        if (z || map != null) {
            return zzhcy.zza(new zzbmg(null, Uri.parse(strOptString), dOptDouble, iOptInt, iOptInt2, map));
        }
        return zzq(ProtectedFastSSH.s("擞"), jSONObject.optBoolean(ProtectedFastSSH.s("擝")), zzhcy.zzk(this.zzb.zza(strOptString, dOptDouble, zOptBoolean), new zzdtp(strOptString, dOptDouble, iOptInt, iOptInt2), this.zzg), null);
    }

    private static Integer zzo(JSONObject jSONObject, String str) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject(str);
            return Integer.valueOf(Color.rgb(jSONObject2.getInt(ProtectedFastSSH.s("擟")), jSONObject2.getInt(ProtectedFastSSH.s("擠")), jSONObject2.getInt(ProtectedFastSSH.s("擡"))));
        } catch (JSONException unused) {
            return null;
        }
    }

    private final ListenableFuture zzp(JSONObject jSONObject, zzfld zzfldVar, zzflg zzflgVar, com.google.android.gms.ads.internal.zzb zzbVar, zzcef zzcefVar) {
        ListenableFuture listenableFutureZzb = this.zzi.zzb(jSONObject.optString(ProtectedFastSSH.s("擢")), jSONObject.optString(ProtectedFastSSH.s("擣")), zzfldVar, zzflgVar, zzr(jSONObject.optInt(ProtectedFastSSH.s("擛"), 0), jSONObject.optInt(ProtectedFastSSH.s("擜"), 0)), zzbVar, zzcefVar);
        return zzhcy.zzj(listenableFutureZzb, new zzdtu(listenableFutureZzb), zzcgj.zzh);
    }

    private final ListenableFuture zzq(String str, boolean z, ListenableFuture listenableFuture, Object obj) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzda)).booleanValue()) {
            zzcgm.zza(listenableFuture, str, this.zzg);
        }
        return z ? zzhcy.zzj(listenableFuture, new zzdtw(listenableFuture), zzcgj.zzh) : zzhcy.zzh(listenableFuture, Exception.class, new zzdtv(null), zzcgj.zzh);
    }

    private final com.google.android.gms.ads.internal.client.zzr zzr(int i, int i2) {
        if (i == 0) {
            if (i2 == 0) {
                return com.google.android.gms.ads.internal.client.zzr.zzb();
            }
            i = 0;
        }
        return new com.google.android.gms.ads.internal.client.zzr(this.zza, new AdSize(i, i2));
    }

    private static final com.google.android.gms.ads.internal.client.zzew zzs(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        String strOptString = jSONObject.optString(ProtectedFastSSH.s("擤"));
        String strOptString2 = jSONObject.optString(ProtectedFastSSH.s("擥"));
        if (TextUtils.isEmpty(strOptString) || TextUtils.isEmpty(strOptString2)) {
            return null;
        }
        return new com.google.android.gms.ads.internal.client.zzew(strOptString, strOptString2);
    }

    public final ListenableFuture zza(JSONObject jSONObject, String str, zzdzs zzdzsVar) {
        return zzn(jSONObject.optJSONObject(str), this.zzh.zzb, zzdzsVar);
    }

    public final ListenableFuture zzb(JSONObject jSONObject, String str, zzdzs zzdzsVar) {
        zzbmk zzbmkVar = this.zzh;
        return zzm(jSONObject.optJSONArray(ProtectedFastSSH.s("擦")), zzbmkVar.zzb, zzbmkVar.zzd, zzdzsVar);
    }

    public final ListenableFuture zzc(JSONObject jSONObject, String str, zzfld zzfldVar, zzflg zzflgVar, com.google.android.gms.ads.internal.zzb zzbVar, zzcef zzcefVar) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzlG)).booleanValue()) {
            return zzhcy.zza(null);
        }
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(ProtectedFastSSH.s("擦"));
        if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() <= 0) {
            return zzhcy.zza(null);
        }
        JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(0);
        if (jSONObjectOptJSONObject == null) {
            return zzhcy.zza(null);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzeX)).booleanValue()) {
            if (jSONObjectOptJSONObject.has((String) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzeY))) {
                return zzhcy.zza(null);
            }
        }
        String strOptString = jSONObjectOptJSONObject.optString(ProtectedFastSSH.s("擢"));
        String strOptString2 = jSONObjectOptJSONObject.optString(ProtectedFastSSH.s("擣"));
        com.google.android.gms.ads.internal.client.zzr zzrVarZzr = zzr(jSONObjectOptJSONObject.optInt(ProtectedFastSSH.s("擛"), 0), jSONObjectOptJSONObject.optInt(ProtectedFastSSH.s("擜"), 0));
        if (TextUtils.isEmpty(strOptString2)) {
            return zzhcy.zza(null);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzcZ)).booleanValue()) {
            this.zzr.zzf(zzdzs.zzW.zza(), com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis());
        }
        ListenableFuture listenableFutureZzj = zzhcy.zzj(zzhcy.zza(null), new zzdtq(this, zzrVarZzr, zzfldVar, zzflgVar, zzbVar, zzcefVar, strOptString, strOptString2), zzcgj.zzf);
        ListenableFuture listenableFutureZzj2 = zzhcy.zzj(listenableFutureZzj, new zzdtr(listenableFutureZzj), zzcgj.zzh);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzda)).booleanValue()) {
            zzcgm.zza(listenableFutureZzj2, ProtectedFastSSH.s("擧"), this.zzg);
        }
        return listenableFutureZzj2;
    }

    public final ListenableFuture zzd(JSONObject jSONObject, String str, zzdzs zzdzsVar) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(ProtectedFastSSH.s("擨"));
        if (jSONObjectOptJSONObject == null) {
            return zzhcy.zza(null);
        }
        JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray(ProtectedFastSSH.s("擦"));
        JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject(ProtectedFastSSH.s("擩"));
        if (jSONArrayOptJSONArray == null && jSONObjectOptJSONObject2 != null) {
            jSONArrayOptJSONArray = new JSONArray();
            jSONArrayOptJSONArray.put(jSONObjectOptJSONObject2);
        }
        ListenableFuture listenableFutureZzk = zzhcy.zzk(zzm(jSONArrayOptJSONArray, false, true, zzdzsVar), new zzdts(this, jSONObjectOptJSONObject), this.zzg);
        return zzq(ProtectedFastSSH.s("擪"), jSONObjectOptJSONObject.optBoolean(ProtectedFastSSH.s("擝")), listenableFutureZzk, null);
    }

    public final ListenableFuture zze(JSONObject jSONObject, com.google.android.gms.ads.internal.zzb zzbVar, zzcef zzcefVar) {
        JSONObject jSONObjectOptJSONObject;
        if (jSONObject.optBoolean(ProtectedFastSSH.s("擫")) && (jSONObjectOptJSONObject = jSONObject.optJSONObject(ProtectedFastSSH.s("擬"))) != null) {
            String strOptString = jSONObjectOptJSONObject.optString(ProtectedFastSSH.s("擭"));
            if (TextUtils.isEmpty(strOptString)) {
                return zzhcy.zza(null);
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzcZ)).booleanValue()) {
                this.zzr.zzf(zzdzs.zzal.zza(), com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis());
            }
            ListenableFuture listenableFutureZzj = zzhcy.zzj(zzhcy.zza(null), new zzdtt(this, strOptString, zzcefVar, zzbVar), zzcgj.zzf);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzda)).booleanValue()) {
                zzcgm.zza(listenableFutureZzj, ProtectedFastSSH.s("擮"), this.zzg);
            }
            return listenableFutureZzj;
        }
        return zzhcy.zza(null);
    }

    public final ListenableFuture zzf(ListenableFuture listenableFuture) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzcZ)).booleanValue()) {
            this.zzr.zzf(zzdzs.zzah.zza(), com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis());
        }
        zzcgo zzcgoVar = new zzcgo();
        zzhcy.zzr(listenableFuture, new zzdto(this, zzcgoVar), zzcgj.zzf);
        return zzcgoVar;
    }

    public final ListenableFuture zzg(JSONObject jSONObject, zzfld zzfldVar, zzflg zzflgVar, com.google.android.gms.ads.internal.zzb zzbVar, zzcef zzcefVar) {
        zzdua zzduaVar;
        ListenableFuture listenableFutureZza;
        JSONObject jSONObjectZzi = com.google.android.gms.ads.internal.util.zzbp.zzi(jSONObject, ProtectedFastSSH.s("擯"), ProtectedFastSSH.s("擰"));
        if (jSONObjectZzi != null) {
            return zzp(jSONObjectZzi, zzfldVar, zzflgVar, zzbVar, zzcefVar);
        }
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(ProtectedFastSSH.s("擱"));
        if (jSONObjectOptJSONObject == null) {
            return zzhcy.zza(null);
        }
        String strOptString = jSONObjectOptJSONObject.optString(ProtectedFastSSH.s("擲"));
        boolean z = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzlF)).booleanValue() && jSONObjectOptJSONObject.has(ProtectedFastSSH.s("擣"));
        if (TextUtils.isEmpty(strOptString) && !z) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi(ProtectedFastSSH.s("擳"));
            return zzhcy.zza(null);
        }
        if (z) {
            zzduaVar = this;
            listenableFutureZza = zzduaVar.zzp(jSONObjectOptJSONObject, zzfldVar, zzflgVar, zzbVar, zzcefVar);
        } else {
            zzduaVar = this;
            listenableFutureZza = zzduaVar.zzi.zza(jSONObjectOptJSONObject, zzbVar, zzcefVar);
        }
        return zzq(true != z ? ProtectedFastSSH.s("擴") : ProtectedFastSSH.s("擵"), false, zzhcy.zzi(listenableFutureZza, ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzeP)).intValue(), TimeUnit.SECONDS, zzduaVar.zzk), null);
    }

    final ListenableFuture zzh(com.google.android.gms.ads.internal.client.zzr zzrVar, zzfld zzfldVar, zzflg zzflgVar, com.google.android.gms.ads.internal.zzb zzbVar, zzcef zzcefVar, String str, String str2, Object obj) throws zzcmb {
        zzebm zzebmVar;
        zzclm zzclmVarZza = this.zzj.zza(zzrVar, zzfldVar, zzflgVar);
        zzcgn zzcgnVarZza = zzcgn.zza(zzclmVarZza);
        zzdvy zzdvyVarZza = this.zzl.zza();
        zzcnk zzcnkVarZzP = zzclmVarZza.zzP();
        zzbix zzbixVar = zzbjg.zzpx;
        zzcnkVarZzP.zzab(zzdvyVarZza, zzdvyVarZza, zzdvyVarZza, zzdvyVarZza, zzdvyVarZza, false, null, !((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbixVar)).booleanValue() ? new com.google.android.gms.ads.internal.zzb(this.zza, null, null) : zzbVar, null, true != ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbixVar)).booleanValue() ? null : zzcefVar, this.zzo, this.zzn, this.zzm, null, zzdvyVarZza, null, null, null, null, null, null, null, this.zzt);
        zzclmVarZza.zzab(ProtectedFastSSH.s("擶"), zzbqg.zzs);
        zzclmVarZza.zzab(ProtectedFastSSH.s("擷"), zzbqg.zzt);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zziQ)).booleanValue()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zziS)).booleanValue() && (zzebmVar = this.zzs) != null) {
                zzclmVarZza.zzab(ProtectedFastSSH.s("擸"), new zzbqp(zzebmVar));
            }
        }
        zzclmVarZza.zzP().zzS(true);
        zzclmVarZza.zzP().zzG(new zzdty(zzcgnVarZza));
        zzclmVarZza.zzau(str, str2, null);
        return zzcgnVarZza;
    }

    final zzbmd zzi(JSONObject jSONObject, List list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        String strOptString = jSONObject.optString(ProtectedFastSSH.s("擹"));
        Integer numZzo = zzo(jSONObject, ProtectedFastSSH.s("擺"));
        Integer numZzo2 = zzo(jSONObject, ProtectedFastSSH.s("擻"));
        int iOptInt = jSONObject.optInt(ProtectedFastSSH.s("擼"), -1);
        boolean zOptBoolean = jSONObject.optBoolean(ProtectedFastSSH.s("擽"));
        int iOptInt2 = jSONObject.optInt(ProtectedFastSSH.s("擾"), 1000);
        return new zzbmd(strOptString, list, numZzo, numZzo2, iOptInt > 0 ? Integer.valueOf(iOptInt) : null, jSONObject.optInt(ProtectedFastSSH.s("擿"), 4000) + iOptInt2, this.zzh.zze, zOptBoolean);
    }

    final ListenableFuture zzj(String str, zzcef zzcefVar, com.google.android.gms.ads.internal.zzb zzbVar, Object obj) throws zzcmb {
        com.google.android.gms.ads.internal.zzt.zzd();
        Context context = this.zza;
        zzelp zzelpVar = this.zzp;
        zzcnw zzcnwVarZzb = zzcnw.zzb();
        zzbbd zzbbdVar = this.zzc;
        com.google.android.gms.ads.internal.zza zzaVar = this.zze;
        zzfma zzfmaVar = this.zzq;
        zzclm zzclmVarZza = zzcmc.zza(context, zzcnwVarZzb, ProtectedFastSSH.s("攀"), false, false, zzbbdVar, null, this.zzd, null, null, zzaVar, this.zzf, null, null, zzelpVar, zzfmaVar, this.zzm);
        zzcgn zzcgnVarZza = zzcgn.zza(zzclmVarZza);
        zzclmVarZza.zzP().zzG(new zzdtx(zzcgnVarZza));
        zzclmVarZza.loadData(Base64.encodeToString(str.getBytes(), 1), ProtectedFastSSH.s("攁"), ProtectedFastSSH.s("攂"));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzpx)).booleanValue()) {
            if (zzcefVar != null) {
                zzclmVarZza.zzP().zzj(zzcefVar);
            }
            zzclmVarZza.zzP().zzi(zzbVar);
        }
        return zzcgnVarZza;
    }
}
