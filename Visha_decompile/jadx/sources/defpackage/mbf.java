package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.j8;
import com.hisavana.common.tracking.TrackingKey;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import org.json.JSONException;
import org.json.JSONObject;

public final class mbf extends kbf {
    public final Object a = new Object();
    public final Context b;
    public SharedPreferences c;
    public final t6f d;
    public final VersionInfoParcel e;

    public mbf(Context context, t6f t6fVar, VersionInfoParcel versionInfoParcel) {
        this.b = context.getApplicationContext();
        this.e = versionInfoParcel;
        this.d = t6fVar;
    }

    public static Void b(mbf mbfVar, JSONObject jSONObject) {
        qxe qxeVar = cye.a;
        zzbd.zzb();
        SharedPreferences sharedPreferencesA = vxe.a(mbfVar.b);
        if (sharedPreferencesA == null) {
            return null;
        }
        SharedPreferences.Editor editorEdit = sharedPreferencesA.edit();
        zzbd.zza();
        int i = kze.a;
        zzbd.zza().e(editorEdit, 1, jSONObject);
        zzbd.zzb();
        editorEdit.commit();
        SharedPreferences sharedPreferences = mbfVar.c;
        if (sharedPreferences == null) {
            return null;
        }
        sharedPreferences.edit().putLong("js_last_update", zzv.zzC().currentTimeMillis()).apply();
        return null;
    }

    public static JSONObject c(Context context, VersionInfoParcel versionInfoParcel) {
        JSONObject jSONObject = new JSONObject();
        try {
            if (((Boolean) zze.b.e()).booleanValue()) {
                jSONObject.put(TrackingKey.PACKAGE_NAME, context.getPackageName());
            }
            jSONObject.put("js", versionInfoParcel.afmaVersion);
            jSONObject.put(DownloadFacadeEnum.USER_MF, zze.c.e());
            jSONObject.put("cl", "741296643");
            jSONObject.put("rapid_rc", "dev");
            jSONObject.put("rapid_rollup", "HEAD");
            jSONObject.put("admob_module_version", 12451000);
            jSONObject.put("dynamite_local_version", ModuleDescriptor.MODULE_VERSION);
            jSONObject.put("dynamite_version", DynamiteModule.c(context, ModuleDescriptor.MODULE_ID));
            jSONObject.put("container_version", 12451000);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    @Override
    public final im5 a() {
        synchronized (this.a) {
            try {
                if (this.c == null) {
                    this.c = this.b.getSharedPreferences("google_ads_flags_meta", 0);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        SharedPreferences sharedPreferences = this.c;
        if (zzv.zzC().currentTimeMillis() - (sharedPreferences != null ? sharedPreferences.getLong("js_last_update", 0L) : 0L) < ((Long) zze.d.e()).longValue()) {
            return j8.h(null);
        }
        return j8.m(this.d.zzb(c(this.b, this.e)), new m2i() {
            @Override
            public final Object apply(Object obj) {
                mbf.b(this.a, (JSONObject) obj);
                return null;
            }
        }, zef.g);
    }
}
