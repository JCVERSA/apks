package defpackage;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.security.PrivilegedExceptionAction;

public class wr3 implements PrivilegedExceptionAction {
    public final Object a;
    public final String b;
    public final xr3 c;

    public wr3(xr3 xr3Var, Object obj, String str) {
        this.c = xr3Var;
        this.a = obj;
        this.b = str;
    }

    @Override
    public Object run() {
        if (this.a instanceof File) {
            return new InputStreamReader(new FileInputStream((File) this.a), this.b);
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("templateSource wasn't a File, but a: ");
        stringBuffer.append(this.a.getClass().getName());
        throw new IllegalArgumentException(stringBuffer.toString());
    }
}
