package defpackage;

import android.os.Bundle;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.internal.ads.zzefy;
import java.util.function.Consumer;

public final class ngg implements v7i {
    public final eff a;

    public ngg(ogg oggVar, eff effVar) {
        this.a = effVar;
    }

    @Override
    public final void zza(Throwable th) {
        int i = zze.zza;
        zzo.zzg("Failed to load media data due to video view load failure.");
        this.a.d(th);
    }

    @Override
    public final void zzb(Object obj) {
        ejf ejfVar = (ejf) obj;
        if (ejfVar == null) {
            this.a.d(new zzefy(1, "Missing webview from video view future."));
            return;
        }
        final eff effVar = this.a;
        ejfVar.zzag("/video", new nhf(new Consumer() {
            @Override
            public final void accept(Object obj2) {
                Bundle bundle = new Bundle();
                bundle.putString("mediaUrl", (String) obj2);
                effVar.c(bundle);
            }
        }));
        ejfVar.zzaa();
    }
}
