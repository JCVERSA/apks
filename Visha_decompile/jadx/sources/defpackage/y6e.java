package defpackage;

import android.app.Activity;
import android.os.RemoteException;
import defpackage.doj;
import defpackage.zda;

public final class y6e extends fq9 {
    public y6e(Activity activity) {
        super(activity);
    }

    @Override
    public final xda v() {
        return k(yda.a().b(new as8() {
            @Override
            public final void accept(Object obj, Object obj2) throws RemoteException {
                ((zzh) ((doj) obj).getService()).zzg(new zzz(this.a, (zda) obj2));
            }
        }).d(s7e.c).e(1567).a());
    }
}
