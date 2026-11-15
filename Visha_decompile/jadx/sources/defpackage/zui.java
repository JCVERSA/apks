package defpackage;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzcl;

public final class zui {
    public final Context a;
    public String b;
    public String c;
    public String d;
    public Boolean e;
    public long f;
    public zzcl g;
    public boolean h;
    public final Long i;
    public String j;

    public zui(Context context, zzcl zzclVar, Long l) {
        this.h = true;
        wd8.l(context);
        Context applicationContext = context.getApplicationContext();
        wd8.l(applicationContext);
        this.a = applicationContext;
        this.i = l;
        if (zzclVar != null) {
            this.g = zzclVar;
            this.b = zzclVar.zzf;
            this.c = zzclVar.zze;
            this.d = zzclVar.zzd;
            this.h = zzclVar.zzc;
            this.f = zzclVar.zzb;
            this.j = zzclVar.zzh;
            Bundle bundle = zzclVar.zzg;
            if (bundle != null) {
                this.e = Boolean.valueOf(bundle.getBoolean("dataCollectionDefaultEnabled", true));
            }
        }
    }
}
