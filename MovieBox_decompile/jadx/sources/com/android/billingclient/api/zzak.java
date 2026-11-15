package com.android.billingclient.api;

import android.os.Bundle;
import android.os.ResultReceiver;
import com.google.android.gms.internal.play_billing.zzb;
import com.google.android.gms.internal.play_billing.zzhx;
import com.google.android.gms.internal.play_billing.zzhy;
import com.google.android.gms.internal.play_billing.zzie;
import com.google.android.gms.internal.play_billing.zzih;
import com.google.android.gms.internal.play_billing.zzii;

final class zzak extends ResultReceiver {

    final i f18594a;

    @Override
    public final void onReceiveResult(int i10, Bundle bundle) {
        zzhy zzhyVar;
        n.a aVarC = n.c();
        aVarC.c(i10);
        if (i10 != 0) {
            if (bundle == null) {
                this.f18594a.f18449f.a(m0.a(73, 16, p0.f18509j));
                throw null;
            }
            aVarC.b(zzb.zzg(bundle, "BillingClient"));
            int i11 = bundle.getInt("INTERNAL_LOG_ERROR_REASON");
            n0 n0Var = this.f18594a.f18449f;
            int iZza = i11 != 0 ? zzih.zza(i11) : 23;
            n nVarA = aVarC.a();
            String string = bundle.getString("INTERNAL_LOG_ERROR_ADDITIONAL_DETAILS");
            try {
                zzie zzieVarZzv = zzii.zzv();
                zzieVarZzv.zzk(nVarA.b());
                zzieVarZzv.zzj(nVarA.a());
                zzieVarZzv.zzl(iZza);
                if (string != null) {
                    zzieVarZzv.zzi(string);
                }
                zzhx zzhxVarZzv = zzhy.zzv();
                zzhxVarZzv.zzi(zzieVarZzv);
                zzhxVarZzv.zzk(16);
                zzhyVar = (zzhy) zzhxVarZzv.zzc();
            } catch (Exception e10) {
                zzb.zzl("BillingLogger", "Unable to create logging payload", e10);
                zzhyVar = null;
            }
            n0Var.a(zzhyVar);
        }
        aVarC.a();
        throw null;
    }
}
