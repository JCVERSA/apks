package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.zzu;
import java.util.concurrent.Callable;

public final class nhj implements Callable {
    public final zzu b;

    public nhj(zzu zzuVar) {
        this.b = zzuVar;
    }

    @Override
    public final Object call() {
        zzu zzuVar = this.b;
        String str = zzuVar.zza.afmaVersion;
        Context context = zzuVar.zzd;
        int i = ere.I;
        return new fre(ere.o(context, new cre(str, false)));
    }
}
