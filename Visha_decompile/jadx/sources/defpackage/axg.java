package defpackage;

import android.content.Context;
import android.view.View;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.b6;
import com.google.android.gms.internal.ads.zzfwz;
import java.util.Iterator;

public final class axg {
    public final Context a;
    public final VersionInfoParcel b;
    public final hmh c;
    public final ejf d;
    public final smg e;
    public b6 f;

    public axg(Context context, VersionInfoParcel versionInfoParcel, hmh hmhVar, ejf ejfVar, smg smgVar) {
        this.a = context;
        this.b = versionInfoParcel;
        this.c = hmhVar;
        this.d = ejfVar;
        this.e = smgVar;
    }

    public final synchronized void a(View view) {
        b6 b6Var = this.f;
        if (b6Var != null) {
            zzv.zzB().g(b6Var, view);
        }
    }

    public final synchronized void b() {
        ejf ejfVar;
        if (this.f == null || (ejfVar = this.d) == null) {
            return;
        }
        ejfVar.zzd("onSdkImpression", zzfwz.zzd());
    }

    public final synchronized void c() {
        ejf ejfVar;
        try {
            b6 b6Var = this.f;
            if (b6Var == null || (ejfVar = this.d) == null) {
                return;
            }
            Iterator it = ejfVar.zzV().iterator();
            while (it.hasNext()) {
                zzv.zzB().g(b6Var, (View) it.next());
            }
            ejfVar.zzd("onSdkLoaded", zzfwz.zzd());
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized boolean d() {
        return this.f != null;
    }

    public final synchronized boolean e(boolean z) {
        ejf ejfVar;
        hmh hmhVar = this.c;
        if (hmhVar.T) {
            if (((Boolean) zzbd.zzc().b(cye.m5)).booleanValue()) {
                if (((Boolean) zzbd.zzc().b(cye.p5)).booleanValue() && (ejfVar = this.d) != null) {
                    if (this.f != null) {
                        int i = zze.zza;
                        zzo.zzj("Omid javascript session service already started for ad.");
                        return false;
                    }
                    if (!zzv.zzB().a(this.a)) {
                        int i2 = zze.zza;
                        zzo.zzj("Unable to initialize omid.");
                        return false;
                    }
                    if (hmhVar.V.b()) {
                        b6 b6VarJ = zzv.zzB().j(this.b, ejfVar.zzG(), true);
                        if (((Boolean) zzbd.zzc().b(cye.q5)).booleanValue()) {
                            smg smgVar = this.e;
                            String str = b6VarJ != null ? "1" : "0";
                            rmg rmgVarA = smgVar.a();
                            rmgVarA.b("omid_js_session_success", str);
                            rmgVarA.j();
                        }
                        if (b6VarJ == null) {
                            int i3 = zze.zza;
                            zzo.zzj("Unable to create javascript session service.");
                            return false;
                        }
                        int i4 = zze.zza;
                        zzo.zzi("Created omid javascript session service.");
                        this.f = b6VarJ;
                        ejfVar.zzas(this);
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final synchronized void f(ojf ojfVar) {
        ejf ejfVar;
        b6 b6Var = this.f;
        if (b6Var == null || (ejfVar = this.d) == null) {
            return;
        }
        zzv.zzB().b(b6Var, ojfVar);
        this.f = null;
        ejfVar.zzas(null);
    }
}
