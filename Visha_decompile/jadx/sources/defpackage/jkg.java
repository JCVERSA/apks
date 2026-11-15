package defpackage;

import android.os.RemoteException;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.internal.ads.zzboy;
import com.google.android.gms.internal.ads.zzbpb;
import com.google.android.gms.internal.ads.zzbpz;
import com.google.android.gms.internal.ads.zzbqx;
import com.google.android.gms.internal.ads.zzbrq;
import com.google.android.gms.internal.ads.zzfbw;
import org.json.JSONException;
import org.json.JSONObject;

public final class jkg {
    public final coh a;
    public final gkg b;

    public jkg(coh cohVar, gkg gkgVar) {
        this.a = cohVar;
        this.b = gkgVar;
    }

    public final zzboy a() throws RemoteException {
        zzboy zzboyVarB = this.a.b();
        if (zzboyVarB != null) {
            return zzboyVarB;
        }
        int i = zze.zza;
        zzo.zzj("Unexpected call to adapter creator.");
        throw new RemoteException();
    }

    public final zzbqx b(String str) throws RemoteException {
        zzbqx zzbqxVarZzc = a().zzc(str);
        this.b.d(str, zzbqxVarZzc);
        return zzbqxVarZzc;
    }

    public final eoh c(String str, JSONObject jSONObject) {
        zzbpb zzbpbVarZzb;
        try {
            if ("com.google.ads.mediation.admob.AdMobAdapter".equals(str)) {
                zzbpbVarZzb = new zzbpz(new AdMobAdapter());
            } else if ("com.google.ads.mediation.admob.AdMobCustomTabsAdapter".equals(str)) {
                zzbpbVarZzb = new zzbpz(new zzbrq());
            } else {
                zzboy zzboyVarA = a();
                if ("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str) || "com.google.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
                    try {
                        String string = jSONObject.getString("class_name");
                        if (zzboyVarA.zze(string)) {
                            zzbpbVarZzb = zzboyVarA.zzb("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter");
                        } else {
                            zzbpbVarZzb = zzboyVarA.zzd(string) ? zzboyVarA.zzb(string) : zzboyVarA.zzb("com.google.ads.mediation.customevent.CustomEventAdapter");
                        }
                    } catch (JSONException e) {
                        int i = zze.zza;
                        zzo.zzh("Invalid custom event.", e);
                        zzbpbVarZzb = zzboyVarA.zzb(str);
                    }
                } else {
                    zzbpbVarZzb = zzboyVarA.zzb(str);
                }
            }
            eoh eohVar = new eoh(zzbpbVarZzb);
            this.b.c(str, eohVar);
            return eohVar;
        } catch (Throwable th) {
            if (((Boolean) zzbd.zzc().b(cye.w9)).booleanValue()) {
                this.b.c(str, null);
            }
            throw new zzfbw(th);
        }
    }

    public final boolean d() {
        return this.a.b() != null;
    }
}
