package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.zzg;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzv;

public final class m7h implements deh {
    public final Context a;
    public final Bundle b;
    public final String c;
    public final String d;
    public final zzg e;
    public final String f;
    public final kwf g;

    public m7h(Context context, Bundle bundle, String str, String str2, zzg zzgVar, String str3, kwf kwfVar) {
        this.a = context;
        this.b = bundle;
        this.c = str;
        this.d = str2;
        this.e = zzgVar;
        this.f = str3;
        this.g = kwfVar;
    }

    private final void a(Bundle bundle) {
        if (((Boolean) zzbd.zzc().b(cye.H5)).booleanValue()) {
            try {
                zzv.zzq();
                bundle.putString("_app_id", zzs.zzq(this.a));
            } catch (RemoteException | RuntimeException e) {
                zzv.zzp().x(e, "AppStatsSignal_AppId");
            }
        }
    }

    @Override
    public final void zza(Object obj) {
        Bundle bundle = ((kyf) obj).b;
        bundle.putBundle("quality_signals", this.b);
        a(bundle);
    }

    @Override
    public final void zzb(Object obj) {
        Bundle bundle = ((kyf) obj).a;
        bundle.putBundle("quality_signals", this.b);
        bundle.putString("seq_num", this.c);
        zzg zzgVar = this.e;
        if (!zzgVar.zzN()) {
            bundle.putString("session_id", this.d);
        }
        bundle.putBoolean("client_purpose_one", !zzgVar.zzN());
        a(bundle);
        String str = this.f;
        if (str != null) {
            Bundle bundle2 = new Bundle();
            kwf kwfVar = this.g;
            bundle2.putLong("dload", kwfVar.b(str));
            bundle2.putInt("pcc", kwfVar.a(str));
            bundle.putBundle("ad_unit_quality_signals", bundle2);
        }
        if (!((Boolean) zzbd.zzc().b(cye.Q9)).booleanValue() || zzv.zzp().b() <= 0) {
            return;
        }
        bundle.putInt("nrwv", zzv.zzp().b());
    }
}
