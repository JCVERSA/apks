package defpackage;

import java.io.File;
import java.io.IOException;
import java.io.Reader;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import org.apache.commons.lang3.BooleanUtils;

public class xr3 implements qfa {
    public static final boolean e;
    public static final boolean f;
    public static final pq5 g;
    public final File a;
    public final String b;
    public boolean c;
    public fs6 d;

    static {
        boolean zU;
        try {
            zU = n0a.u(ha9.c("org.freemarker.emulateCaseSensitiveFileSystem", BooleanUtils.FALSE));
        } catch (Exception unused) {
            zU = false;
        }
        e = zU;
        f = File.separatorChar == '/';
        g = pq5.k("freemarker.cache");
    }

    public xr3() {
        this(new File(ha9.b("user.dir")));
    }

    @Override
    public Object a(String str) throws IOException {
        try {
            return AccessController.doPrivileged(new ur3(this, str));
        } catch (PrivilegedActionException e2) {
            throw ((IOException) e2.getException());
        }
    }

    @Override
    public Reader b(Object obj, String str) throws IOException {
        try {
            return (Reader) AccessController.doPrivileged(new wr3(this, obj, str));
        } catch (PrivilegedActionException e2) {
            throw ((IOException) e2.getException());
        }
    }

    @Override
    public long c(Object obj) {
        return ((Long) AccessController.doPrivileged(new vr3(this, obj))).longValue();
    }

    @Override
    public void d(Object obj) {
    }

    public boolean i() {
        return e;
    }

    public final boolean j(File file) {
        String path = file.getPath();
        if (this.d.get(path) != null) {
            return true;
        }
        File parentFile = file.getParentFile();
        if (parentFile != null) {
            if (!this.a.equals(parentFile) && !j(parentFile)) {
                return false;
            }
            String[] list = parentFile.list();
            if (list != null) {
                String name = file.getName();
                boolean z = false;
                for (int i = 0; !z && i < list.length; i++) {
                    if (name.equals(list[i])) {
                        z = true;
                    }
                }
                if (!z) {
                    for (String str : list) {
                        if (name.equalsIgnoreCase(str)) {
                            pq5 pq5Var = g;
                            if (pq5Var.q()) {
                                StringBuffer stringBuffer = new StringBuffer();
                                stringBuffer.append("Emulating file-not-found because of letter case differences to the real file, for: ");
                                stringBuffer.append(path);
                                pq5Var.d(stringBuffer.toString());
                            }
                            return false;
                        }
                    }
                }
            }
        }
        this.d.put(path, Boolean.TRUE);
        return true;
    }

    public void k(boolean z) {
        if (!z) {
            this.d = null;
        } else if (this.d == null) {
            this.d = new fs6(50, 1000);
        }
        this.c = z;
    }

    public String toString() {
        String string;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(rfa.b(this));
        stringBuffer.append("(");
        stringBuffer.append("baseDir=\"");
        stringBuffer.append(this.a);
        stringBuffer.append("\"");
        if (this.b != null) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(", canonicalBasePath=\"");
            stringBuffer2.append(this.b);
            stringBuffer2.append("\"");
            string = stringBuffer2.toString();
        } else {
            string = "";
        }
        stringBuffer.append(string);
        stringBuffer.append(this.c ? ", emulateCaseSensitiveFileSystem=true" : "");
        stringBuffer.append(")");
        return stringBuffer.toString();
    }

    public xr3(File file) {
        this(file, false);
    }

    public xr3(File file, boolean z) throws IOException {
        try {
            Object[] objArr = (Object[]) AccessController.doPrivileged(new tr3(this, file, z));
            this.a = (File) objArr[0];
            this.b = (String) objArr[1];
            k(i());
        } catch (PrivilegedActionException e2) {
            throw ((IOException) e2.getException());
        }
    }
}
