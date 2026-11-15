package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.zzv;
import java.util.concurrent.Callable;

public final class uah implements eeh {
    public final Context a;
    public final g8i b;

    public uah(Context context, g8i g8iVar) {
        this.a = context;
        this.b = g8iVar;
    }

    public static sah a(uah uahVar) {
        Bundle bundle;
        zzv.zzq();
        String string = !((Boolean) zzbd.zzc().b(cye.b6)).booleanValue() ? "" : uahVar.a.getSharedPreferences("mobileads_consent", 0).getString("consent_string", "");
        String string2 = ((Boolean) zzbd.zzc().b(cye.d6)).booleanValue() ? uahVar.a.getSharedPreferences("mobileads_consent", 0).getString("fc_consent", "") : "";
        zzv.zzq();
        Context context = uahVar.a;
        if (((Boolean) zzbd.zzc().b(cye.c6)).booleanValue()) {
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
            bundle = new Bundle();
            if (defaultSharedPreferences.contains("IABConsent_CMPPresent")) {
                bundle.putBoolean("IABConsent_CMPPresent", defaultSharedPreferences.getBoolean("IABConsent_CMPPresent", false));
            }
            String[] strArr = {"IABConsent_SubjectToGDPR", "IABConsent_ConsentString", "IABConsent_ParsedPurposeConsents", "IABConsent_ParsedVendorConsents"};
            for (int i = 0; i < 4; i++) {
                String str = strArr[i];
                if (defaultSharedPreferences.contains(str)) {
                    bundle.putString(str, defaultSharedPreferences.getString(str, null));
                }
            }
        } else {
            bundle = null;
        }
        return new sah(string, string2, bundle, null);
    }

    @Override
    public final int zza() {
        return 18;
    }

    @Override
    public final im5 zzb() {
        return this.b.m(new Callable() {
            @Override
            public final Object call() {
                return uah.a(this.b);
            }
        });
    }
}
