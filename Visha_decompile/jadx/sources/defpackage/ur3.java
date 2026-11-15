package defpackage;

import java.io.File;
import java.io.IOException;
import java.security.PrivilegedExceptionAction;
import org.apache.commons.io.IOUtils;

public class ur3 implements PrivilegedExceptionAction {
    public final String a;
    public final xr3 b;

    public ur3(xr3 xr3Var, String str) {
        this.b = xr3Var;
        this.a = str;
    }

    @Override
    public Object run() throws IOException {
        File file = new File(this.b.a, xr3.f ? this.a : this.a.replace(IOUtils.DIR_SEPARATOR_UNIX, File.separatorChar));
        if (!file.isFile()) {
            return null;
        }
        if (this.b.b != null) {
            String canonicalPath = file.getCanonicalPath();
            if (!canonicalPath.startsWith(this.b.b)) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(file.getAbsolutePath());
                stringBuffer.append(" resolves to ");
                stringBuffer.append(canonicalPath);
                stringBuffer.append(" which ");
                stringBuffer.append(" doesn't start with ");
                stringBuffer.append(this.b.b);
                throw new SecurityException(stringBuffer.toString());
            }
        }
        if (!this.b.c || this.b.j(file)) {
            return file;
        }
        return null;
    }
}
