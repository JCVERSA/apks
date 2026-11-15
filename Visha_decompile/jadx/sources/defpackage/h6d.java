package defpackage;

import com.mq.mgmi.client.message.q;
import java.io.File;
import java.io.FilenameFilter;

public final class h6d implements cld {
    public static FilenameFilter e;
    public File b;
    public File c = null;
    public lq3 d;

    public h6d(String str) {
        this.b = new File(str);
    }

    public static FilenameFilter b() {
        if (e == null) {
            e = new g9d(".msg");
        }
        return e;
    }

    @Override
    public final void close() {
        synchronized (this) {
            try {
                if (e().length == 0) {
                    this.c.delete();
                }
                this.c = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void d() throws q {
        if (this.c == null) {
            throw new q();
        }
    }

    public final File[] e() throws q {
        d();
        File[] fileArrListFiles = this.c.listFiles(b());
        if (fileArrListFiles != null) {
            return fileArrListFiles;
        }
        throw new q();
    }
}
