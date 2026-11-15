package org.proninyaroslav.libretorrent.core.system;

import android.net.Uri;
import java.io.File;

public interface FileSystemFacade {
    long a(Uri uri);

    boolean b(Uri uri);

    Uri c(Uri uri, String str);

    boolean d(Uri uri);

    String e();

    void f(byte[] bArr, Uri uri);

    void g();

    String h(Uri uri);

    File i();

    String j();

    boolean k();

    String l(String str);

    Uri m(Uri uri, String str, boolean z);

    FileDescriptorWrapper n(Uri uri);
}
