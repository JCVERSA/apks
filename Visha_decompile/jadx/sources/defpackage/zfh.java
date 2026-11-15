package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.internal.ads.j8;
import org.json.JSONException;
import org.json.JSONObject;

public final class zfh implements eeh {
    public final JSONObject a;

    public zfh(Context context) {
        this.a = mbf.c(context, VersionInfoParcel.forPackage());
    }

    public static void a(zfh zfhVar, JSONObject jSONObject) {
        try {
            jSONObject.put("gms_sdk_env", zfhVar.a);
        } catch (JSONException unused) {
            zze.zza("Failed putting version constants.");
        }
    }

    @Override
    public final int zza() {
        return 46;
    }

    @Override
    public final im5 zzb() {
        return ((Boolean) zzbd.zzc().b(cye.bc)).booleanValue() ? j8.h(new deh() {
            @Override
            public final void zza(Object obj) {
            }

            @Override
            public final void zzb(Object obj) {
            }
        }) : j8.h(new deh() {
            @Override
            public final void zza(Object obj) {
            }

            @Override
            public final void zzb(Object obj) {
                zfh.a(this.a, (JSONObject) obj);
            }
        });
    }
}
