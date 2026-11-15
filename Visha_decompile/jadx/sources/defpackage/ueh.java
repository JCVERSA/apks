package defpackage;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzv;
import java.util.concurrent.Callable;

public final class ueh implements eeh {
    public final g8i a;
    public final Context b;

    public ueh(g8i g8iVar, Context context) {
        this.a = g8iVar;
        this.b = context;
    }

    public static seh a(ueh uehVar) {
        boolean zIsActiveNetworkMetered;
        int i;
        Context context = uehVar.b;
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        String networkOperator = telephonyManager.getNetworkOperator();
        int phoneType = telephonyManager.getPhoneType();
        zzv.zzq();
        int i2 = -1;
        if (zzs.zzB(context, "android.permission.ACCESS_NETWORK_STATE")) {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                int type = activeNetworkInfo.getType();
                int iOrdinal = activeNetworkInfo.getDetailedState().ordinal();
                i = type;
                i2 = iOrdinal;
            } else {
                i = -1;
            }
            zIsActiveNetworkMetered = connectivityManager.isActiveNetworkMetered();
        } else {
            zIsActiveNetworkMetered = false;
            i = -2;
        }
        return new seh(networkOperator, i, zzv.zzr().zzm(context), phoneType, zIsActiveNetworkMetered, i2);
    }

    @Override
    public final int zza() {
        return 39;
    }

    @Override
    public final im5 zzb() {
        return this.a.m(new Callable() {
            @Override
            public final Object call() {
                return ueh.a(this.b);
            }
        });
    }
}
