package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.zzv;
import java.util.WeakHashMap;
import java.util.concurrent.Callable;

public final class zbf implements Callable {
    public final Context b;
    public final bcf c;

    public zbf(bcf bcfVar, Context context) {
        this.b = context;
        this.c = bcfVar;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0038  */
    @Override
    public final Object call() {
        ybf ybfVarA;
        bcf bcfVar = this.c;
        WeakHashMap weakHashMap = bcfVar.a;
        Context context = this.b;
        acf acfVar = (acf) weakHashMap.get(context);
        if (acfVar != null) {
            if (acfVar.a + ((Long) jze.d.e()).longValue() < zzv.zzC().currentTimeMillis()) {
                ybfVarA = new xbf(context).a();
            } else {
                ybfVarA = new xbf(context, acfVar.b).a();
            }
        } else {
            ybfVarA = new xbf(context).a();
        }
        bcfVar.a.put(context, new acf(bcfVar, ybfVarA));
        return ybfVarA;
    }
}
