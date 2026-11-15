package defpackage;

import com.google.android.gms.common.api.Status;

public abstract class jea {
    public static void a(Status status, zda zdaVar) {
        b(status, null, zdaVar);
    }

    public static void b(Status status, Object obj, zda zdaVar) {
        if (status.isSuccess()) {
            zdaVar.c(obj);
        } else {
            zdaVar.b(ud.a(status));
        }
    }

    public static xda c(xda xdaVar) {
        return xdaVar.h(new v0e());
    }

    public static boolean d(Status status, Object obj, zda zdaVar) {
        return status.isSuccess() ? zdaVar.e(obj) : zdaVar.d(ud.a(status));
    }
}
