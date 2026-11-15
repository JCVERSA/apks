package defpackage;

import android.view.View;
import com.google.android.gms.ads.internal.zzg;
import java.util.concurrent.atomic.AtomicBoolean;

public final class k2h implements zzg {
    public final izf a;
    public final b0g b;
    public final v8g c;
    public final k8g d;
    public final oqf e;
    public final AtomicBoolean f = new AtomicBoolean(false);

    public k2h(izf izfVar, b0g b0gVar, v8g v8gVar, k8g k8gVar, oqf oqfVar) {
        this.a = izfVar;
        this.b = b0gVar;
        this.c = v8gVar;
        this.d = k8gVar;
        this.e = oqfVar;
    }

    @Override
    public final synchronized void zza(View view) {
        if (this.f.compareAndSet(false, true)) {
            this.e.zzs();
            this.d.F(view);
        }
    }

    @Override
    public final void zzb() {
        if (this.f.get()) {
            this.a.onAdClicked();
        }
    }

    @Override
    public final void zzc() {
        if (this.f.get()) {
            this.b.zza();
            this.c.zza();
        }
    }
}
