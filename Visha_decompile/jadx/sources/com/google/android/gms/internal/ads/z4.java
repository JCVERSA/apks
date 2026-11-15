package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.util.SparseArray;
import com.google.android.gms.ads.internal.util.zzg;
import com.google.android.gms.ads.internal.zzv;
import defpackage.lug;
import defpackage.lyf;
import defpackage.pug;
import defpackage.unh;
import defpackage.vug;
import defpackage.zef;
import java.util.ArrayList;

public final class z4 extends vug {
    public static final SparseArray h;
    public final Context c;
    public final lyf d;
    public final TelephonyManager e;
    public final pug f;
    public zzbbn$zzq g;

    static {
        SparseArray sparseArray = new SparseArray();
        h = sparseArray;
        sparseArray.put(NetworkInfo.DetailedState.CONNECTED.ordinal(), zzbbn$zzaf$zzd.CONNECTED);
        int iOrdinal = NetworkInfo.DetailedState.AUTHENTICATING.ordinal();
        zzbbn$zzaf$zzd zzbbn_zzaf_zzd = zzbbn$zzaf$zzd.CONNECTING;
        sparseArray.put(iOrdinal, zzbbn_zzaf_zzd);
        sparseArray.put(NetworkInfo.DetailedState.CONNECTING.ordinal(), zzbbn_zzaf_zzd);
        sparseArray.put(NetworkInfo.DetailedState.OBTAINING_IPADDR.ordinal(), zzbbn_zzaf_zzd);
        sparseArray.put(NetworkInfo.DetailedState.DISCONNECTING.ordinal(), zzbbn$zzaf$zzd.DISCONNECTING);
        int iOrdinal2 = NetworkInfo.DetailedState.BLOCKED.ordinal();
        zzbbn$zzaf$zzd zzbbn_zzaf_zzd2 = zzbbn$zzaf$zzd.DISCONNECTED;
        sparseArray.put(iOrdinal2, zzbbn_zzaf_zzd2);
        sparseArray.put(NetworkInfo.DetailedState.DISCONNECTED.ordinal(), zzbbn_zzaf_zzd2);
        sparseArray.put(NetworkInfo.DetailedState.FAILED.ordinal(), zzbbn_zzaf_zzd2);
        sparseArray.put(NetworkInfo.DetailedState.IDLE.ordinal(), zzbbn_zzaf_zzd2);
        sparseArray.put(NetworkInfo.DetailedState.SCANNING.ordinal(), zzbbn_zzaf_zzd2);
        sparseArray.put(NetworkInfo.DetailedState.SUSPENDED.ordinal(), zzbbn$zzaf$zzd.SUSPENDED);
        sparseArray.put(NetworkInfo.DetailedState.CAPTIVE_PORTAL_CHECK.ordinal(), zzbbn_zzaf_zzd);
        sparseArray.put(NetworkInfo.DetailedState.VERIFYING_POOR_LINK.ordinal(), zzbbn_zzaf_zzd);
    }

    public z4(Context context, lyf lyfVar, pug pugVar, lug lugVar, zzg zzgVar) {
        super(lugVar, zzgVar);
        this.c = context;
        this.d = lyfVar;
        this.f = pugVar;
        this.e = (TelephonyManager) context.getSystemService("phone");
    }

    public static v0 b(z4 z4Var, Bundle bundle) {
        zzbbn$zzab$zzb zzbbn_zzab_zzb;
        s0 s0VarD0 = v0.d0();
        int i = bundle.getInt("cnt", -2);
        int i2 = bundle.getInt("gnt", 0);
        if (i == -1) {
            z4Var.g = zzbbn$zzq.ENUM_TRUE;
        } else {
            z4Var.g = zzbbn$zzq.ENUM_FALSE;
            if (i == 0) {
                s0VarD0.w(zzbbn$zzab$zzc.CELL);
            } else if (i != 1) {
                s0VarD0.w(zzbbn$zzab$zzc.NETWORKTYPE_UNSPECIFIED);
            } else {
                s0VarD0.w(zzbbn$zzab$zzc.WIFI);
            }
            switch (i2) {
                case 1:
                case 2:
                case 4:
                case 7:
                case 11:
                case 16:
                    zzbbn_zzab_zzb = zzbbn$zzab$zzb.TWO_G;
                    break;
                case 3:
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                case 12:
                case 14:
                case 15:
                case 17:
                    zzbbn_zzab_zzb = zzbbn$zzab$zzb.THREE_G;
                    break;
                case 13:
                    zzbbn_zzab_zzb = zzbbn$zzab$zzb.LTE;
                    break;
                default:
                    zzbbn_zzab_zzb = zzbbn$zzab$zzb.CELLULAR_NETWORK_TYPE_UNSPECIFIED;
                    break;
            }
            s0VarD0.v(zzbbn_zzab_zzb);
        }
        return (v0) s0VarD0.q();
    }

    public static zzbbn$zzaf$zzd c(z4 z4Var, Bundle bundle) {
        return (zzbbn$zzaf$zzd) h.get(unh.a(unh.a(bundle, "device"), "network").getInt("active_network_state", -1), zzbbn$zzaf$zzd.UNSPECIFIED);
    }

    public static byte[] f(z4 z4Var, boolean z, ArrayList arrayList, v0 v0Var, zzbbn$zzaf$zzd zzbbn_zzaf_zzd) {
        z0 z0VarE0 = y0.E0();
        z0VarE0.I(arrayList);
        Context context = z4Var.c;
        z0VarE0.v(g(Settings.Global.getInt(context.getContentResolver(), "airplane_mode_on", 0) != 0));
        z0VarE0.w(zzv.zzr().zzg(context, z4Var.e));
        pug pugVar = z4Var.f;
        z0VarE0.C(pugVar.e());
        z0VarE0.B(pugVar.b());
        z0VarE0.x(pugVar.a());
        z0VarE0.y(zzbbn_zzaf_zzd);
        z0VarE0.z(v0Var);
        z0VarE0.A(z4Var.g);
        z0VarE0.E(g(z));
        z0VarE0.G(pugVar.d());
        z0VarE0.F(zzv.zzC().currentTimeMillis());
        z0VarE0.H(g(Settings.Global.getInt(context.getContentResolver(), "wifi_on", 0) != 0));
        return ((y0) z0VarE0.q()).l();
    }

    public static final zzbbn$zzq g(boolean z) {
        return z ? zzbbn$zzq.ENUM_TRUE : zzbbn$zzq.ENUM_FALSE;
    }

    public final void e(boolean z) {
        j8.r(this.d.b(new Bundle()), new y4(this, z), zef.g);
    }
}
