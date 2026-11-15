package defpackage;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.security.PrivilegedExceptionAction;

public class tr3 implements PrivilegedExceptionAction {
    public final File a;
    public final boolean b;
    public final xr3 c;

    public tr3(xr3 xr3Var, File file, boolean z) {
        this.c = xr3Var;
        this.a = file;
        this.b = z;
    }

    @Override
    public Object run() throws IOException {
        if (!this.a.exists()) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(this.a);
            stringBuffer.append(" does not exist.");
            throw new FileNotFoundException(stringBuffer.toString());
        }
        if (!this.a.isDirectory()) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(this.a);
            stringBuffer2.append(" is not a directory.");
            throw new IOException(stringBuffer2.toString());
        }
        Object[] objArr = new Object[2];
        if (this.b) {
            objArr[0] = this.a;
            objArr[1] = null;
        } else {
            File canonicalFile = this.a.getCanonicalFile();
            objArr[0] = canonicalFile;
            String path = canonicalFile.getPath();
            if (!path.endsWith(File.separator)) {
                StringBuffer stringBuffer3 = new StringBuffer();
                stringBuffer3.append(path);
                stringBuffer3.append(File.separatorChar);
                path = stringBuffer3.toString();
            }
            objArr[1] = path;
        }
        return objArr;
    }
}
