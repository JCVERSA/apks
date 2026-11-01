package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Pair;
import app.fast.ssh.ProtectedFastSSH;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.StringReader;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.regex.Pattern;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzegq {
    private static final Pattern zza = Pattern.compile(ProtectedFastSSH.s("柂"));
    private final zzcob zzb;
    private final Context zzc;
    private final VersionInfoParcel zzd;
    private final zzflw zze;
    private final Executor zzf;
    private final ScheduledExecutorService zzg;
    private final String zzh;
    private final zzfrg zzi;
    private final zzeae zzj;
    private final zzfte zzk;
    private final zzdgt zzl;
    private final Object zzm = new Object();
    private String zzn;
    private List zzo;
    private Bundle zzp;
    private final zzccd zzq;

    zzegq(zzcob zzcobVar, Context context, VersionInfoParcel versionInfoParcel, zzflw zzflwVar, Executor executor, String str, zzfrg zzfrgVar, zzeae zzeaeVar, zzccd zzccdVar, zzejl zzejlVar, ScheduledExecutorService scheduledExecutorService, zzfte zzfteVar, zzdgt zzdgtVar) {
        this.zzb = zzcobVar;
        this.zzc = context;
        this.zzd = versionInfoParcel;
        this.zze = zzflwVar;
        this.zzf = executor;
        this.zzh = str;
        this.zzi = zzfrgVar;
        zzcobVar.zzB();
        this.zzj = zzeaeVar;
        this.zzq = zzccdVar;
        this.zzg = scheduledExecutorService;
        this.zzk = zzfteVar;
        this.zzl = zzdgtVar;
    }

    private final ListenableFuture zzg(String str, String str2) {
        ListenableFuture listenableFutureZza;
        String str3;
        String str4 = "";
        if (TextUtils.isEmpty(str)) {
            return zzhcy.zzc(new zzeqf(15, ProtectedFastSSH.s("柃")));
        }
        Context context = this.zzc;
        zzfqw zzfqwVarZzn = zzfqw.CC.zzn(context, 11);
        zzfqwVarZzn.zza();
        zzbva zzbvaVarZzb = com.google.android.gms.ads.internal.zzt.zzr().zzb(context, this.zzd, this.zzb.zzx());
        String strS = ProtectedFastSSH.s("柄");
        zzbuu zzbuuVar = zzbux.zza;
        zzbuq zzbuqVarZza = zzbvaVarZzb.zza(strS, zzbuuVar, zzbuuVar);
        boolean zBooleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzii)).booleanValue();
        String strS2 = ProtectedFastSSH.s("柅");
        String strS3 = ProtectedFastSSH.s("柆");
        if (zBooleanValue) {
            try {
                str3 = str;
                try {
                    JSONObject jSONObject = new JSONObject(str3);
                    this.zzn = jSONObject.optString(ProtectedFastSSH.s("柇"), "");
                    this.zzo = com.google.android.gms.ads.internal.util.zzbp.zza(new JSONObject(jSONObject.optString(ProtectedFastSSH.s("柈"), "")).getJSONArray(ProtectedFastSSH.s("柉")), null);
                } catch (JSONException unused) {
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzi(ProtectedFastSSH.s("柊"));
                }
            } catch (JSONException unused2) {
                str3 = str;
            }
            String string = this.zzn;
            List list = this.zzo;
            if (TextUtils.isEmpty(string)) {
                listenableFutureZza = zzhcy.zza(str3);
                this.zzj.zzd(strS3, strS2);
            } else {
                this.zzj.zzd(strS3, ProtectedFastSSH.s("柋"));
                String str5 = (String) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzik);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzij)).booleanValue()) {
                    List listZzg = zzguz.zzb(zza).zzg(string);
                    if (listZzg.size() < 2) {
                        listenableFutureZza = zzhcy.zzc(new zzeqf(1, ProtectedFastSSH.s("柌")));
                    } else {
                        str4 = (String) listZzg.get(1);
                        com.google.android.gms.ads.internal.zzt.zzc();
                        string = Uri.parse(string).buildUpon().query(null).build().toString();
                        listenableFutureZza = (zzhcq) zzhcy.zzh((zzhcq) zzhcy.zzi(zzhcq.zzw(zzcgj.zza.zzc(new zzegn(this, new zzeji(string, 60000, new HashMap(), str4.getBytes(StandardCharsets.UTF_8), str5, false)))), ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzil)).intValue(), TimeUnit.MILLISECONDS, this.zzg), Exception.class, new zzego(this, list), this.zzf);
                    }
                } else {
                    listenableFutureZza = (zzhcq) zzhcy.zzh((zzhcq) zzhcy.zzi(zzhcq.zzw(zzcgj.zza.zzc(new zzegn(this, new zzeji(string, 60000, new HashMap(), str4.getBytes(StandardCharsets.UTF_8), str5, false)))), ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzil)).intValue(), TimeUnit.MILLISECONDS, this.zzg), Exception.class, new zzego(this, list), this.zzf);
                }
            }
        } else {
            listenableFutureZza = zzhcy.zza(str);
            this.zzj.zzd(strS3, strS2);
        }
        zzegp zzegpVar = new zzegp(this, str2);
        Executor executor = this.zzf;
        ListenableFuture listenableFutureZzj = zzhcy.zzj(zzhcy.zzj(zzhcy.zzj(listenableFutureZza, zzegpVar, executor), new zzegl(this, zzbuqVarZza), executor), new zzegm(this), executor);
        zzfrf.zzd(listenableFutureZzj, this.zzi, zzfqwVarZzn);
        zzhcy.zzr(listenableFutureZzj, new zzegk(this), zzcgj.zzh);
        return listenableFutureZzj;
    }

    private final void zzh(zzdzs zzdzsVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzin)).booleanValue()) {
            this.zzj.zzf(zzdzsVar.zza(), com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis());
        }
    }

    private final String zzi(String str) {
        String strS = ProtectedFastSSH.s("柍");
        try {
            JSONObject jSONObject = new JSONObject(str);
            JSONArray jSONArray = jSONObject.getJSONArray(strS);
            if (jSONArray != null && ProtectedFastSSH.s("柎").equals(jSONArray.getString(0))) {
                jSONObject.put(strS, new JSONArray().put(this.zzh));
            }
            return jSONObject.toString();
        } catch (JSONException e) {
            String strConcat = ProtectedFastSSH.s("柏").concat(e.toString());
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi(strConcat);
            return str;
        }
    }

    private static final String zzj(String str) {
        try {
            return new JSONObject(str).optString(ProtectedFastSSH.s("某"), "");
        } catch (JSONException unused) {
            return "";
        }
    }

    /* JADX WARN: Code duplicated, block: B:85:0x0273 A[Catch: all -> 0x0286, TryCatch #1 {, blocks: (B:21:0x0084, B:23:0x00a2, B:25:0x00ae, B:27:0x00bf, B:29:0x00dd, B:31:0x0112, B:34:0x011d, B:36:0x0129, B:38:0x012f, B:42:0x0138, B:49:0x017a, B:45:0x0150, B:48:0x0161, B:52:0x0180, B:30:0x00f8, B:53:0x0198, B:60:0x01c1, B:63:0x01c9, B:67:0x01f2, B:69:0x0207, B:73:0x022b, B:75:0x0240, B:78:0x0254, B:80:0x025a, B:81:0x026b, B:83:0x026d, B:86:0x0276, B:85:0x0273, B:74:0x0235, B:70:0x021a, B:66:0x01d7, B:57:0x01ad, B:58:0x01b2), top: B:112:0x0084, inners: #0, #3 }] */
    public final ListenableFuture zza() {
        String strOptString;
        int i;
        List listAsList;
        String string;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzcU)).booleanValue()) {
            this.zzp = this.zze.zzt;
            this.zzj.zzf(zzdzs.zzo.zza(), com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis());
        }
        String strZzb = this.zze.zzd.zzx;
        if (!TextUtils.isEmpty(strZzb)) {
            String strZzj = zzj(strZzb);
            zzbix zzbixVar = zzbjg.zzie;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbixVar)).booleanValue() && strZzj.isEmpty()) {
                int iLastIndexOf = strZzb.lastIndexOf(ProtectedFastSSH.s("柑"));
                strZzj = iLastIndexOf != -1 ? strZzb.substring(iLastIndexOf + 12) : "";
            }
            if (TextUtils.isEmpty(strZzj)) {
                return zzhcy.zzc(new zzeqf(15, ProtectedFastSSH.s("柃")));
            }
            synchronized (this.zzm) {
                com.google.android.gms.ads.nonagon.signalgeneration.zzq zzqVarZzt = this.zzb.zzt();
                zzeae zzeaeVar = this.zzj;
                String strZzb2 = zzqVarZzt.zzb(strZzj, zzeaeVar);
                String str = null;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbixVar)).booleanValue()) {
                    String strS = ProtectedFastSSH.s("柒");
                    if (!TextUtils.isEmpty(strZzb2)) {
                        try {
                            JSONObject jSONObjectOptJSONObject = new JSONObject(strZzb2).optJSONObject(ProtectedFastSSH.s("染"));
                            if (jSONObjectOptJSONObject != null) {
                                String strOptString2 = jSONObjectOptJSONObject.optString(ProtectedFastSSH.s("柔"), "");
                                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzig)).booleanValue()) {
                                    listAsList = Arrays.asList(((String) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzih)).split(ProtectedFastSSH.s("柕")));
                                } else {
                                    listAsList = Arrays.asList(((String) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzif)).split(ProtectedFastSSH.s("柕")));
                                }
                                if (listAsList.contains(com.google.android.gms.ads.nonagon.signalgeneration.zzv.zzb(strOptString2))) {
                                    int iLastIndexOf2 = strZzb.lastIndexOf(ProtectedFastSSH.s("柖"));
                                    String strSubstring = iLastIndexOf2 != -1 ? strZzb.substring(0, iLastIndexOf2) : null;
                                    if (!TextUtils.isEmpty(strSubstring)) {
                                        try {
                                            byte[] bArrDecode = Base64.decode(strSubstring, 11);
                                            byte[] bytes = strZzj.getBytes(StandardCharsets.UTF_8);
                                            String strS2 = ProtectedFastSSH.s("柗");
                                            if (TextUtils.isEmpty(strZzb2)) {
                                                string = null;
                                            } else {
                                                try {
                                                    string = new JSONObject(strZzb2).getString(ProtectedFastSSH.s("柘"));
                                                } catch (JSONException e) {
                                                    com.google.android.gms.ads.internal.util.zze.zza(strS2.concat(e.toString()));
                                                    com.google.android.gms.ads.internal.zzt.zzh().zzh(e, ProtectedFastSSH.s("柙"));
                                                    string = null;
                                                }
                                            }
                                            strZzb = zzfmm.zzb(bArrDecode, bytes, string, zzeaeVar);
                                        } catch (IllegalArgumentException e2) {
                                            com.google.android.gms.ads.internal.util.zze.zza(strS.concat(e2.toString()));
                                            com.google.android.gms.ads.internal.zzt.zzh().zzh(e2, ProtectedFastSSH.s("柚"));
                                        }
                                    }
                                }
                            }
                        } catch (JSONException unused) {
                        }
                    }
                }
                String strS3 = ProtectedFastSSH.s("柛");
                String strS4 = ProtectedFastSSH.s("柜");
                if (TextUtils.isEmpty(strZzb)) {
                    strOptString = "";
                } else {
                    try {
                        strOptString = new JSONObject(strZzb).optString(ProtectedFastSSH.s("柝"), "");
                    } catch (JSONException unused2) {
                        strOptString = "";
                    }
                }
                if (TextUtils.isEmpty(strOptString)) {
                    i = 0;
                } else {
                    String str2 = "";
                    try {
                        str2 = new String(Base64.decode(strOptString, 0), StandardCharsets.UTF_8);
                    } catch (IllegalArgumentException e3) {
                        String.valueOf(strOptString);
                        com.google.android.gms.ads.internal.util.zze.zza(strS3.concat(String.valueOf(strOptString)));
                        com.google.android.gms.ads.internal.zzt.zzh().zzh(e3, ProtectedFastSSH.s("柞"));
                    }
                    List listZzg = zzguz.zza(zzgty.zzd(AbstractJsonLexerKt.COLON)).zzg(str2);
                    if (listZzg.size() == 2) {
                        str = (String) listZzg.get(0);
                        i = Integer.parseInt((String) listZzg.get(1));
                    } else {
                        String.valueOf(strOptString);
                        com.google.android.gms.ads.internal.util.zze.zza(strS4.concat(String.valueOf(strOptString)));
                        i = 0;
                    }
                }
                Pair pair = str != null ? new Pair(str, Integer.valueOf(i)) : new Pair("", 0);
                String str3 = (String) pair.first;
                int iIntValue = ((Integer) pair.second).intValue();
                if (TextUtils.isEmpty(str3) || iIntValue <= 0) {
                    zzqVarZzt.zzc(strZzj);
                } else {
                    if (zzqVarZzt.zzd(strZzj, str3)) {
                        return zzhcy.zzc(new zzeqf(10, ProtectedFastSSH.s("柟")));
                    }
                    if (!zzqVarZzt.zze(strZzj, str3, iIntValue)) {
                        zzqVarZzt.zzc(strZzj);
                    }
                }
                if (!TextUtils.isEmpty(strZzb2)) {
                    return zzg(strZzb, zzi(strZzb2));
                }
            }
        }
        com.google.android.gms.ads.internal.client.zzc zzcVar = this.zze.zzd.zzs;
        if (zzcVar != null) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzhW)).booleanValue()) {
                String str4 = zzcVar.zza;
                String str5 = zzcVar.zzb;
                String strZzj2 = zzj(str4);
                String strZzj3 = zzj(str5);
                if (TextUtils.isEmpty(strZzj3) || !strZzj2.equals(strZzj3)) {
                    this.zzj.zzc().put(ProtectedFastSSH.s("柠"), ProtectedFastSSH.s("柡"));
                } else {
                    this.zzb.zzt().zzc(strZzj2);
                    this.zzj.zzc().put(ProtectedFastSSH.s("某"), strZzj2);
                }
            }
            return zzg(zzcVar.zza, zzi(zzcVar.zzb));
        }
        return zzhcy.zzc(new zzeqf(14, ProtectedFastSSH.s("柢")));
    }

    final ListenableFuture zzb(zzbuq zzbuqVar, JSONObject jSONObject) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzcU)).booleanValue()) {
            this.zzj.zzf(zzdzs.zzp.zza(), com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis());
        }
        return zzbuqVar.zzb(jSONObject);
    }

    final ListenableFuture zzc(JSONObject jSONObject) {
        zzfll zzfllVar = new zzfll(this.zze);
        String string = jSONObject.toString();
        return zzhcy.zza(new zzflo(zzfllVar, zzfln.zza(new StringReader(string), this.zzp)));
    }

    final String zzd(zzeji zzejiVar) throws zzeqf {
        zzh(zzdzs.zzI);
        String strS = ProtectedFastSSH.s("柣");
        int i = 0;
        int i2 = -1;
        while (true) {
            try {
                if (i >= ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzim)).intValue()) {
                    StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 40);
                    sb.append(strS);
                    sb.append(i2);
                    throw new zzeqf(1, sb.toString());
                }
                zzejj zzejjVarZzb = new zzejk(this.zzc, this.zzd.afmaVersion, this.zzq, Binder.getCallingUid(), null).zzb(zzejiVar);
                zzejj zzejjVar = zzejjVarZzb;
                int i3 = zzejjVarZzb.zza;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzin)).booleanValue()) {
                    this.zzj.zzd(ProtectedFastSSH.s("柤"), String.valueOf(i));
                }
                if (i3 == 200) {
                    zzh(zzdzs.zzJ);
                    return zzejjVarZzb.zzc;
                }
                i++;
                i2 = i3;
            } catch (Exception e) {
                throw new zzeqf(1, e.getMessage() == null ? ProtectedFastSSH.s("查") : e.getMessage(), e);
            }
        }
    }

    final ListenableFuture zze(List list, Exception exc) {
        zzeqf zzeqfVar;
        com.google.android.gms.ads.internal.zzt.zzh().zzi(exc, ProtectedFastSSH.s("柦"));
        boolean z = exc instanceof TimeoutException;
        String strS = ProtectedFastSSH.s("柧");
        if (z) {
            zzeqfVar = new zzeqf(1, strS);
        } else if (exc instanceof zzeqf) {
            zzeqfVar = (zzeqf) exc;
        } else {
            zzeqfVar = new zzeqf(1, exc.getMessage() == null ? ProtectedFastSSH.s("查") : exc.getMessage());
        }
        String message = zzeqfVar.getMessage() == null ? "" : zzeqfVar.getMessage();
        if (list != null && !list.isEmpty()) {
            boolean zIsEmpty = TextUtils.isEmpty(message);
            String strS2 = ProtectedFastSSH.s("柨");
            if (!zIsEmpty) {
                if (message.contains(strS)) {
                    message = ProtectedFastSSH.s("柩");
                    strS2 = ProtectedFastSSH.s("柪");
                } else if (message.contains(ProtectedFastSSH.s("柣"))) {
                    List listZzg = zzguz.zza(zzgty.zzd(AbstractJsonLexerKt.COLON)).zzg(message);
                    if (listZzg.size() == 2) {
                        message = (String) listZzg.get(1);
                    }
                }
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(zzfta.zzd(zzfta.zzd((String) it.next(), ProtectedFastSSH.s("柫"), strS2), ProtectedFastSSH.s("柬"), message));
            }
            this.zzk.zza(arrayList, null);
        }
        return zzhcy.zzc(zzeqfVar);
    }

    final zzdgt zzf() {
        return this.zzl;
    }
}
