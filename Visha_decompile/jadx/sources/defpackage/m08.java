package defpackage;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.c;

public abstract class m08 {
    public static k08 a(lu8 lu8Var, c cVar) {
        wd8.m(lu8Var, "Result must not be null");
        wd8.b(!lu8Var.getStatus().isSuccess(), "Status code must not be SUCCESS");
        t1e t1eVar = new t1e(cVar, lu8Var);
        t1eVar.g(lu8Var);
        return t1eVar;
    }

    public static k08 b(Status status, c cVar) {
        wd8.m(status, "Result must not be null");
        rx9 rx9Var = new rx9(cVar);
        rx9Var.g(status);
        return rx9Var;
    }
}
