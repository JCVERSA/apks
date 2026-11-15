package com.google.android.gms.internal.ads;

import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.internal.ads.a5;
import com.google.android.gms.internal.ads.v0;
import com.google.android.gms.internal.ads.z4;
import com.google.android.gms.internal.ads.zzbbn$zzaf$zzd;
import defpackage.kyf;
import defpackage.pqh;
import defpackage.v7i;
import io.appmetrica.analytics.plugins.PluginErrorDetails;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class y4 implements v7i {
    public final boolean a;
    public final z4 b;

    public y4(z4 z4Var, boolean z) {
        this.a = z;
        this.b = z4Var;
    }

    @Override
    public final void zza(Throwable th) {
        int i = zze.zza;
        zzo.zzg("Failed to get signals bundle");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:22:0x005d  */
    /* JADX WARN: Code duplicated, block: B:25:0x006e  */
    /* JADX WARN: Code duplicated, block: B:27:0x0076  */
    /* JADX WARN: Code duplicated, block: B:28:0x0078  */
    /* JADX WARN: Code duplicated, block: B:30:0x0080  */
    /* JADX WARN: Code duplicated, block: B:31:0x0082  */
    /* JADX WARN: Code duplicated, block: B:33:0x008a  */
    /* JADX WARN: Code duplicated, block: B:34:0x008c  */
    /* JADX WARN: Code duplicated, block: B:36:0x0094  */
    /* JADX WARN: Code duplicated, block: B:37:0x0096  */
    /* JADX WARN: Code duplicated, block: B:39:0x0099 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:40:0x009b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:41:0x009d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:42:0x009f  */
    /* JADX WARN: Code duplicated, block: B:43:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:44:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:45:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:46:0x00ab  */
    @Override
    public final void zzb(Object obj) {
        List listEmptyList;
        List listAsList;
        final ArrayList arrayList;
        Iterator it;
        byte b;
        zzbbn$zzd$zza zzbbn_zzd_zza;
        z4 z4Var = this.b;
        kyf kyfVar = (kyf) obj;
        if (z4Var.a()) {
            return;
        }
        Bundle bundle = kyfVar.a;
        Object obj2 = bundle.get("ad_types");
        if (!(obj2 instanceof List)) {
            if (obj2 instanceof String[]) {
                listAsList = Arrays.asList((String[]) obj2);
            } else {
                listEmptyList = Collections.emptyList();
            }
            arrayList = new ArrayList();
            it = listEmptyList.iterator();
            while (it.hasNext()) {
                switch ((String) it.next()) {
                    case "banner":
                        b = 0;
                        break;
                    case "native":
                        b = 2;
                        break;
                    case "rewarded":
                        b = 3;
                        break;
                    case "interstitial":
                        b = 1;
                        break;
                    default:
                        b = -1;
                        break;
                }
                if (b != 0) {
                    zzbbn_zzd_zza = zzbbn$zzd$zza.BANNER;
                } else if (b != 1) {
                    zzbbn_zzd_zza = zzbbn$zzd$zza.INTERSTITIAL;
                } else if (b != 2) {
                    zzbbn_zzd_zza = zzbbn$zzd$zza.NATIVE_APP_INSTALL;
                } else if (b != 3) {
                    zzbbn_zzd_zza = zzbbn$zzd$zza.AD_FORMAT_TYPE_UNSPECIFIED;
                } else {
                    zzbbn_zzd_zza = zzbbn$zzd$zza.REWARD_BASED_VIDEO_AD;
                }
                arrayList.add(zzbbn_zzd_zza);
            }
            final zzbbn$zzaf$zzd zzbbn_zzaf_zzdC = z4.c(z4Var, bundle);
            final v0 v0VarB = z4.b(z4Var, bundle);
            final boolean z = this.a;
            z4Var.b.a(new pqh() {
                @Override
                public final Object zza(Object obj3) {
                    z4 z4Var2 = this.a.b;
                    SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj3;
                    if (z4Var2.a()) {
                        return null;
                    }
                    zzbbn$zzaf$zzd zzbbn_zzaf_zzd = zzbbn_zzaf_zzdC;
                    v0 v0Var = v0VarB;
                    ArrayList arrayList2 = arrayList;
                    boolean z2 = z;
                    byte[] bArrF = z4.f(z4Var2, z2, arrayList2, v0Var, zzbbn_zzaf_zzd);
                    a5.f(sQLiteDatabase, z2, true);
                    a5.c(sQLiteDatabase, z4Var2.f.d(), bArrF);
                    return null;
                }
            });
        }
        listAsList = (List) obj2;
        ArrayList arrayList2 = new ArrayList(listAsList.size());
        for (Object obj3 : listAsList) {
            if (obj3 instanceof String) {
                arrayList2.add((String) obj3);
            }
        }
        listEmptyList = Collections.unmodifiableList(arrayList2);
        arrayList = new ArrayList();
        it = listEmptyList.iterator();
        while (it.hasNext()) {
            switch ((String) it.next()) {
                case -1396342996:
                    if (!r2.equals("banner")) {
                        b = 0;
                    } else {
                        b = -1;
                    }
                    break;
                case -1052618729:
                    if (!r2.equals(PluginErrorDetails.Platform.NATIVE)) {
                        b = 2;
                    } else {
                        b = -1;
                    }
                    break;
                case -239580146:
                    if (!r2.equals("rewarded")) {
                        b = 3;
                    } else {
                        b = -1;
                    }
                    break;
                case 604727084:
                    if (!r2.equals("interstitial")) {
                        b = 1;
                    } else {
                        b = -1;
                    }
                    break;
                default:
                    b = -1;
                    break;
            }
            if (b != 0) {
                zzbbn_zzd_zza = zzbbn$zzd$zza.BANNER;
            } else if (b != 1) {
                zzbbn_zzd_zza = zzbbn$zzd$zza.INTERSTITIAL;
            } else if (b != 2) {
                zzbbn_zzd_zza = zzbbn$zzd$zza.NATIVE_APP_INSTALL;
            } else if (b != 3) {
                zzbbn_zzd_zza = zzbbn$zzd$zza.AD_FORMAT_TYPE_UNSPECIFIED;
            } else {
                zzbbn_zzd_zza = zzbbn$zzd$zza.REWARD_BASED_VIDEO_AD;
            }
            arrayList.add(zzbbn_zzd_zza);
        }
        final zzbbn$zzaf$zzd zzbbn_zzaf_zzdC2 = z4.c(z4Var, bundle);
        final v0 v0VarB2 = z4.b(z4Var, bundle);
        final boolean z2 = this.a;
        z4Var.b.a(new pqh() {
            @Override
            public final Object zza(Object obj4) {
                z4 z4Var2 = this.a.b;
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj4;
                if (z4Var2.a()) {
                    return null;
                }
                zzbbn$zzaf$zzd zzbbn_zzaf_zzd = zzbbn_zzaf_zzdC2;
                v0 v0Var = v0VarB2;
                ArrayList arrayList3 = arrayList;
                boolean z3 = z2;
                byte[] bArrF = z4.f(z4Var2, z3, arrayList3, v0Var, zzbbn_zzaf_zzd);
                a5.f(sQLiteDatabase, z3, true);
                a5.c(sQLiteDatabase, z4Var2.f.d(), bArrF);
                return null;
            }
        });
    }
}
