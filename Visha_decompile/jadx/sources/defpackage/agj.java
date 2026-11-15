package defpackage;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.b;
import defpackage.b5g;
import defpackage.zda;

public final class agj extends b implements ye {
    public static final a.g m;
    public static final a.AbstractC0089a n;
    public static final a o;
    public final Context k;
    public final aj4 l;

    static {
        a.g gVar = new a.g();
        m = gVar;
        vbj vbjVar = new vbj();
        n = vbjVar;
        o = new a("AppSet.API", vbjVar, gVar);
    }

    public agj(Context context, aj4 aj4Var) {
        super(context, o, a.d.w6, b.a.c);
        this.k = context;
        this.l = aj4Var;
    }

    @Override
    public final xda a() {
        return this.l.i(this.k, 212800000) == 0 ? g(yda.a().d(avg.a).b(new as8() {
            @Override
            public final void accept(Object obj, Object obj2) throws RemoteException {
                ((zzg) ((b5g) obj).getService()).zzc(new com.google.android.gms.appset.zza(null, null), new zzo(this.a, (zda) obj2));
            }
        }).c(false).e(27601).a()) : com.google.android.gms.tasks.a.d(new ApiException(new Status(17)));
    }
}
