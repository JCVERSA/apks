package defpackage;

import android.content.Context;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.internal.appset.a;

public final class kij implements ye {
    public final ye a;
    public final ye b;

    public kij(Context context) {
        this.a = new agj(context, aj4.g());
        this.b = a.d(context);
    }

    public static xda b(kij kijVar, xda xdaVar) {
        if (xdaVar.q() || xdaVar.o()) {
            return xdaVar;
        }
        Exception excL = xdaVar.l();
        if (!(excL instanceof ApiException)) {
            return xdaVar;
        }
        int statusCode = ((ApiException) excL).getStatusCode();
        if (statusCode == 43001 || statusCode == 43002 || statusCode == 43003 || statusCode == 17) {
            return kijVar.b.a();
        }
        if (statusCode == 43000) {
            return com.google.android.gms.tasks.a.d(new Exception("Failed to get app set ID due to an internal error. Please try again later."));
        }
        return statusCode != 15 ? xdaVar : com.google.android.gms.tasks.a.d(new Exception("The operation to get app set ID timed out. Please try again later."));
    }

    @Override
    public final xda a() {
        return this.a.a().j(new xh1() {
            @Override
            public final Object a(xda xdaVar) {
                return kij.b(this.a, xdaVar);
            }
        });
    }
}
