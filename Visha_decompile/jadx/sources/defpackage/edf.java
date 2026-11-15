package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.zzad;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.util.zzg;
import com.google.android.gms.ads.internal.zzv;
import java.util.Objects;

public final class edf implements SharedPreferences.OnSharedPreferenceChangeListener {
    public final Context a;
    public final SharedPreferences b;
    public final zzg c;
    public String d = "-1";
    public int e = -1;

    public edf(Context context, zzg zzgVar) {
        this.b = PreferenceManager.getDefaultSharedPreferences(context);
        this.c = zzgVar;
        this.a = context;
    }

    public final void a() {
        SharedPreferences sharedPreferences = this.b;
        sharedPreferences.registerOnSharedPreferenceChangeListener(this);
        onSharedPreferenceChanged(sharedPreferences, "gad_has_consent_for_cookies");
        if (((Boolean) zzbd.zzc().b(cye.P0)).booleanValue()) {
            onSharedPreferenceChanged(sharedPreferences, "IABTCF_TCString");
        } else {
            onSharedPreferenceChanged(sharedPreferences, "IABTCF_PurposeConsents");
        }
    }

    public final void b() {
        this.c.zzD(true);
        zzad.zzc(this.a);
    }

    public final void c(String str, int i) {
        Context context;
        boolean z = true;
        if (!((Boolean) zzbd.zzc().b(cye.N0)).booleanValue() ? !(str.isEmpty() || str.charAt(0) != '1') : !(i == 0 || str.isEmpty() || (str.charAt(0) != '1' && !str.equals("-1")))) {
            z = false;
        }
        this.c.zzD(z);
        if (((Boolean) zzbd.zzc().b(cye.i6)).booleanValue() && z && (context = this.a) != null) {
            context.deleteDatabase("OfflineUpload.db");
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0081  */
    @Override
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        byte b;
        try {
            if (((Boolean) zzbd.zzc().b(cye.P0)).booleanValue()) {
                if (Objects.equals(str, "gad_has_consent_for_cookies")) {
                    int i = sharedPreferences.getInt("gad_has_consent_for_cookies", -1);
                    zzg zzgVar = this.c;
                    if (i != zzgVar.zzb()) {
                        b();
                    }
                    zzgVar.zzA(i);
                    return;
                }
                if (Objects.equals(str, "IABTCF_TCString")) {
                    String string = sharedPreferences.getString(str, "-1");
                    zzg zzgVar2 = this.c;
                    if (!Objects.equals(string, zzgVar2.zzm())) {
                        b();
                    }
                    zzgVar2.zzJ(string);
                    return;
                }
                return;
            }
            String string2 = sharedPreferences.getString("IABTCF_PurposeConsents", "-1");
            int i2 = sharedPreferences.getInt("gad_has_consent_for_cookies", -1);
            String strValueOf = String.valueOf(str);
            int iHashCode = strValueOf.hashCode();
            if (iHashCode != -2004976699) {
                if (iHashCode == -527267622 && strValueOf.equals("gad_has_consent_for_cookies")) {
                    b = 1;
                } else {
                    b = -1;
                }
            } else if (strValueOf.equals("IABTCF_PurposeConsents")) {
                b = 0;
            } else {
                b = -1;
            }
            if (b == 0) {
                if (string2.equals("-1") || this.d.equals(string2)) {
                    return;
                }
                this.d = string2;
                c(string2, i2);
                return;
            }
            if (b != 1) {
                return;
            }
            if (!((Boolean) zzbd.zzc().b(cye.N0)).booleanValue() || i2 == -1 || this.e == i2) {
                return;
            }
            this.e = i2;
            c(string2, i2);
        } catch (Throwable th) {
            zzv.zzp().x(th, "AdMobPlusIdlessListener.onSharedPreferenceChanged");
            zze.zzb("onSharedPreferenceChanged, errorMessage = ", th);
        }
    }
}
