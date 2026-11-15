package defpackage;

import android.view.View;
import com.google.android.gms.ads.internal.zzg;

public final class c3h implements zzg {
    public final t9g a;

    public c3h(d3h d3hVar, t9g t9gVar) {
        this.a = t9gVar;
    }

    @Override
    public final void zza(View view) {
    }

    @Override
    public final void zzb() {
        this.a.a().onAdClicked();
    }

    @Override
    public final void zzc() {
        t9g t9gVar = this.a;
        t9gVar.b().zza();
        t9gVar.e().zza();
    }
}
