package defpackage;

import android.view.MotionEvent;
import com.google.android.gms.ads.nativead.NativeCustomFormatAd;
import com.google.android.gms.internal.ads.zzdmb;
import org.json.JSONObject;

public final class qhg implements z0f {
    public final String a = NativeCustomFormatAd.ASSET_NAME_VIDEO;
    public final zzdmb b;

    public qhg(zzdmb zzdmbVar, String str) {
        this.b = zzdmbVar;
    }

    @Override
    public final void a(MotionEvent motionEvent) {
    }

    @Override
    public final JSONObject zza() {
        return null;
    }

    @Override
    public final JSONObject zzb() {
        return null;
    }

    @Override
    public final void zzc() {
        zzdmb zzdmbVar = this.b;
        if (zzdmbVar.zzd != null) {
            zzdmbVar.zzd.n(this.a);
        }
    }
}
