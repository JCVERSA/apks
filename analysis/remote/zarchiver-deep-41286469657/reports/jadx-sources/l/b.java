package l;

import java.io.File;
import java.io.IOException;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import q.g;

public final class b extends a {

    public final ZipFile f1172f;

    public b(String str) throws Throwable {
        this.f1172f = new ZipFile(new File(str), 1);
        this.f1169c = new g();
        b();
    }

    @Override
    public final byte[] a(String str) {
        ZipFile zipFile = this.f1172f;
        ZipEntry entry = zipFile.getEntry("AndroidManifest.xml");
        if (entry == null) {
            return null;
        }
        return a0.c.T(zipFile.getInputStream(entry));
    }

    @Override
    public final void close() throws IOException {
        super.close();
        this.f1172f.close();
    }
}
