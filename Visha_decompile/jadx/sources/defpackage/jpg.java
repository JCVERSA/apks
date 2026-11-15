package defpackage;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzdk;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzn;
import com.google.android.gms.ads.internal.overlay.zzr;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.o0;
import com.google.android.gms.internal.ads.zzcex;
import defpackage.jpg;
import org.json.JSONException;
import org.json.JSONObject;

public final class jpg implements zzr, gkf {
    public final Context b;
    public final VersionInfoParcel c;
    public zog d;
    public ejf e;
    public boolean f;
    public boolean g;
    public long h;
    public zzdk i;
    public boolean j;

    public jpg(Context context, VersionInfoParcel versionInfoParcel) {
        this.b = context;
        this.c = versionInfoParcel;
    }

    public static void b(jpg jpgVar, String str) {
        JSONObject jSONObjectF = jpgVar.d.f();
        if (!TextUtils.isEmpty(str)) {
            try {
                jSONObjectF.put("redirectUrl", str);
            } catch (JSONException unused) {
            }
        }
        jpgVar.e.zzb("window.inspectorInfo", jSONObjectF.toString());
    }

    public final Activity a() {
        ejf ejfVar = this.e;
        if (ejfVar == null || ejfVar.zzaE()) {
            return null;
        }
        return this.e.zzi();
    }

    public final void c(zog zogVar) {
        this.d = zogVar;
    }

    public final synchronized void d(zzdk zzdkVar, o4f o4fVar, a4f a4fVar, o3f o3fVar) {
        if (f(zzdkVar)) {
            try {
                zzv.zzA();
                ejf ejfVarA = mjf.a(this.b, kkf.a(), "", false, false, null, null, this.c, null, null, null, o0.a(), null, null, null, null, null);
                this.e = ejfVarA;
                ikf ikfVarZzN = ejfVarA.zzN();
                if (ikfVarZzN == null) {
                    int i = zze.zza;
                    zzo.zzj("Failed to obtain a web view for the ad inspector");
                    try {
                        zzv.zzp().x(new NullPointerException("Failed to obtain a web view for the ad inspector"), "InspectorUi.openInspector 2");
                        zzdkVar.zze(goh.d(17, "Failed to obtain a web view for the ad inspector", null));
                        return;
                    } catch (RemoteException e) {
                        zzv.zzp().x(e, "InspectorUi.openInspector 3");
                        return;
                    }
                }
                this.i = zzdkVar;
                Context context = this.b;
                ikfVarZzN.d(null, null, null, null, null, false, null, null, null, null, null, null, null, o4fVar, null, new n4f(context), a4fVar, o3fVar, null);
                ikfVarZzN.v(this);
                this.e.loadUrl((String) zzbd.zzc().b(cye.a9));
                zzv.zzj();
                zzn.zza(context, new AdOverlayInfoParcel(this, this.e, 1, this.c), true, null);
                this.h = zzv.zzC().currentTimeMillis();
            } catch (zzcex e2) {
                int i2 = zze.zza;
                zzo.zzk("Failed to obtain a web view for the ad inspector", e2);
                try {
                    zzv.zzp().x(e2, "InspectorUi.openInspector 0");
                    zzdkVar.zze(goh.d(17, "Failed to obtain a web view for the ad inspector", null));
                } catch (RemoteException e3) {
                    zzv.zzp().x(e3, "InspectorUi.openInspector 1");
                }
            }
        }
    }

    public final synchronized void e(final String str) {
        if (this.f && this.g) {
            zef.f.execute(new Runnable() {
                @Override
                public final void run() {
                    jpg.b(this.zza, str);
                }
            });
        }
    }

    public final synchronized boolean f(zzdk zzdkVar) {
        if (!((Boolean) zzbd.zzc().b(cye.Z8)).booleanValue()) {
            int i = zze.zza;
            zzo.zzj("Ad inspector had an internal error.");
            try {
                zzdkVar.zze(goh.d(16, null, null));
            } catch (RemoteException unused) {
            }
            return false;
        }
        if (this.d == null) {
            int i2 = zze.zza;
            zzo.zzj("Ad inspector had an internal error.");
            try {
                zzv.zzp().x(new NullPointerException("InspectorManager null"), "InspectorUi.shouldOpenUi");
                zzdkVar.zze(goh.d(16, null, null));
            } catch (RemoteException unused2) {
            }
            return false;
        }
        if (!this.f && !this.g) {
            if (zzv.zzC().currentTimeMillis() >= this.h + ((long) ((Integer) zzbd.zzc().b(cye.c9)).intValue())) {
                return true;
            }
        }
        int i3 = zze.zza;
        zzo.zzj("Ad inspector cannot be opened because it is already open.");
        try {
            zzdkVar.zze(goh.d(19, null, null));
        } catch (RemoteException unused3) {
        }
        return false;
    }

    @Override
    public final synchronized void zza(boolean z, int i, String str, String str2) {
        if (z) {
            zze.zza("Ad inspector loaded.");
            this.f = true;
            e("");
            return;
        }
        int i2 = zze.zza;
        zzo.zzj("Ad inspector failed to load.");
        try {
            zzv.zzp().x(new Exception("Failed to load UI. Error code: " + i + ", Description: " + str + ", Failing URL: " + str2), "InspectorUi.onAdWebViewFinishedLoading 0");
            zzdk zzdkVar = this.i;
            if (zzdkVar != null) {
                zzdkVar.zze(goh.d(17, null, null));
            }
        } catch (RemoteException e) {
            zzv.zzp().x(e, "InspectorUi.onAdWebViewFinishedLoading 1");
        }
        this.j = true;
        this.e.destroy();
    }

    @Override
    public final void zzdE() {
    }

    @Override
    public final void zzdi() {
    }

    @Override
    public final void zzdo() {
    }

    @Override
    public final synchronized void zzdp() {
        this.g = true;
        e("");
    }

    @Override
    public final void zzdr() {
    }

    @Override
    public final synchronized void zzds(int i) {
        this.e.destroy();
        if (!this.j) {
            zze.zza("Inspector closed.");
            zzdk zzdkVar = this.i;
            if (zzdkVar != null) {
                try {
                    zzdkVar.zze(null);
                } catch (RemoteException unused) {
                }
            }
        }
        this.g = false;
        this.f = false;
        this.h = 0L;
        this.j = false;
        this.i = null;
    }
}
