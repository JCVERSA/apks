package defpackage;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.b;
import com.google.android.gms.common.api.d;

public abstract class x6e extends b implements d {
    public static final a.g k;
    public static final a.AbstractC0089a l;
    public static final a m;
    public static final nq5 n;

    static {
        a.g gVar = new a.g();
        k = gVar;
        fnj fnjVar = new fnj();
        l = fnjVar;
        m = new a("GoogleAuthService.API", fnjVar, gVar);
        n = x4g.a("GoogleAuthServiceClient");
    }

    public static void v(Status status, Object obj, zda zdaVar) {
        if (jea.d(status, obj, zdaVar)) {
            return;
        }
        n.e("The task is already complete.", new Object[0]);
    }
}
