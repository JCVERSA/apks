package defpackage;

import android.view.View;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.zzac;

public final class eeg {
    public final smg a;

    public eeg(smg smgVar) {
        this.a = smgVar;
    }

    public final void a(View view, hmh hmhVar) {
        if (!((Boolean) zzbd.zzc().b(cye.Vc)).booleanValue() || view == null) {
            return;
        }
        String str = true != zzac.zza(view) ? "0" : "1";
        rmg rmgVarA = this.a.a();
        rmgVarA.b("action", "hcp");
        rmgVarA.b("hcp", str);
        rmgVarA.c(hmhVar);
        rmgVarA.j();
    }
}
