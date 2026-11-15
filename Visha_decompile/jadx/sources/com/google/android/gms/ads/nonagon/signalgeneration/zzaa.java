package com.google.android.gms.ads.nonagon.signalgeneration;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.ads.zzfgs;
import defpackage.cye;
import defpackage.enh;
import defpackage.lmg;
import defpackage.vmh;
import defpackage.xmg;
import defpackage.zef;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public final class zzaa {
    public static void a(xmg xmgVar, lmg lmgVar, String str, Pair... pairArr) {
        ConcurrentHashMap concurrentHashMapC = xmgVar.c();
        b(concurrentHashMapC, "action", str);
        for (Pair pair : pairArr) {
            b(concurrentHashMapC, (String) pair.first, (String) pair.second);
        }
        xmgVar.g(concurrentHashMapC);
    }

    public static void b(Map map, String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        map.put(str, str2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:39:0x007b  */
    public static zzfgs zza(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle("com.google.ads.mediation.admob.AdMobAdapter");
        if (bundle2 != null) {
            bundle = bundle2;
        }
        String string = bundle.getString("query_info_type");
        if (TextUtils.isEmpty(string)) {
            return zzfgs.SCAR_REQUEST_TYPE_UNSPECIFIED;
        }
        switch (string) {
            case "requester_type_0":
                return zzfgs.SCAR_REQUEST_TYPE_ADMOB;
            case "requester_type_1":
                return zzfgs.SCAR_REQUEST_TYPE_INBOUND_MEDIATION;
            case "requester_type_2":
                return zzfgs.SCAR_REQUEST_TYPE_GBID;
            case "requester_type_3":
                return zzfgs.SCAR_REQUEST_TYPE_GOLDENEYE;
            case "requester_type_4":
                return zzfgs.SCAR_REQUEST_TYPE_YAVIN;
            case "requester_type_5":
                return zzfgs.SCAR_REQUEST_TYPE_UNITY;
            case "requester_type_6":
                return zzfgs.SCAR_REQUEST_TYPE_PAW;
            case "requester_type_7":
                return zzfgs.SCAR_REQUEST_TYPE_GUILDER;
            case "requester_type_8":
                return zzfgs.SCAR_REQUEST_TYPE_GAM_S2S;
            default:
                return zzfgs.SCAR_REQUEST_TYPE_UNSPECIFIED;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:36:0x006c  */
    public static String zzb(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return "unspecified";
        }
        switch (str) {
            case "requester_type_0":
                return "0";
            case "requester_type_1":
                return "1";
            case "requester_type_2":
                return "2";
            case "requester_type_3":
                return "3";
            case "requester_type_4":
                return "4";
            case "requester_type_5":
                return "5";
            case "requester_type_6":
                return "6";
            case "requester_type_7":
                return "7";
            case "requester_type_8":
                return "8";
            default:
                return str;
        }
    }

    @Nullable
    public static String zzc(com.google.android.gms.ads.internal.client.zzm zzmVar) {
        Bundle bundle;
        return (zzmVar == null || (bundle = zzmVar.zzc) == null) ? "unspecified" : bundle.getString("query_info_type");
    }

    public static void zzd(final xmg xmgVar, @Nullable lmg lmgVar, final String str, final Pair... pairArr) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(cye.T6)).booleanValue()) {
            final lmg lmgVar2 = null;
            zef.a.execute(new Runnable(lmgVar2, str, pairArr) {
                public final String zzb;
                public final Pair[] zzc;

                {
                    this.zzb = str;
                    this.zzc = pairArr;
                }

                @Override
                public final void run() {
                    zzaa.a(this.zza, null, this.zzb, this.zzc);
                }
            });
        }
    }

    public static boolean zzf(vmh vmhVar) {
        return zzg(vmhVar.a.a) != 1;
    }

    public static int zzg(enh enhVar) {
        if (enhVar.r) {
            return 2;
        }
        com.google.android.gms.ads.internal.client.zzm zzmVar = enhVar.d;
        com.google.android.gms.ads.internal.client.zzc zzcVar = zzmVar.zzs;
        if (zzcVar == null && zzmVar.zzx == null) {
            return 1;
        }
        if (zzcVar == null || zzmVar.zzx == null) {
            return zzcVar != null ? 3 : 4;
        }
        return 5;
    }
}
