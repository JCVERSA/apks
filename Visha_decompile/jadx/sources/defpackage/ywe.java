package defpackage;

import android.content.Context;
import android.os.Binder;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.zzbas;
import java.util.concurrent.Future;

public final class ywe {
    public pwe a;
    public boolean b;
    public final Context c;
    public final Object d = new Object();

    public ywe(Context context) {
        this.c = context;
    }

    public static void e(ywe yweVar) {
        synchronized (yweVar.d) {
            try {
                pwe pweVar = yweVar.a;
                if (pweVar == null) {
                    return;
                }
                pweVar.disconnect();
                yweVar.a = null;
                Binder.flushPendingCommands();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Future c(zzbas zzbasVar) {
        swe sweVar = new swe(this);
        wwe wweVar = new wwe(this, zzbasVar, sweVar);
        xwe xweVar = new xwe(this, sweVar);
        synchronized (this.d) {
            pwe pweVar = new pwe(this.c, zzv.zzu().zzb(), wweVar, xweVar);
            this.a = pweVar;
            pweVar.checkAvailabilityAndConnect();
        }
        return sweVar;
    }
}
