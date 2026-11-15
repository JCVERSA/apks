package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.JsonReader;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzm;
import com.google.android.gms.ads.internal.client.zzn;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import defpackage.cog;
import defpackage.cye;
import defpackage.tng;
import defpackage.ung;
import defpackage.yng;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

public final class zzdsm extends zzbkk {
    private final cog zza;
    private final yng zzb;
    private final Map zzc = new HashMap();

    public zzdsm(cog cogVar, yng yngVar) {
        this.zza = cogVar;
        this.zzb = yngVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:35:0x0081  */
    private static zzm zzc(Map map) {
        zzn zznVar = new zzn();
        String str = (String) map.get("ad_request");
        if (str == null) {
            return zznVar.zza();
        }
        JsonReader jsonReader = new JsonReader(new StringReader(Uri.decode(str)));
        try {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                switch (jsonReader.nextName()) {
                    case "extras":
                        jsonReader.beginObject();
                        Bundle bundle = new Bundle();
                        while (jsonReader.hasNext()) {
                            bundle.putString(jsonReader.nextName(), jsonReader.nextString());
                        }
                        jsonReader.endObject();
                        zznVar.zzb(bundle);
                        break;
                    case "keywords":
                        jsonReader.beginArray();
                        ArrayList arrayList = new ArrayList();
                        while (jsonReader.hasNext()) {
                            arrayList.add(jsonReader.nextString());
                        }
                        jsonReader.endArray();
                        zznVar.zze(arrayList);
                        break;
                    case "isTestDevice":
                        zznVar.zzd(jsonReader.nextBoolean());
                        break;
                    case "tagForChildDirectedTreatment":
                        if (!jsonReader.nextBoolean()) {
                            zznVar.zzh(0);
                            break;
                        } else {
                            zznVar.zzh(1);
                            break;
                        }
                        break;
                    case "tagForUnderAgeOfConsent":
                        if (!jsonReader.nextBoolean()) {
                            zznVar.zzi(0);
                            break;
                        } else {
                            zznVar.zzi(1);
                            break;
                        }
                        break;
                    case "maxAdContentRating":
                        String strNextString = jsonReader.nextString();
                        if (!RequestConfiguration.zza.contains(strNextString)) {
                            break;
                        } else {
                            zznVar.zzf(strNextString);
                            break;
                        }
                        break;
                    case "httpTimeoutMillis":
                        zznVar.zzc(jsonReader.nextInt());
                        break;
                    default:
                        jsonReader.skipValue();
                        break;
                }
            }
            jsonReader.endObject();
        } catch (IOException unused) {
            int i = zze.zza;
            zzo.zze("Ad Request json was malformed, parsing ended early.");
        }
        zzm zzmVarZza = zznVar.zza();
        Bundle bundle2 = zzmVarZza.zzm;
        Bundle bundle3 = bundle2.getBundle("com.google.ads.mediation.admob.AdMobAdapter");
        if (bundle3 == null) {
            bundle3 = zzmVarZza.zzc;
            bundle2.putBundle("com.google.ads.mediation.admob.AdMobAdapter", bundle3);
        }
        return new zzm(zzmVarZza.zza, zzmVarZza.zzb, bundle3, zzmVarZza.zzd, zzmVarZza.zze, zzmVarZza.zzf, zzmVarZza.zzg, zzmVarZza.zzh, zzmVarZza.zzi, zzmVarZza.zzj, zzmVarZza.zzk, zzmVarZza.zzl, bundle2, zzmVarZza.zzn, zzmVarZza.zzo, zzmVarZza.zzp, zzmVarZza.zzq, zzmVarZza.zzr, zzmVarZza.zzs, zzmVarZza.zzt, zzmVarZza.zzu, zzmVarZza.zzv, zzmVarZza.zzw, zzmVarZza.zzx, zzmVarZza.zzy, zzmVarZza.zzz);
    }

    @Override
    public final void zze() {
        this.zzc.clear();
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0065  */
    @Override
    public final void zzf(String str) throws RemoteException {
        byte b;
        if (((Boolean) zzbd.zzc().b(cye.aa)).booleanValue()) {
            zze.zza("Received H5 gmsg: ".concat(String.valueOf(str)));
            Uri uri = Uri.parse(str);
            zzv.zzq();
            Map mapZzQ = com.google.android.gms.ads.internal.util.zzs.zzQ(uri);
            String str2 = (String) mapZzQ.get("action");
            if (TextUtils.isEmpty(str2)) {
                zzo.zze("H5 gmsg did not contain an action");
                return;
            }
            int iHashCode = str2.hashCode();
            if (iHashCode != 579053441) {
                if (iHashCode == 871091088 && str2.equals("initialize")) {
                    b = 0;
                } else {
                    b = -1;
                }
            } else if (str2.equals("dispose_all")) {
                b = 1;
            } else {
                b = -1;
            }
            if (b == 0) {
                this.zzc.clear();
                this.zzb.a();
                return;
            }
            if (b == 1) {
                Map map = this.zzc;
                Iterator it = map.values().iterator();
                while (it.hasNext()) {
                    ((tng) it.next()).zza();
                }
                map.clear();
                return;
            }
            String str3 = (String) mapZzQ.get("obj_id");
            try {
                Objects.requireNonNull(str3);
                long j = Long.parseLong(str3);
                switch (str2) {
                    case "create_interstitial_ad":
                        Map map2 = this.zzc;
                        if (map2.size() >= ((Integer) zzbd.zzc().b(cye.ba)).intValue()) {
                            zzo.zzj("Could not create H5 ad, too many existing objects");
                            this.zzb.i(j);
                            break;
                        } else {
                            Long lValueOf = Long.valueOf(j);
                            if (!map2.containsKey(lValueOf)) {
                                String str4 = (String) mapZzQ.get("ad_unit");
                                if (!TextUtils.isEmpty(str4)) {
                                    ung ungVarZzb = this.zza.zzb();
                                    ungVarZzb.a(j);
                                    ungVarZzb.zza(str4);
                                    map2.put(lValueOf, ungVarZzb.zzc().zza());
                                    this.zzb.h(j);
                                    zze.zza("Created H5 interstitial #" + j + " with ad unit " + str4);
                                } else {
                                    zzo.zzj("Could not create H5 ad, missing ad unit id");
                                    this.zzb.i(j);
                                }
                            } else {
                                zzo.zze("Could not create H5 ad, object ID already exists");
                                this.zzb.i(j);
                            }
                            break;
                        }
                        break;
                    case "load_interstitial_ad":
                        tng tngVar = (tng) this.zzc.get(Long.valueOf(j));
                        if (tngVar == null) {
                            zzo.zze("Could not load H5 ad, object ID does not exist");
                            this.zzb.f(j);
                            break;
                        } else {
                            tngVar.a(zzc(mapZzQ));
                            break;
                        }
                        break;
                    case "show_interstitial_ad":
                        tng tngVar2 = (tng) this.zzc.get(Long.valueOf(j));
                        if (tngVar2 == null) {
                            zzo.zze("Could not show H5 ad, object ID does not exist");
                            this.zzb.f(j);
                            break;
                        } else {
                            tngVar2.zzc();
                            break;
                        }
                        break;
                    case "create_rewarded_ad":
                        Map map3 = this.zzc;
                        if (map3.size() >= ((Integer) zzbd.zzc().b(cye.ba)).intValue()) {
                            zzo.zzj("Could not create H5 ad, too many existing objects");
                            this.zzb.i(j);
                            break;
                        } else {
                            Long lValueOf2 = Long.valueOf(j);
                            if (!map3.containsKey(lValueOf2)) {
                                String str5 = (String) mapZzQ.get("ad_unit");
                                if (!TextUtils.isEmpty(str5)) {
                                    ung ungVarZzb2 = this.zza.zzb();
                                    ungVarZzb2.a(j);
                                    ungVarZzb2.zza(str5);
                                    map3.put(lValueOf2, ungVarZzb2.zzc().zzb());
                                    this.zzb.h(j);
                                    zze.zza("Created H5 rewarded #" + j + " with ad unit " + str5);
                                } else {
                                    zzo.zzj("Could not create H5 ad, missing ad unit id");
                                    this.zzb.i(j);
                                }
                            } else {
                                zzo.zze("Could not create H5 ad, object ID already exists");
                                this.zzb.i(j);
                            }
                            break;
                        }
                        break;
                    case "load_rewarded_ad":
                        tng tngVar3 = (tng) this.zzc.get(Long.valueOf(j));
                        if (tngVar3 == null) {
                            zzo.zze("Could not load H5 ad, object ID does not exist");
                            this.zzb.q(j);
                            break;
                        } else {
                            tngVar3.a(zzc(mapZzQ));
                            break;
                        }
                        break;
                    case "show_rewarded_ad":
                        tng tngVar4 = (tng) this.zzc.get(Long.valueOf(j));
                        if (tngVar4 == null) {
                            zzo.zze("Could not show H5 ad, object ID does not exist");
                            this.zzb.q(j);
                            break;
                        } else {
                            tngVar4.zzc();
                            break;
                        }
                        break;
                    case "dispose":
                        Map map4 = this.zzc;
                        Long lValueOf3 = Long.valueOf(j);
                        tng tngVar5 = (tng) map4.get(lValueOf3);
                        if (tngVar5 == null) {
                            zzo.zze("Could not dispose H5 ad, object ID does not exist");
                            break;
                        } else {
                            tngVar5.zza();
                            map4.remove(lValueOf3);
                            zze.zza("Disposed H5 ad #" + j);
                            break;
                        }
                        break;
                    default:
                        zzo.zze("H5 gmsg contained invalid action: ".concat(str2));
                        break;
                }
            } catch (NullPointerException | NumberFormatException unused) {
                zzo.zze("H5 gmsg did not contain a valid object id: ".concat(String.valueOf(str3)));
            }
        }
    }
}
