package defpackage;

import java.io.File;
import java.security.PrivilegedAction;

public class vr3 implements PrivilegedAction {
    public final Object a;
    public final xr3 b;

    public vr3(xr3 xr3Var, Object obj) {
        this.b = xr3Var;
        this.a = obj;
    }

    @Override
    public Object run() {
        return new Long(((File) this.a).lastModified());
    }
}
